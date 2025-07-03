<?php

use App\Http\Controllers\ImportController;
use Illuminate\Support\Facades\Route;
use Webkul\Admin\Http\Controllers\Controller;

/**
 * Home routes.
 */
Route::get('/', [Controller::class, 'redirectToLogin'])->name('krayin.home');

Route::get('import', [ImportController::class, 'import']);
