<?php

    //user login
    /*Route::post('login', 'API\PassportController@login');
    Route::post('register', 'API\PassportController@register');
    Route::group(['middleware' => 'auth:api'], function(){
    	Route::post('get-details', 'API\PassportController@getDetails');
    	Route::post('logout', 'API\PassportController@logout');
    	Route::post('edit-account', 'API\PassportController@editAccount');
    });*/
    Route::get('texts', 'TextsController@listAllTexts');
    
    Route::get('courses', 'Courses@getAllCourses');
    Route::get('courses/vocabulary', 'Courses@getVocabularyCourses');
    Route::get('courses/kanji', 'Courses@getKanjiCourses');
    Route::get('courses/definitions', 'Courses@getDefinitionsCourses');

    Route::get('vocabulary/{id}', 'Vocabulary@getDataByCourse');
    Route::get('kanji/{id}', 'Kanji@getDataByCourse');
    Route::get('definitions/{id}', 'Definitions@getDataByCourse');

    //Route::get('motd', 'API\Config@getMOTD');
    Route::post('login', 'PassportController@login');
    //user registration
    Route::post('register', 'PassportController@register');

    Route::group(['middleware' => 'auth:api'], function(){
        Route::post('get-details', 'PassportController@getDetails');
        Route::post('logout', 'PassportController@logout');
        Route::post('edit-account', 'PassportController@editAccount');

        Route::get('get-progress', 'ProgressController@getProgress');
        Route::post('set-progress', 'ProgressController@setProgress');
    });


    
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
    
    //user login
    /*Route::post('login', 'API\PassportController@login');
    //user registration
    Route::post('register', 'API\PassportController@register');
    
    Route::group(['middleware' => 'auth:api'], function(){
        Route::post('get-details', 'API\PassportController@getDetails');
        Route::get('get-details', 'API\PassportController@getDetails');
        Route::post('logout', 'API\PassportController@logout');
        Route::get('logout', 'API\PassportController@logout');
        Route::post('edit-account', 'API\PassportController@editAccount');
    
        Route::get('am-i-admin', 'API\AdminController@test');
        Route::get('users', 'API\AdminController@listAllUsers');
        Route::post('change-user-status', 'API\AdminController@changeUserStatus');
    
        Route::post('add-text', 'API\TextsController@addText');
        Route::post('edit-text', 'API\TextsController@editText');
        Route::post('delete-text', 'API\TextsController@deleteText');
    });*/
    