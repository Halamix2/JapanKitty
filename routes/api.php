<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::get('texts', 'API\TextsController@listAllTexts');

Route::get('courses', 'API\Courses@getAllCourses');
Route::get('courses/vocabulary', 'API\Courses@getVocabularyCourses');
Route::get('courses/kanji', 'API\Courses@getKanjiCourses');
Route::get('courses/definitions', 'API\Courses@getDefinitionsCourses');

Route::get('vocabulary/{id}', 'API\Vocabulary@getDataByCourse');
Route::get('kanji/{id}', 'API\Kanji@getDataByCourse');
Route::get('definitions/{id}', 'API\Definitions@getDataByCourse');

Route::get('motd', 'API\Config@getMOTD');
