<?php

namespace Webkul\Admin\DataGrids\Settings;

use Illuminate\Database\Query\Builder;
use Illuminate\Support\Facades\DB;
use Webkul\DataGrid\DataGrid;

class StockOutDataGrid extends DataGrid
{
    /**
     * Prepare query builder.
     */
    public function prepareQueryBuilder(): Builder
    {
        $queryBuilder = DB::table('stocks')
            ->addSelect(
                'stocks.id',
                'stocks.no_inv',
                'stocks.date',
                'stocks.qty',
            )->where('type', 'out');

        $this->addFilter('id', 'stocks.id');
        $this->addFilter('no_inv', 'stocks.no_inv');
        $this->addFilter('date', 'stocks.date');
        $this->addFilter('qty', 'stocks.qty');

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
            'index'      => 'no_inv',
            'label'      => "TITLE",
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

        // $this->addColumn([
        //     'index'              => 'permission_type',
        //     'label'              => trans('admin::app.settings.roles.index.datagrid.permission-type'),
        //     'type'               => 'string',
        //     'searchable'         => true,
        //     'filterable'         => true,
        //     'filterable_type'    => 'dropdown',
        //     'filterable_options' => [
        //         [
        //             'label' => trans('admin::app.settings.roles.index.datagrid.custom'),
        //             'value' => 'custom',
        //         ],
        //         [
        //             'label' => trans('admin::app.settings.roles.index.datagrid.all'),
        //             'value' => 'all',
        //         ],
        //     ],
        //     'sortable'   => true,
        // ]);
    }

    /**
     * Prepare actions.
     */
    public function prepareActions(): void
    {
        // if (bouncer()->hasPermission('settings.user.roles.edit')) {
        //     $this->addAction([
        //         'icon'   => 'icon-edit',
        //         'title'  => trans('admin::app.settings.roles.index.datagrid.edit'),
        //         'method' => 'GET',
        //         'url'    => fn($row) => route('admin.settings.roles.edit', $row->id),
        //     ]);
        // }

        if (bouncer()->hasPermission('admin.stock.stockin.index')) {
            // $this->addAction([
            //     'icon'   => 'icon-print',
            //     'title'  => "Print Barcode",
            //     'method' => 'GET',
            //     'url'    => fn($row) => route('admin.stock.stockin.print', [
            //         'id'    => $row->id
            //     ]),
            // ]);
        }
    }
}
