<?php

namespace App\Http\Controllers\API\V1;

use Illuminate\Support\Facades\DB;
use Illuminate\Routing\Controller as BaseController;

/**
* Class responsible for returning data from Kanji database table
*/
class Kanji extends BaseController
{
   /**
   * Returns data form Kanji table by course filename
   *
   * @param string $courseName course filename send through GET
   *
   * @return string JSON with fields id, course, kanji, kunyomi and onyomi is retured
   */
    public function getDataByCourse($courseId)
   {
      $kanjiTableConents = DB::table('kanji')->join('courses', 'kanji.course', '=', 'courses.id')->where('courses.id', $courseId)->select('kanji.id', 'kanji.kanji', 'kanji.kunyomi', 'kanji.onyomi')->get();

      return response()->json($kanjiTableConents);
   }
}
