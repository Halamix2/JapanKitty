<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTexts extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('texts', function (Blueprint $table) {
            $table->increments('id');
            $table->string('offerDescription')->nullable();
            $table->string('offerOption1')->nullable();
            $table->string('offerOption2')->nullable();
            $table->string('offerOption3')->nullable();
            $table->string('contactDescription')->nullable();
            $table->string('aboutCourse')->nullable();
        });

        DB::table('texts')->insert([
            "id" => 3,
            "offerDescription" => "",
            "offerOption1" => "",
            "offerOption2" => "",
            "offerOption3" => "",
            "contactDescription" => "",
            "aboutCourse" => "japankitty@halamix2.pl"
             ]);

        DB::table('texts')->insert([
            "id" => 4,
            "offerDescription" => "Serwis jest nieustannie rozwijany",
            "offerOption1" => "",
            "offerOption2" => "",
            "offerOption3" => "",
            "contactDescription" => "W razie pytań skontaktuj się z nami pod adresem japankitty@halamix2.pl",
            "aboutCourse" => "Język japoński - język używany przez ok. 130 mln mieszkańców Japonii oraz japońskich emigrantów na wszystkich kontynentach. Najstarsze znane teksty to pochodzące z V i VI wieku nazwy własne. Nie mówią jednak one wiele o języku. Najstarsze dłuższe teksty pochodzą z VIII wieku (kiki). Już wtedy zaczęto używać znaków chińskich do sylabicznego zapisu wymowy. Jednak pewne sylaby, które są identyczne we współczesnym japońskim, były zapisywane różnymi znakami i był to zapis konsekwentny. Świadczy to o tym, że dawny japoński miał więcej samogłosek (lub ogólniej: typów sylab) – osiem, zamiast współczesnych pięciu, za to nie rozróżniał długości samogłosek, tak jak to czyni współczesny japoński."
        ]);
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('texts');
    }
}
