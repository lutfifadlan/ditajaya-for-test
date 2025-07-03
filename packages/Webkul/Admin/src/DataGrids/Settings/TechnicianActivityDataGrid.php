<?php

namespace Webkul\Admin\DataGrids\Settings;

use Illuminate\Database\Query\Builder;
use Illuminate\Support\Facades\DB;
use Webkul\DataGrid\DataGrid;

class TechnicianActivityDataGrid extends DataGrid
{
    /**
     * Prepare query builder.
     */
    public function prepareQueryBuilder(): Builder
    {
        $queryBuilder = DB::table('technician_activities')
            ->join('products', 'technician_activities.product_id', '=', 'products.id')
            ->join('persons', 'technician_activities.person_id', '=', 'persons.id')
            ->join('organizations', 'technician_activities.organization_id', '=', 'organizations.id')
            ->addSelect(
                'technician_activities.id',
                'organizations.name as organization_name',
                'persons.name as person_name',
                DB::raw("DATE_FORMAT(technician_activities.created_at, '%d-%m-%Y %H:%i:%s') as created_at"), // Change date format
                'products.name as product_name',
            );
        if ($userIds = bouncer()->getAuthorizedUserIds()) {
            $queryBuilder->whereIn('technician_activities.user_id', $userIds);
        }
        $queryBuilder->orderBy('technician_activities.created_at', 'desc');

        $this->addFilter('id', 'stocks.id');
        $this->addFilter('organization_name', 'organizations.name');
        $this->addFilter('person_name', 'persons.name');
        $this->addFilter('product_name', 'products.name');

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
            'index'    => 'person_name',
            'label'    => "PERSON NAME",
            'type'     => 'string',
            'sortable' => true,
        ]);

        $this->addColumn([
            'index'    => 'organization_name',
            'label'    => "ORGANIZATION NAME",
            'type'     => 'string',
            'sortable' => false,
        ]);

        $this->addColumn([
            'index'    => 'product_name',
            'label'    => "PRODUCT NAME",
            'type'     => 'string',
            'sortable' => false,
        ]);

        $this->addColumn([
            'index'    => 'created_at',
            'label'    => "DATE",
            'type'     => 'string',
            'filterable' => true,
            'sortable' => true,
        ]);
    }

    /**
     * Prepare actions.
     */
    public function prepareActions(): void
    {

        if (bouncer()->hasPermission('admin.technician.index')) {
            $this->addAction([
                'icon'   => 'icon-print',
                'title'  => "Print Barcode",
                'method' => 'GET',
                'url'    => fn($row) => route('admin.technician.print', [
                    'id'    => $row->id
                ]),
            ]);
        }
    }
}
