<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class UserContrller extends Controller
{
    public function index(Request $req)
    {
        $data['heading'] = 'Users';
        return view('admin/user/user', $data);
    }
    public function create(Request $req)
    {
        return view('admin/user/create_user');
    }
    public function edit(Request $req)
    {
        return view('admin/user/edit_user');
    }
}
