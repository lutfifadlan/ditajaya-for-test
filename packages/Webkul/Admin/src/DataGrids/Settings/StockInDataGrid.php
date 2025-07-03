<?php

namespace Webkul\Admin\DataGrids\Settings;

use Illuminate\Database\Query\Builder;
use Illuminate\Support\Facades\DB;
use Webkul\DataGrid\DataGrid;

class StockInDataGrid extends DataGrid
{
    /**
     * Prepare query builder.
     */
    public function prepareQueryBuilder(): Builder
    {
        $queryBuilder = DB::table('stocks')
            ->join('products', 'stocks.product_id', '=', 'products.id') // Join with products table
            ->addSelect(
                'stocks.id',
                'stocks.no_inv',
                'stocks.date',
                'stocks.qty',
                'stocks.product_id',
                'stocks.created_at',
                'products.name as product_name' // Select product name
            )
            ->where('stocks.type', 'in')->orderBy('stocks.created_at', 'desc');

        $this->addFilter('id', 'stocks.id');
        $this->addFilter('no_inv', 'stocks.no_inv');
        $this->addFilter('date', 'stocks.date');
        $this->addFilter('qty', 'stocks.qty');
        $this->addFilter('product_name', 'products.name'); // Add filter for product name

        return $queryBuilder;
    }


    /**
     * Prepare Columns.
     */
    public function prepareColumns(): void
    {
        $this->addColumn([
            'index'      => 'id',
            'label'      => "ID",
            'type'       => 'string',
            'filterable' => true,
            'sortable'   => true,
        ]);

        $this->addColumn([
            'index'    => 'product_name',
            'label'    => "PRODUCT NAME",
            'type'     => 'string',
            'sortable' => false,
        ]);

        $this->addColumn([
            'index'      => 'no_inv',
            'label'      => "NO INV",
            'type'       => 'string',
            'filterable' => true,
            'sortable'   => true,
        ]);

        $this->addColumn([
            'index'    => 'date',
            'label'    => "DATE",
            'type'     => 'string',
            'filterable' => true,
            'sortable' => true,
        ]);

        $this->addColumn([
            'index'    => 'qty',
            'label'    => "QTY",
            'type'     => 'string',
            'sortable' => false,
        ]);
    }

    /**
     * Prepare actions.
     */
    public function prepareActions(): void
    {

        if (bouncer()->hasPermission('admin.stock.stockin.index')) {
            $this->addAction([
                'icon'   => 'icon-print',
                'title'  => "Print Barcode",
                'method' => 'GET',
                'url'    => fn($row) => route('admin.stock.stockin.print', [
                    'id'    => $row->id
                ]),
            ]);
        }
    }
}
