<?php

namespace Japankitty\Http\Controllers\API;

use Illuminate\Http\Request;
use Japankitty\Http\Controllers\Controller;
use Japankitty\User;
use Illuminate\Support\Facades\Auth;
use Validator;
use Illuminate\Support\Facades\DB;

class TextsController extends Controller
{
    public function listAllTexts() {
      $texts = DB::table('texts')->get();
      return response()->json(['success' => $texts], 200);
    }
}
