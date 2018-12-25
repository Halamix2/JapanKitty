<?php
    Route::get('texts', 'TextsController@listAllTexts');
    
    Route::get('courses', 'Courses@getAllCourses');
    Route::get('courses/vocabulary', 'Courses@getVocabularyCourses');
    Route::get('courses/kanji', 'Courses@getKanjiCourses');
    // Route::get('courses/definitions', 'Courses@getDefinitionsCourses');

    Route::get('vocabulary/{id}', 'Vocabulary@getDataByCourse');
    Route::get('kanji/{id}', 'Kanji@getDataByCourse');
    // Route::get('definitions/{id}', 'Definitions@getDataByCourse');

    // Route::get('motd', 'API\Config@getMOTD');
    Route::post('login', 'PassportController@login');
    Route::post('register', 'PassportController@register');

    Route::group(['middleware' => ['auth:api', 'CheckTokenLifetime']], function(){
        Route::post('get-details', 'PassportController@getDetails');
        Route::get('get-details', 'PassportController@getDetails');
        Route::post('logout', 'PassportController@logout');
        Route::get('logout', 'PassportController@logout');
        Route::post('edit-account', 'PassportController@editAccount');

        Route::get('progress', 'ProgressController@getProgress');
        Route::post('progress', 'ProgressController@setProgress');

        // Route::get('am-i-admin', 'API\AdminController@test');
        Route::get('users', 'AdminController@listAllUsers');
        // Route::post('change-user-status', 'API\AdminController@changeUserStatus');
    
        // Route::post('add-text', 'API\TextsController@addText');
        // Route::post('edit-text', 'API\TextsController@editText');
        // Route::post('delete-text', 'API\TextsController@deleteText');
    });
