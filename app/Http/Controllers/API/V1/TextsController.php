<?php

namespace App\Http\Controllers\API\V1;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\User;
use Illuminate\Support\Facades\Auth;
use Validator;
use Illuminate\Support\Facades\DB;

class TextsController extends Controller
{
    public function listAllTexts() {
      $texts = DB::table('texts')->get();
      return response()->json(['success' => $texts], 200);
    }

    public function addText(Request $request) {
      $user = Auth::User();
      if($user['role'] == "admin") {
          $validator = Validator::make($request->all(), [
              'offerDescription' => 'required',
              'offerOption1' => 'required',
              'offerOption2' => 'required',
              'offerOption3' => 'required',
              'contactDescription' => 'required',
              'aboutCourse' => 'required'
          ]);

          if ($validator->fails()) {
              return response()->json(['error'=>$validator->errors()], 400);
          }
          DB::table('texts')->insert([
            'offerDescription' => $request['offerDescription'],
            'offerOption1' => $request['offerOption1'],
            'offerOption2' => $request['offerOption2'],
            'offerOption3' => $request['offerOption3'],
            'contactDescription' => $request['contactDescription'],
            'aboutCourse' => $request['aboutCourse'],
          ]);
          return response()->json(['success' => "success"], 200);
      } else {
          return response()->json(['error' => "you need administrator privileges"], 400);
      }
    }

    public function editText(Request $request) {
      $user = Auth::User();
      if($user['role'] == "admin") {
          $validator = Validator::make($request->all(), [
            'id' => 'required',
              'offerDescription' => 'required',
              'offerOption1' => 'required',
              'offerOption2' => 'required',
              'offerOption3' => 'required',
              'contactDescription' => 'required',
              'aboutCourse' => 'required'
          ]);

          if ($validator->fails()) {
              return response()->json(['error'=>$validator->errors()], 400);
          }
          DB::table('texts')->where('id', $request['id'])->update([
            'offerDescription' => $request['offerDescription'],
            'offerOption1' => $request['offerOption1'],
            'offerOption2' => $request['offerOption2'],
            'offerOption3' => $request['offerOption3'],
            'contactDescription' => $request['contactDescription'],
            'aboutCourse' => $request['aboutCourse'],
          ]);
          return response()->json(['success' => "success"], 200);
      } else {
          return response()->json(['error' => "you need administrator privileges"], 400);
      }
    }

    public function deleteText(Request $request) {
      $user = Auth::User();
      if($user['role'] == "admin") {
          $validator = Validator::make($request->all(), [
            'id' => 'required'
          ]);

          if ($validator->fails()) {
              return response()->json(['error'=>$validator->errors()], 400);
          }
          DB::table('texts')->where('id', $request['id'])->delete();
          return response()->json(['success' => "success"], 200);
      } else {
          return response()->json(['error' => "you need administrator privileges"], 400);
      }
    }
}
