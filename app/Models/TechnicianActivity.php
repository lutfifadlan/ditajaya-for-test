<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Webkul\Contact\Models\Organization;
use Webkul\Contact\Models\Person;
use Webkul\User\Models\User;

class TechnicianActivity extends Model
{
    use HasFactory;
    protected $guarded = [];

    public function user()
    {
        return $this->belongsTo(User::class, 'user_id', 'id');
    }

    public function organization()
    {
        return $this->belongsTo(Organization::class, 'organization_id', 'id');
    }

    public function person()
    {
        return $this->belongsTo(Person::class, 'person_id', 'id');
    }
}
