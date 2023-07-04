<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CustomerController;
use App\Http\Controllers\MobileController;
use App\Http\Controllers\AuthorController;
use App\Http\Controllers\PostController;
use App\Http\Controllers\SupplierController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});
// one to one relationship
Route::get('add-data',[CustomerController::class,'add_customer']);
Route::get('showmobile/{id}',[CustomerController::class,'showmobile']);
Route::get('showcustomer/{id}',[MobileController::class,'showcustomer']);

// one to many relationship
Route::get('add-author',[AuthorController::class,'add_author']);
Route::get('getpost/{id}',[AuthorController::class,'getpost']);
Route::get('getauthor/{id}',[PostController::class,'findauthor']);

// hasonethrough()
Route::get('getorder/{supplierId}',[SupplierController::class,'orderDetail']);
