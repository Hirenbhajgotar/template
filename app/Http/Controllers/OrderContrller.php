<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class OrderContrller extends Controller
{
    public function index(Request $req)
    {
        return view('admin/order/order');
    }
    public function create(Request $req)
    {
        return view('admin/order/create_order');
    }
    public function edit(Request $req)
    {
        return view('admin/order/edit_order');
    }
}
