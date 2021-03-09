<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class SettingContrller extends Controller
{
    public function index(Request $req)
    {
        return view('admin/seting/seting');
    }
    public function create(Request $req)
    {
        return view('admin/seting/create_seting');
    }
    public function edit(Request $req)
    {
        return view('admin/seting/edit_seting');
    }
}
