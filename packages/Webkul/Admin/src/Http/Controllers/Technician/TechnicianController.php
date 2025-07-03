<?php

namespace Webkul\Admin\Http\Controllers\Technician;

use App\Http\Controllers\Controller;
use App\Models\Product;
use App\Models\ProductInventory;
use App\Models\Stock;
use App\Models\TechnicianActivity;
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
use Webkul\Admin\DataGrids\Settings\TechnicianActivityDataGrid;
use Webkul\Contact\Models\Organization;
use Webkul\Contact\Models\Person;
use Webkul\Core\Traits\PDFHandler;

class TechnicianController extends Controller
{
    use PDFHandler;

    /**
     * Display a listing of the type.
     */

    public function index(): View|JsonResponse
    {
        if (request()->ajax()) {
            return datagrid(TechnicianActivityDataGrid::class)->process();
        }

        return view('admin::technician.index');
    }

    public function create()
    {
        $warehouseLocations = WarehouseLocations::all();
        $products = Product::all();
        $organizations = Organization::all();
        $persons = Person::all();
        return view('admin::technician.create', compact('warehouseLocations', 'products', 'organizations', 'persons'));
    }

    public function convertToBase64($imageUrl)
    {
        $imageData = file_get_contents($imageUrl);
        return 'data:image/png;base64,' . base64_encode($imageData);
    }

    public function print($id)
    {
        $technicianActivity = TechnicianActivity::find($id);

        $photos = [];
        foreach (json_decode($technicianActivity->photos) as $key) {
            $key = storage_path('app/' . $key);
            $key = $this->convertToBase64($key);
            array_push($photos, $key);
        }

        $html = view('admin::technician.print', compact('technicianActivity', 'photos'))->render();
        return $this->downloadPDF($html, 'technician-activity');
    }


    public function inCreate()
    {
        $warehouseLocations = WarehouseLocations::all();
        $products = Product::all();
        return view('admin::stock.in.create', compact('warehouseLocations', 'products'));
    }

    public function store(Request $request)
    {
        $photos = [];
        if ($request->has('photos')) {
            foreach ($request->photos as $photo) {
                $filename = $photo->store('photos');
                $photos[] = $filename;
            }
        }
        // $cust_sign = null;
        // if ($request->has('cust_sign')) {
        //     $cust_sign = $request->cust_sign->store('signs');
        // }
        // $user_sign = null;
        // if ($request->has('user_sign')) {
        //     $user_sign = $request->user_sign->store('signs');
        // }
        $motor_overload_setting = json_encode([$request->ampere, $request->r, $request->s, $request->t]);
        TechnicianActivity::create([
            'organization_id' => $request->organization_id,
            'person_id' => $request->person_id,
            'product_id' => $request->product_id,
            'user_id' => auth()->user()->id,
            'brand' => $request->brand,
            'mechine_sn' => $request->mechine_sn,
            'working_hours' => $request->running_hours,
            'load_hours' => $request->load_hours,
            'ambient_temp' => $request->ambient_temp,
            'amp_powerline' => $request->amp_powerline,
            'voltage' => $request->voltage,
            'amp' => $request->amp,
            'unload' => $request->unload,
            'motor_power' => $request->motor_power,
            'max_press' => $request->max_press,
            'cut_out' => $request->cut_out,
            'cut_in' => $request->cut_in,
            'motor_overload_setting' => $motor_overload_setting,
            'inlet_screw' => $request->inlet_screw,
            'inlet_air_cooler' => $request->inlet_air_cooler,
            'inlet_oil_cooler' => $request->inlet_oil_cooler,
            'outlet_compressor' => $request->outlet_compressor,
            'inlet_dryer' => $request->inlet_dryer,
            'refrigerant_type' => $request->refrigerant_type,
            'level_oil_check' => $request->level_oil_check,
            'leakage_check' => $request->leakage_check,
            'outlet_screw' => $request->outlet_screw,
            'outlet_air_cooler' => $request->outlet_air_cooler,
            'outlet_oil_cooler' => $request->outlet_oil_cooler,
            'outlet_dryer' => $request->outlet_dryer,
            'dew_point' => $request->dew_point,
            'note' => $request->note,
            'suggestion' => $request->suggestion,
            'photos' => json_encode($photos),
            'cust_sign' => $request->cust_sign,
            'user_sign' => $request->user_sign,
        ]);
        return redirect()->route('admin.technician.index');
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
