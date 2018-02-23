<?php

namespace Japankitty\Http\Controllers\API;

use Illuminate\Support\Facades\DB;
use Illuminate\Routing\Controller as BaseController;

class Courses extends BaseController
{
    public function getAllCourses() {
        $coursesTableContents = DB::table('courses')->get();

        return response()->json($coursesTableContents);
    }

    public function getVocabularyCourses() {
        $coursesTableContents = DB::table('courses')->where('type', 'vocabulary')->get();

        return response()->json($coursesTableContents);
    }

    public function getKanjiCourses() {
        $coursesTableContents = DB::table('courses')->where('type', 'kanji')->get();

        return response()->json($coursesTableContents);
    }

    public function getDefinitionsCourses() {
        $coursesTableContents = DB::table('courses')->where('type', 'definitions')->get();

        return response()->json($coursesTableContents);
    }
}
