<?php

namespace App\Http\Middleware;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

use Closure;

class CheckTokenLifetime
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        $user = Auth::user();
        //check ix expires_at is lower than current date and invalidate token then
        if($user->tokens[0]->expires_at < now()) {
            DB::table('oauth_access_tokens')->where('id',$user->tokens[0]->id)->update(['revoked' => 1 ]);
            return response()->json(['message' => 'Unauthenticated.'], 401);
        }

        return $next($request);
        
    }
}
