<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\ProductInventory;
use App\Models\Stock;
use App\Models\WarehouseLocations;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Webkul\Contact\Models\Organization;
use Webkul\Contact\Models\Person;
use Webkul\Warehouse\Models\Warehouse;

class ImportController extends Controller
{
    public function import()
    {
        $path = public_path('import_8.csv');

        if (!file_exists($path) || !is_readable($path)) {
            return 'CSV file not found or not readable.';
        }

        $header = null;
        $data = [];

        if (($handle = fopen($path, 'r')) !== false) {
            while (($row = fgetcsv($handle, 1000, ',')) !== false) {
                if (!$header) {
                    $header = $row;
                } else {
                    $data[] = array_combine($header, $row);
                }
            }
            fclose($handle);
        }
        foreach ($data as $key => $value) {
            $organization = Organization::where('name', $value['Organization Name'])->first();
            $organization_id = null;
            if ($organization) {
                $organization_id = $organization->id;
            }
            Person::create([
                'name' => $value['Name'],
                'emails' => [[
                    'email' => $value['Email'],
                    'label' => 'work',
                ]],
                'contact_numbers' => [[
                    'contact_number' => $value['Phone'],
                    'label' => 'work',
                ]],
                'organization_id' => $organization_id,
                'job_title' => $value['Job Title'],
                'user_id' => 11,
            ]);
        }

        return response()->json($data);
    }

    public function importStock()
    {
        $path = public_path('import-stock.csv');

        if (!file_exists($path) || !is_readable($path)) {
            return 'CSV file not found or not readable.';
        }

        $header = null;
        $data = [];

        if (($handle = fopen($path, 'r')) !== false) {
            while (($row = fgetcsv($handle, 1000, ',')) !== false) {
                if (!$header) {
                    $header = $row;
                } else {
                    $data[] = array_combine($header, $row);
                }
            }
            fclose($handle);
        }
        foreach ($data as $key => $value) {

            $product = Product::where('name', $value['Product Name'])->first();
            if ($product != null) {
                $stock = Stock::create([
                    'product_id'    =>  $product->id,
                    'warehouse_location_id'  =>  WarehouseLocations::first()->id,
                    'no_inv'    =>  'Initial Import',
                    'date'  =>  Carbon::now(),
                    'type'  =>  'in',
                    'qty'   => $value['Stok per tgl 18 May 2025'],
                ]);
                $productInventory = ProductInventory::where([
                    'product_id'    =>  $product->id,
                    'warehouse_location_id'    =>  WarehouseLocations::first()->id,
                ])->first();
                if ($productInventory) {
                    $productInventory->in_stock = $productInventory->in_stock + $value['Stok per tgl 18 May 2025'];
                    $productInventory->save();
                } else {
                    $warehouse = DB::table('warehouse_locations')->where('id', WarehouseLocations::first()->id)->first();
                    ProductInventory::create([
                        'product_id'    =>  $product->id,
                        'warehouse_id'    =>  WarehouseLocations::first()->warehouse_id,
                        'warehouse_location_id'    =>  WarehouseLocations::first()->id,
                        'in_stock'  =>  $value['Stok per tgl 18 May 2025'],
                        'allocated' => 0
                    ]);
                }
            }
        }

        return response()->json($data);
    }
}
