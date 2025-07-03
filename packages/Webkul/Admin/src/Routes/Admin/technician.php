<?php

use Illuminate\Support\Facades\Route;
use Webkul\Admin\Http\Controllers\Technician\TechnicianController;

Route::controller(TechnicianController::class)->prefix('technician')->group(function () {
    Route::get('/', 'index')->name('admin.technician.index');
    Route::get('create', 'create')->name('admin.technician.create');
    Route::post('store', 'store')->name('admin.technician.store');
    Route::get('print/{id}', 'print')->name('admin.technician.print');
});
