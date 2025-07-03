<?php

use Illuminate\Support\Facades\Route;
use Webkul\Admin\Http\Controllers\Stock\StockController;

Route::controller(StockController::class)->prefix('admin/stock')->group(function () {
    Route::get('in', 'inIndex')->name('admin.stock.stockin.index');
    Route::get('in/create', 'inCreate')->name('admin.stock.stockin.create');
    Route::post('in/store', 'inStore')->name('admin.stock.stockin.store');
    Route::get('print/{id}', 'print')->name('admin.stock.stockin.print');
    Route::get('out', 'outIndex')->name('admin.stock.stockout.index');
    Route::get('out/create', 'outCreate')->name('admin.stock.stockout.create');
    Route::post('out/store', 'outStore')->name('admin.stock.stockout.store');
});
