<?php

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

//Vue knows best what to do, so let it handle things
Route::get('/', function () {
    return view('empty');
});
Route::get('/{any}', function($any) {
    return view('empty');
 })->where('any', '.*');