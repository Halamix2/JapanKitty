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
        //and add them default token

        //the token is
        /*
            eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImYyOWYwY2Q0MzI2NGVmOWIwNzI1MzRmY2FhZDdlYTI1MTMyMWFjN2M0NjgwMmE3YTQwODMzZTU1Zjk5N2YyZjZiOTFiN2Q3NmUyMWUzZTcwIn0.eyJhdWQiOiIxIiwianRpIjoiZjI5ZjBjZDQzMjY0ZWY5YjA3MjUzNGZjYWFkN2VhMjUxMzIxYWM3YzQ2ODAyYTdhNDA4MzNlNTVmOTk3ZjJmNmI5MWI3ZDc2ZTIxZTNlNzAiLCJpYXQiOjE1NDUwNDUyMDQsIm5iZiI6MTU0NTA0NTIwNCwiZXhwIjoxNTc2NTgxMjA0LCJzdWIiOiI1MSIsInNjb3BlcyI6W119.HXMwYs1GnM3pwZXGFUp58_xVDF1L-KbjkMjz_HfSOH0LYA3kZeiOwW0ZVZajOlRCj6m1Lb3oIvzarGWcOqdBHAtWXH2kHQ8i-P5bGxokI7gfaS2YC8sbaLHJqowMT7tyIYTK0-p3uRKVHFjWDMeR5iZyMiIuj-hwvjtWIWcsDZRL22Po1mygQuEbXMKpQMGMzEGTNDIt_mrJHiuY7VYk3ORLNwUePsXRYZ3O8Qt3hO172_cS119tOlw7_NOKTbJbcrfVH8I8XBC47yqNMLnbFm3av8HqlwT8dkHWT1NJw9s4EcLQbuQo8U1C_Yd6yU6F2a0ZqRVOn_zyQ3ddUFwJDZmPF9x2A4vkqnvdsqBI77ojqNBMFAeRE2xLxiDV_PMJKYa-Q0Vcj6bTnBX5zppkL3vcjocBsW_-2G9cDT3xF8OZ8C98CAUiY3Wrg95RJ2n7n8xGAc3TDkEtRUHvUTi6YbtnafkpsjNlMzJTRmNIbuHvJVshHwAr2IwzLskzux_fvO1F17o8T4cMw3VmA9rJ-6DUfyoLbfYyQyZScEWsziScKd4SpEQQ3wqQmFS2v9mkSJxVSqZfzgBvnY-2b4mlAC6dK5E3Hor2FZgmtH6_eQazJ-AzbTD6BUPXpdzdpQ8bav02ENU5PKNTR5sgIiL_eKzybu31eAy6Yqu4WHSx6to
        */
        DB::table('oauth_access_tokens')->insert([
            "id" => "f29f0cd43264ef9b072534fcaad7ea251321ac7c46802a7a40833e55f997f2f6b91b7d76e21e3e70",
            "user_id"  => "51",
            "client_id"  => "1",
            "name"  => "api",
            "scopes"  => "[]",
            "revoked"  => "0",
            "created_at"  => "2018-12-17 11:13:24",
            "updated_at"  => "2018-12-17 11:13:24",
            "expires_at" => "2019-12-17 11:13:24",
        ]);
    }
}
