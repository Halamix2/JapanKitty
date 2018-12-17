<?php

use Illuminate\Database\Seeder;

class ProgressTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        //ID should just autoincrement, so...
        //add then to test user, it should be seeded as well
        DB::table('progress')->insert([ "user" => 51, "game"  => 1, "category"  => 1, "score"  => 100, ]);
        DB::table('progress')->insert([ "user" => 51, "game"  => 1, "category"  => 10, "score"  => 50, ]);
        DB::table('progress')->insert([ "user" => 51, "game"  => 2, "category"  => 11, "score"  => 6, ]);
    }
}
