<?php

namespace Tests\Feature;

use GuzzleHttp;
use Tests\TestCase;
use Illuminate\Foundation\Testing\RefreshDatabase;

class CoursesDataTest extends TestCase
{
    public function testCourses()
    {
        //sprawdż format danych dla listy kursów
        $path = env("APP_URL") . "/api/v1/courses";
        $response = $this->withHeaders([
            "Content-type" => 'application/json',
            "Accept" => 'application/json'
            ])->get($path);

        $response->assertStatus(200);
        $response->assertJsonStructure([[
            "id",
            "file",
            "name",
            "name_jp",
            "type"
        ]]);
    }

    public function testVocabulary()
    {
        //pobierz listę kursów typu vocabulary
        $pathCourses = env("APP_URL") . "/api/v1/courses/vocabulary";
        $client = new GuzzleHttp\Client();
        $res = $client->request('GET', $pathCourses);
        $courses = json_decode($res->getBody(), true);
        foreach($courses as $course) {
            
            //sprawdż format danych dla każdego kursu
            $path = env("APP_URL") . "/api/v1/vocabulary/". $course["id"];
            $response = $this->withHeaders([
                "Content-type" => 'application/json',
                "Accept" => 'application/json'
                ])->get($path);

            $response->assertStatus(200);
            $response->assertJsonStructure([[
                "id",
                "kana",
                "kanji",
                "polish"
            ]]);
        }
    }

    public function testKanji()
    {
        //pobierz listę kursów typu kanji
        $pathCourses = env("APP_URL") . "/api/v1/courses/kanji";
        $client = new GuzzleHttp\Client();
        $res = $client->request('GET', $pathCourses);
        $courses = json_decode($res->getBody(), true);
        foreach($courses as $course) {
            //sprawdż format danych dla każdego kursu
            $path = env("APP_URL") . "/api/v1/kanji/". $course["id"];
            $response = $this->withHeaders([
                "Content-type" => 'application/json',
                "Accept" => 'application/json'
                ])->get($path);

            $response->assertStatus(200);
            $response->assertJsonStructure([[
                "id",
                "kanji",
                "kunyomi",
                "onyomi",
                "definition"
            ]]);
        }
    }
}
