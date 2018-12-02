<?php

namespace App\Http\Controllers\API\V1;

use Illuminate\Support\Facades\DB;
use Illuminate\Routing\Controller as BaseController;

/**
* Class responsible for returning data from Vocabulary database table
*/
class Vocabulary extends BaseController
{
    /**
     * Returns data form Vocabulary table by course filename
     *
     * @param string $courseName course filename send through GET
     *
     * @return string JSON with fields id, course, polish, hiragana and kanji is retured
     */
    public function getDataByCourse($courseId)
   {
      $vocabularyTableConents = DB::table('vocabulary')->join('courses', 'vocabulary.course_id', '=', 'courses.id')->where('vocabulary.course_id', $courseId)->select('vocabulary.id','vocabulary.kana','vocabulary.kanji','vocabulary.polish')->get();

      return response()->json($vocabularyTableConents);
   }
}
