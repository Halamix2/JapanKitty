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

Route::get('/', function () {
    return view('main');
});

//Auth::routes();

Route::get('/', 'Page@HomePage');
Route::get('/home', 'Page@HomePage');
Route::get('/course', 'Page@CoursePage');
//naïve implementation below

Route::get('/game/{gameId}/category', function () {
    return view('gamecategories');
});
Route::get('/game/{gameId}/category/{categoryId}', function () {
    return view('game');
});
Route::get('/flashcards', function () {
    return view('flashcards');
});


//TODO proper 404 site
Route::get('/{any}', function($any) {
    return view('404');
 })->where('any', '.*');