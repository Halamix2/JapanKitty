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

//TODO rewrite user management
/*Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});*/

//TODO add V1 compatibility (low importance, probably broken)

Route::group([
        'namespace' => 'V1',
        'prefix' => 'v1',
    ],
    function($router) {
        require base_path('routes/api.v1.php');
    }
);

Route::group([
        'namespace' => 'V2',
        'prefix' => 'dev',
    ],
    function($router) {
        require base_path('routes/api.v2.php');
    }
);

//TODO proper 404 site
Route::get('/{any}', function($any) {
   return view('404');
})->where('any', '.*');
