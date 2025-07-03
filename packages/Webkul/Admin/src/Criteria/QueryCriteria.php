<?php

namespace Webkul\Admin\Criteria;

use Prettus\Repository\Contracts\CriteriaInterface;
use Prettus\Repository\Contracts\RepositoryInterface;

class QueryCriteria implements CriteriaInterface
{
    public function apply($model, RepositoryInterface $repository)
    {
        $query = request('query');

        if ($query) {
            $fields = $repository->getFieldsSearchable();

            $model = $model->where(function ($q) use ($fields, $query) {
                foreach ($fields as $field) {
                    $q->orWhere($field, 'LIKE', "%{$query}%");
                }

                // optionally: also match by exact id
                if (is_numeric($query)) {
                    $q->orWhere('id', $query);
                }
            });
        }

        return $model;
    }
}
