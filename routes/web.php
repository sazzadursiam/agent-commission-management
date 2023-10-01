<?php

use App\Http\Controllers\Admin\AgentController;
use App\Http\Controllers\Admin\AuthController;
use App\Http\Controllers\Admin\KnowledgeBaseController;
use App\Http\Controllers\Admin\MasterController;
use App\Http\Controllers\Admin\ProductController;
use App\Http\Controllers\Admin\StockController;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

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
            Route::resource('products', ProductController::class);
            Route::resource('knowledge-base', KnowledgeBaseController::class);

            Route::get('stocks', [StockController::class, 'index'])->name('stock.index');

            Route::get('logout', [AuthController::class, 'logout'])->name('logout');
        });
    });
});
// Route::get('pass', function () {
//     return Hash::make('12345');
// });
