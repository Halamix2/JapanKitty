<?php

    //user login
    /*Route::post('login', 'API\PassportController@login');
    Route::post('register', 'API\PassportController@register');
    Route::group(['middleware' => 'auth:api'], function(){
    	Route::post('get-details', 'API\PassportController@getDetails');
    	Route::post('logout', 'API\PassportController@logout');
    	Route::post('edit-account', 'API\PassportController@editAccount');
    });*/

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
    });