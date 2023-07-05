<?php

use App\Http\Controllers\AdminController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CustomerController;
use App\Http\Controllers\MobileController;
use App\Http\Controllers\AuthorController;
use App\Http\Controllers\PostController;
use App\Http\Controllers\SupplierController;
use App\Http\Controllers\StoryController;
use App\Http\Controllers\TagController;
use App\Http\Controllers\SongController;
use App\Http\Controllers\SingerController;
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

// hasmanythrough
Route::get('getcomment',[AdminController::class,'getComment']);


// many to many relationship
Route::get('addStory',[StoryController::class,'InsertStory']);
Route::get('addTag',[TagController::class,'InsertTag']);
Route::get('attachTag',[StoryController::class,'attachTag']);
Route::get('getTag',[StoryController::class,'getTag']);


Route::get('addsong',[SongController::class,'InsertSong']);
Route::get('addsinger',[SingerController::class,'InsertSinger']);
Route::get('find_singer_song',[SingerController::class,'FindSingerSong'])->name('findsong');

Route::get('findsingerfromsong',[SongController::class,'Find_Singer']);
