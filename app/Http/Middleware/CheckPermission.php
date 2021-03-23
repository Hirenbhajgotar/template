<?php

namespace App\Http\Middleware;

use App\Models\Permision;
use Closure;
use Illuminate\Http\Request;

class CheckPermission
{
    
    public function handle(Request $request, Closure $next)
    {
        // dd(auth()->user()->role);
        // $checkPermision = Permision::all();
        // $request['checkPermision'] = $checkPermision;
        return $next($request);
    }
}
