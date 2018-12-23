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
        });

        DB::table('kanji')->insert([ "id" => 1, "course" => 11, "kanji" => "猫", "kunyomi" => "ねこ", "onyomi" => "ビョウ", "radicals" => NULL ]);
        DB::table('kanji')->insert([ "id" => 2, "course" => 11, "kanji" => "気", "kunyomi" => "いき", "onyomi" => "キ、ケ", "radicals" => NULL ]);
        DB::table('kanji')->insert([ "id" => 3, "course" => 11, "kanji" => "日", "kunyomi" => "ひ、-び、-か", "onyomi" => "ニチ、ジツ", "radicals" => NULL ]);
        DB::table('kanji')->insert([ "id" => 4, "course" => 11, "kanji" => "月", "kunyomi" => "つき", "onyomi" => "ゲツ、ガツ", "radicals" => NULL ]);
        DB::table('kanji')->insert([ "id" => 5, "course" => 11, "kanji" => "金", "kunyomi" => "かね、かな-、-がね", "onyomi" => "キン、コン、ゴン", "radicals" => NULL ]);
        DB::table('kanji')->insert([ "id" => 6, "course" => 11, "kanji" => "血", "kunyomi" => "ち", "onyomi" => "ケツ", "radicals" => NULL ]);
        DB::table('kanji')->insert([ "id" => 7, "course" => 11, "kanji" => "皿", "kunyomi" => "さら", "onyomi" => "ベイ", "radicals" => NULL ]);
        DB::table('kanji')->insert([ "id" => 8, "course" => 11, "kanji" => "道", "kunyomi" => "みち", "onyomi" => "ドウ、 トウ", "radicals" => NULL ]);
        DB::table('kanji')->insert([ "id" => 9, "course" => 11, "kanji" => "犬", "kunyomi" => "いぬ", "onyomi" => "ケン", "radicals" => NULL ]);
        DB::table('kanji')->insert([ "id" => 10, "course" => 11, "kanji" => "本", "kunyomi" => "もと", "onyomi" => "ホン", "radicals" => NULL ]);
        DB::table('kanji')->insert([ "id" => 11, "course" => 11, "kanji" => "橋", "kunyomi" => "はし", "onyomi" => "キョウ", "radicals" => NULL ]);
        DB::table('kanji')->insert([ "id" => 12, "course" => 11, "kanji" => "円", "kunyomi" => "まる、まど、まろ", "onyomi" => "エン", "radicals" => NULL ]);
        DB::table('kanji')->insert([ "id" => 13, "course" => 11, "kanji" => "駅", "kunyomi" => "えき", "onyomi" => "―", "radicals" => NULL ]);
        DB::table('kanji')->insert([ "id" => 14, "course" => 11, "kanji" => "安", "kunyomi" => "やす", "onyomi" => "アン", "radicals" => NULL ]);
        DB::table('kanji')->insert([ "id" => 15, "course" => 11, "kanji" => "雨", "kunyomi" => "あめ、あま-、-さめ", "onyomi" => "ウ", "radicals" => NULL ]);
        DB::table('kanji')->insert([ "id" => 16, "course" => 11, "kanji" => "学", "kunyomi" => "まな", "onyomi" => "ガク", "radicals" => NULL ]);
        DB::table('kanji')->insert([ "id" => 17, "course" => 12, "kanji" => "花", "kunyomi" => "はな", "onyomi" => "カ", "radicals" => NULL ]);
        DB::table('kanji')->insert([ "id" => 18, "course" => 12, "kanji" => "火", "kunyomi" => "ひ", "onyomi" => "カ", "radicals" => NULL ]);
        DB::table('kanji')->insert([ "id" => 19, "course" => 12, "kanji" => "休", "kunyomi" => "やす", "onyomi" => "キュウ", "radicals" => NULL ]);
        DB::table('kanji')->insert([ "id" => 20, "course" => 12, "kanji" => "月", "kunyomi" => "つき", "onyomi" => "ゲツ、ガツ", "radicals" => NULL ]);
        DB::table('kanji')->insert([ "id" => 21, "course" => 12, "kanji" => "魚", "kunyomi" => "うお、さかな、-ざかな", "onyomi" => "ギョ", "radicals" => NULL ]);
        DB::table('kanji')->insert([ "id" => 22, "course" => 12, "kanji" => "見", "kunyomi" => "み", "onyomi" => "ケン", "radicals" => NULL ]);
        DB::table('kanji')->insert([ "id" => 23, "course" => 12, "kanji" => "古", "kunyomi" => "ふる", "onyomi" => "コ", "radicals" => NULL ]);
        DB::table('kanji')->insert([ "id" => 24, "course" => 12, "kanji" => "口", "kunyomi" => "くち", "onyomi" => "コウ、ク", "radicals" => NULL ]);
        DB::table('kanji')->insert([ "id" => 25, "course" => 12, "kanji" => "子", "kunyomi" => "こ、ね", "onyomi" => "シ、ス、ツ", "radicals" => NULL ]);
        DB::table('kanji')->insert([ "id" => 26, "course" => 12, "kanji" => "山", "kunyomi" => "やま", "onyomi" => "サン、セン", "radicals" => NULL ]);
        DB::table('kanji')->insert([ "id" => 27, "course" => 12, "kanji" => "車", "kunyomi" => "くるま", "onyomi" => "シャ", "radicals" => NULL ]);
        DB::table('kanji')->insert([ "id" => 28, "course" => 12, "kanji" => "人", "kunyomi" => "ジン、ニン", "onyomi" => "ひと、-り、-と", "radicals" => NULL ]);
        DB::table('kanji')->insert([ "id" => 29, "course" => 12, "kanji" => "川", "kunyomi" => "かわ", "onyomi" => "セン", "radicals" => NULL ]);
        DB::table('kanji')->insert([ "id" => 30, "course" => 12, "kanji" => "中", "kunyomi" => "なか、うち、あた", "onyomi" => "チュウ", "radicals" => NULL ]);
        DB::table('kanji')->insert([ "id" => 31, "course" => 12, "kanji" => "天", "kunyomi" => "あまつ、あめ、あま-", "onyomi" => "テン", "radicals" => NULL ]);
        DB::table('kanji')->insert([ "id" => 32, "course" => 12, "kanji" => "店", "kunyomi" => "みせ、たな", "onyomi" => "テン", "radicals" => NULL ]);
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
