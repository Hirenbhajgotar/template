<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class FaqContrller extends Controller
{
    public function index(Request $req)
    {
        return view('admin/faq/faq');
    }
    public function create(Request $req)
    {
        return view('admin/faq/create_faq');
    }
    public function edit(Request $req)
    {
        return view('admin/faq/edit_faq');
    }
}
