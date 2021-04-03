<?php

namespace App\Http\Controllers\buyer;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class BuyerController extends Controller
{
    public function index()
    {
        $data['heading'] = '';
        return view('welcome');
    }
}
