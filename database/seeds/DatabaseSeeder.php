<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        /*$this->call(CoursesTableSeeder::class);
        $this->call(VocabularyTableSeeder::class);
        $this->call(KanjiTableSeeder::class);*/
        $this->call(UsersTableSeeder::class);
        $this->call(ProgressTableSeeder::class);

    }
}
