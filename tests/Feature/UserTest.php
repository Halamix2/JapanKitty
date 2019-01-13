<?php

namespace Tests\Feature;

use GuzzleHttp;
use Tests\TestCase;
use Illuminate\Foundation\Testing\RefreshDatabase;

class UserTest extends TestCase
{
    public function testLogin()
    {
        //sprawdż format danych dla listy kursów
        $path = env("APP_URL") . "/api/v1/login";
        $response = $this->withHeaders([
            "Content-type" => 'application/json',
            "Accept" => 'application/json'
            ])->
            json('POST', $path, [
                "email" => "test@test.com",
                "password" => "secret"
            ]);

        $response->assertStatus(200);
        $response->assertJsonStructure([ "success" => [
            "token",
            "role",
        ]]);

        return json_decode($response->getContent(), true)["success"]["token"];
    }

    /**
     * @depends testLogin
     */
    public function testUserDetails($token)
    {
        $path = env("APP_URL") . "/api/v1/get-details";
        $response = $this->withHeaders([
            "Content-type" => 'application/json',
            "Accept" => 'application/json',
            "Authorization" => "Bearer " . $token
            ])->get($path);

        $response->assertJsonStructure([ "success" => [
            "id",
            "name",
            "email",
            "created_at",
            "updated_at",
            "sex",
            "birthday",
            "surname",
            "role"
        ]]);
    }


    /**
     * @depends testLogin
     */
    public function testLogout($token)
    {
        $path = env("APP_URL") . "/api/v1/logout";
        $response = $this->withHeaders([
            "Content-type" => 'application/json',
            "Accept" => 'application/json',
            "Authorization" => "Bearer " . $token
            ])->get($path);

        $response->assertJsonStructure([ "success" => "success"]);
    }

}
