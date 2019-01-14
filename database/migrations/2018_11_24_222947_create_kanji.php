<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateKanji extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //
        Schema::create('kanji', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('course');
            $table->string('kanji');
            $table->string('kunyomi');
            $table->string('onyomi');
            $table->string('radicals')->nullable();
            $table->string('definition')->nullable();
        });

        DB::table('kanji')->insert([ "id" => 1, "course" => 11, "kanji" => "猫", "kunyomi" => "ねこ", "onyomi" => "ビョウ", "definition" => "kot" ]);
        DB::table('kanji')->insert([ "id" => 2, "course" => 11, "kanji" => "気", "kunyomi" => "いき", "onyomi" => "キ、ケ", "definition" => "dusza ; nastrój ; atmosfera" ]);
        DB::table('kanji')->insert([ "id" => 3, "course" => 11, "kanji" => "日", "kunyomi" => "ひ、-び、-か", "onyomi" => "ニチ、ジツ", "definition" => "dzień ; słońce" ]);
        DB::table('kanji')->insert([ "id" => 4, "course" => 11, "kanji" => "月", "kunyomi" => "つき", "onyomi" => "ゲツ、ガツ", "definition" => "miesiąc ; księżyc" ]);
        DB::table('kanji')->insert([ "id" => 5, "course" => 11, "kanji" => "金", "kunyomi" => "かね、かな-、-がね", "onyomi" => "キン、コン、ゴン", "definition" => "złoto" ]);
        DB::table('kanji')->insert([ "id" => 6, "course" => 11, "kanji" => "血", "kunyomi" => "ち", "onyomi" => "ケツ", "definition" => "krew" ]);
        DB::table('kanji')->insert([ "id" => 7, "course" => 11, "kanji" => "皿", "kunyomi" => "さら", "onyomi" => "ベイ", "definition" => "talerz" ]);
        DB::table('kanji')->insert([ "id" => 8, "course" => 11, "kanji" => "道", "kunyomi" => "みち", "onyomi" => "ドウ、 トウ", "definition" => "droga" ]);
        DB::table('kanji')->insert([ "id" => 9, "course" => 11, "kanji" => "犬", "kunyomi" => "いぬ", "onyomi" => "ケン", "definition" => "pies" ]);
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('kanji');
    }
}
