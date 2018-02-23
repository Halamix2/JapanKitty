<?php

namespace Japankitty\Providers;

use Laravel\Passport\Passport;
use Illuminate\Support\Facades\Gate;
use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;

class AuthServiceProvider extends ServiceProvider
{
    /**
     * The policy mappings for the application.
     *
     * @var array
     */
    protected $policies = [
        'Japankitty\Model' => 'Japankitty\Policies\ModelPolicy',
    ];

    /**
     * Register any authentication / authorization services.
     *
     * @return void
     */
    public function boot()
    {
        $this->registerPolicies();

        Passport::routes();

        //set after how much time API tokens will expire
        //Passport::tokensExpireIn(Carbon::now()->addDays(15));
        //Passport::refreshTokensExpireIn(Carbon::now()->addDays(30));
    }
}
