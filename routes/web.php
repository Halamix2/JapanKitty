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

Route::get('/', 'Page@HomePage');
Route::get('/home', 'Page@HomePage');
Route::get('/course', 'Page@CoursePage');
/*Route::get('/game/{gameId}/category', 'Game@GameCategories');
Route::get('/game/{gameId}/category/{categoryId}', 'Game@Game');
Route::get('/flashcards', 'Game@Flashcards');*/
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
