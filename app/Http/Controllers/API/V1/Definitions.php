<?php

namespace App\Http\Controllers\API\V1;

use Illuminate\Support\Facades\DB;
use Illuminate\Routing\Controller as BaseController;

/**
* Class responsible for returning data from Definitions database table
*/
class Definitions extends BaseController
{
   /**
   * Returns data form Definitions table by course filename
   *
   * @param string $courseName course filename send through GET
   *
   *
   * @return string JSON with fields id, course, word and definition is retured
   */
    public function getDataByCourse($courseId)
   {
      $definitionsTableConents = DB::table('definitions')->join('courses', 'definitions.course', '=', 'courses.id')->where('courses.id', $courseId)->select('definitions.id', 'definitions.word', 'definitions.definition')->get();

      return response()->json($definitionsTableConents);
   }
}
