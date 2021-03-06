<?php

namespace App\Http\Controllers\API\V1;

//TODO remove unused, copied from PassportController
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\User;
use Illuminate\Support\Facades\Auth;
use Validator;
use Illuminate\Support\Facades\DB;

/**
* Class responsible for managing user logging and registration
*
* All functions in this class require header "Accept": "application/json"
* and functions that require parameters also need "Content-Type": "application/json" header
*/
class ProgressController extends Controller
{
    /**
     * Gets progress
     *
     * @param Request $request 
     *
     * @return json array containing objects consisting of fields id, user, game, category and score. May return empty array
     */
    public function getProgress(Request $request) {
        $user = Auth::user();
        $progressData = DB::table('progress')->where('user', $user["id"])->get();
        return response()->json($progressData, 200, [], JSON_NUMERIC_CHECK);
    }

    /**
     * Sets progress
     *
     * @param Request $request requires JSON with fields game, category and score; as well as Authorization token in headers
     *
     * @return void returns 200 or 202 HTTP code (currently returns only 200)
     */
    public function setProgress(Request $request) {
        $user = Auth::user();
        //check if entry already exists, update it 
        $checkIfExists = DB::table('progress')->where([
            [ 'user', (int)$user["id"] ],
            [ 'game', (int)$request["game"] ],
            [ 'category', (int)$request["category"] ],
        ])->get();
        
        if($checkIfExists->count()) {
            DB::table('progress')->where([
                [ 'user', $user["id"] ],
                [ 'game', (int)$request["game"] ],
                [ 'category', (int)$request["category"] ],
            ])->update(["score" => (int)$request["score"], "max_points" => (int)$request["max_points"]]);
        }
        else {
            DB::table('progress')->insert([
                "user" => $user["id"],
                "game" => (int)$request["game"],
                "category" => (int)$request["category"],
                "score" => (int)$request["score"],
                "max_points" => (int)$request["max_points"],
            ]);
        }
        return response()->json(['success'=>'success'], 200);
    }
}
