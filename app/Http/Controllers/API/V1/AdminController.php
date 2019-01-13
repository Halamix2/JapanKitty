<?php

namespace App\Http\Controllers\API\V1;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\User;
use Illuminate\Support\Facades\Auth;
use Validator;
use Illuminate\Support\Facades\DB;

class AdminController extends Controller
{
    public function test() {
        $user = Auth::User();
        if($user['role'] == "admin") {
            return response()->json(['success' => "You the real MVP"], 200);
        } else {
            return response()->json(['error' => "you need administrator privileges"], 400);
        }
    }

    public function listAllUsers() {
        $user = Auth::User();
        if($user['role'] == "admin") {
            $users = DB::table('users')->select('id', 'name', 'email', 'created_at', 'updated_at', 'sex', 'surname', 'birthday', 'role', 'status')->get();
            return response()->json(['success' => $users], 200);
        } else {
            return response()->json(['error' => "you need administrator privileges"], 400);
        }
    }

    public function changeUserStatus(Request $request) {
      $user = Auth::User();
      if($user['role'] == "admin") {
          $validator = Validator::make($request->all(), [
            'id' => 'required',
            'status' => 'required'
          ]);

          if ($validator->fails()) {
              return response()->json(['error'=>$validator->errors()], 400);
          }
          DB::table('users')->where('id', $request['id'])->update([
            'status' => $request['status']
          ]);

          if($request['status']=='blocked') {
            //logout
            DB::table('oauth_access_tokens')->join('users', 'oauth_access_tokens.user_id', '=', 'users.id')->where('users.id', $request['id'])->delete();
          }

          return response()->json(['success' => "success"], 200);
      } else {
          return response()->json(['error' => "you need administrator privileges"], 400);
      }
    }
}
