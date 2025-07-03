<?php

namespace Webkul\Admin\Http\Controllers\Stock;

use App\Http\Controllers\Controller;
use App\Models\Product;
use App\Models\ProductInventory;
use App\Models\Stock;
use App\Models\WarehouseLocations;
use Illuminate\Http\JsonResponse;
use Illuminate\Support\Facades\Event;
use Illuminate\View\View;
use Webkul\Admin\DataGrids\Settings\StockDataGrid;
use Barryvdh\DomPDF\Facade\Pdf;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Milon\Barcode\Facades\DNS1DFacade as DNS1D; // For 1D Barcode
use Milon\Barcode\Facades\DNS2DFacade as DNS2D; // For 1D Barcode
use Webkul\Admin\DataGrids\Settings\StockInDataGrid;
use Webkul\Admin\DataGrids\Settings\StockOutDataGrid;

class StockController extends Controller
{

    /**
     * Display a listing of the type.
     */
    public function outIndex(): View|JsonResponse
    {
        if (request()->ajax()) {
            return datagrid(StockOutDataGrid::class)->process();
        }

        return view('admin::stock.out.index');
    }

    public function inIndex(): View|JsonResponse
    {
        if (request()->ajax()) {
            return datagrid(StockInDataGrid::class)->process();
        }

        return view('admin::stock.in.index');
    }

    public function print($id)
    {
        $stock = Stock::findOrFail($id);

        $product = DB::table('products')->where('id', $stock->product_id)->first();
        if ($stock->qty <= 0) {
            return back()->with('error', 'Stock quantity must be greater than zero.');
        }

        // Generate barcodes based on quantity
        $barcodes = [];
        for ($i = 1; $i <= $stock->qty; $i++) {
            $barcode = DNS2D::getBarcodePNG(url('product/detail/' . $stock->product_id), 'QRCODE', 3, 3);
            $barcodes[] = [
                'barcode' => $barcode,
                'id'      => $product->sku . '-' . $stock->id . '-' . $i
            ];
        }

        // Ensure there are barcodes before chunking
        if (empty($barcodes)) {
            return back()->with('error', 'No barcodes generated.');
        }

        $barcodesChunks = array_chunk($barcodes, 6);

        // Generate PDF
        $pdf = Pdf::loadView('barcodes', compact('barcodesChunks'));

        return $pdf->download('barcode.pdf');
    }


    public function inCreate()
    {
        $warehouseLocations = WarehouseLocations::all();
        $products = Product::all();
        return view('admin::stock.in.create', compact('warehouseLocations', 'products'));
    }

    public function inStore(Request $request)
    {
        $stock = Stock::create($request->all());
        $productInventory = ProductInventory::where([
            'product_id'    =>  $request->product_id,
            'warehouse_location_id'    =>  $request->warehouse_location_id,
        ])->first();
        if ($productInventory) {
            $productInventory->in_stock = $productInventory->in_stock + $request->qty;
            $productInventory->save();
        } else {
            $warehouse = DB::table('warehouse_locations')->where('id', $request->warehouse_location_id)->first();
            ProductInventory::create([
                'product_id'    =>  $request->product_id,
                'warehouse_id'    =>  $warehouse->warehouse_id,
                'warehouse_location_id'    =>  $request->warehouse_location_id,
                'in_stock'  =>  $request->qty,
                'allocated' => 0
            ]);
        }
        return redirect()->route('admin.stock.stockin.index');
    }

    public function outCreate()
    {
        $warehouseLocations = WarehouseLocations::all();
        $products = Product::all();
        return view('admin::stock.out.create', compact('warehouseLocations', 'products'));
    }

    public function outStore(Request $request)
    {
        $stocks = [];
        $groupedStock = [];
        foreach ($request->stock_id as $stockId) {
            $stock = Stock::find($stockId);
            array_push($stocks, $stock);
        }
        foreach ($stocks as $stock) {
            $groupedStock[$stock->product_id][] = $stock;
        }

        foreach ($groupedStock as $productId => $stocks) {
            // echo "Product ID: " . $productId . "\n";
            $product = Product::find($productId);
            Stock::create([
                'product_id' => $productId,
                'warehouse_location_id' => $request->warehouse_location_id,
                'no_inv' => $request->no_inv,
                'date' => $request->date,
                'type'  =>  'out',
                'qty' => count($stocks)
            ]);

            $productInventory = ProductInventory::where([
                'product_id'    =>  $productId,
                'warehouse_location_id'    =>  $request->warehouse_location_id,
            ])->first();
            if ($productInventory) {
                $productInventory->allocated = $productInventory->allocated + count($stocks);
                $productInventory->save();
            }
        }

        return redirect()->route('admin.stock.stockout.index');
    }

    public function getBarcode($id)
    {
        try {
            $barcodeValue = explode('-', $id);
            $sku = $barcodeValue[0];
            $stock = Stock::with('product')->find($barcodeValue[1]);
            return $stock;
        } catch (Exception $e) {
            return null;
        }
    }
}
