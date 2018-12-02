<?php

use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(App\User::class, 50)->create();

        //one test user
        //password is 'secret'
        $user = factory(App\User::class)->create([ 'name' => 'test', 'email' => 'test@test.com']);
    }
}
