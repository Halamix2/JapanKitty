<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCourses extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('courses', function (Blueprint $table) {
            $table->increments('id');
            $table->string('file')->unique();
            $table->string('name');
            $table->string('name_jp')->nullable();
            $table->enum('type', ['vocabulary','kanji','definitions']);
        });

        DB::table('courses')->insert([ 'id' => 1, 'file' => "hiragana", 'name' =>'Hiragana', 'name_jp' =>'', 'type' =>'vocabulary' ]);
        DB::table('courses')->insert([ 'id' => 2, 'file' => "katakana", 'name' =>'katakana', 'name_jp' =>'', 'type' =>'vocabulary' ]);
        DB::table('courses')->insert([ 'id' => 3, 'file' => "basic", 'name' =>'Podstawy', 'name_jp' =>'初級', 'type' =>'vocabulary' ]);
        DB::table('courses')->insert([ 'id' => 4, 'file' => "basic2", 'name' =>'Podstawy 2', 'name_jp' =>'初級 2', 'type' =>'vocabulary' ]);
        DB::table('courses')->insert([ 'id' => 5, 'file' => "animals", 'name' =>'Zwierzęta', 'name_jp' =>'動物', 'type' =>'vocabulary' ]);
        DB::table('courses')->insert([ 'id' => 6, 'file' => "tokyo_stations", 'name' =>'Miejsca', 'name_jp' =>'', 'type' =>'vocabulary' ]);
        DB::table('courses')->insert([ 'id' => 7, 'file' => "family", 'name' =>'Rodzina', 'name_jp' =>'家族', 'type' =>'vocabulary' ]);
        DB::table('courses')->insert([ 'id' => 8, 'file' => "vocabulary_intermediate1", 'name' =>'Sredniozaawansowane', 'name_jp' =>'中級', 'type' =>'vocabulary' ]);
        DB::table('courses')->insert([ 'id' => 9, 'file' => "vocabulary_intermediate2", 'name' =>'Sredniozaawansowane 2', 'name_jp' =>'中級 2', 'type' =>'vocabulary' ]);
        DB::table('courses')->insert([ 'id' => 10, 'file' => "vocabulary_intermediate3", 'name' =>'Sredniozaawansowane 3', 'name_jp' =>'中級 3', 'type' =>'vocabulary' ]);
        DB::table('courses')->insert([ 'id' => 11, 'file' => "kanji_basic1", 'name' =>'Podstawy kanji 1', 'name_jp' =>'', 'type' =>'kanji' ]);
        DB::table('courses')->insert([ 'id' => 12, 'file' => 'kanji_basic2', 'name' =>'Podstawy kanji 2', 'name_jp' =>'', 'type' =>'kanji' ]);
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('courses');
    }
}
