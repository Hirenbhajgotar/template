<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class TeamContrller extends Controller
{
    public function index(Request $req)
    {
        return view('admin/team/team');
    }
    public function create(Request $req)
    {
        return view('admin/team/create_team');
    }
    public function edit(Request $req)
    {
        return view('admin/team/edit_team');
    }
}
