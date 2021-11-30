<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\KirimEmail;
use App\Http\Controllers\MasterController;

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

Route::get('/', [MasterController::class, 'Dashboard']);
Route::post('/filllokasi', [MasterController::class, 'FillLokasi']);


Route::get('/tabel', [MasterController::class, 'Tabel']);
Route::post('/filltabel', [MasterController::class, 'FilterTabel']);

Route::get('/grafik', [MasterController::class, 'Grafik']);

#Route Filter Perhari
Route::post('/perhari', [MasterController::class, 'PerHari']);
Route::post('/perminggu', [MasterController::class, 'PerMinggu']);
Route::post('/perbulan', [MasterController::class, 'PerBulan']);