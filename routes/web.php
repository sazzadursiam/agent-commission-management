<?php

use App\Http\Controllers\Admin\AgentController;
use App\Http\Controllers\Admin\AuthController;
use App\Http\Controllers\Admin\KnowledgeBaseController;
use App\Http\Controllers\Admin\LevelController;
use App\Http\Controllers\Admin\MasterController;
use App\Http\Controllers\Admin\OrderController;
use App\Http\Controllers\Admin\ProductController;
use App\Http\Controllers\Admin\SalesReportController;
use App\Http\Controllers\Admin\StockController;
use App\Http\Controllers\Admin\WarehouseController;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Route;



Route::get('/', function () {
    return redirect()->route('admin.login-page');
});


Route::group(['prefix' => 'admin'], function () {
    Route::name('admin.')->group(function () {
        Route::get('login', [AuthController::class, 'loginPage'])->name('login-page');
        Route::post('login', [AuthController::class, 'login'])->name('login');

        Route::group(['middleware' => 'admin_auth'], function () {

            Route::get('dashboard', [MasterController::class, 'dashboard'])->name('dashboard');
            Route::resource('agents', AgentController::class);
            Route::post('agents/activation', [AgentController::class, 'activation'])->name('agents.activation');
            Route::resource('products', ProductController::class);
            Route::resource('knowledge-base', KnowledgeBaseController::class);

            Route::get('stocks', [StockController::class, 'index'])->name('stock.index');

            Route::get('warehouse-stocks', [WarehouseController::class, 'stock'])->name('warehouse-stock');
            Route::get('orders', [OrderController::class, 'index'])->name('orders.index');
            Route::get('withdrawal-request', [OrderController::class, 'withdrawRequest'])->name('withdraw-request');

            // Route::get('sales-report', [SalesReportController::class, 'index'])->name('sales-report');

            Route::resource('levels',LevelController::class);

            Route::get('logout', [AuthController::class, 'logout'])->name('logout');
        });
    });
});
