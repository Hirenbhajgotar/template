<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class isAdmin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next)
    {
        // if(auth()->user()->role === 1) { // redirect to super admin
        //     return $next($request);
        // }
        // else if(auth()->user()->role == 2) { // redirect to admin
        //     return $next($request);
        // }
        // else if(auth()->user()->role == -1) { // redirect to user
        //     return redirect('/');
        // }

        if(auth()->user()->role == -1) {
            return redirect('/'); // user login redirect
        } else {
            return $next($request); // admin login redirect
        }
        // exit;
        // return $next($request);
    }
}
