<?php

namespace App\Http\Controllers;

use App\Models\AdminType;
use App\Models\Permision;
use Illuminate\Http\Request;

class PermisionController extends Controller
{
    public function index()
    {
        
        $data['heading'] = "Add Permisions";
        $data['admin_types'] = AdminType::where([['is_delete', '=', 0], ['is_active', '=', 1], ['id', '!=', 1]])->get();

        // dd($data);
        return view('admin/permision/create_permision', $data);
    }
    public function create()
    {
        $data['heading'] = "Add Permisions";
        $data['admin_types'] = AdminType::where([['is_delete', '=', 0], ['is_active', '=', 1], ['id', '!=', 1]])->get();
        // dd($data);
        return view('admin/permision/create_permision', $data);
    }
    public function store(Request $req)
    {
        
    }
    public function edit(Request $req, $id)
    {
        dd($id);
        return view('admin/permision/edit_permision');
    }
    public function update(Request $req, $id)
    {
        // $updateData = $req->all();
        // unset($updateData['_token']);
        $updateData['create'] = ($req->all('create')['create'] == 'on') ? 1 : 0;
        $updateData['view']   = ($req->all('view')['view'] == 'on') ? 1 : 0;
        $updateData['update'] = ($req->all('update')['update'] == 'on') ? 1 : 0;
        $updateData['delete'] = ($req->all('delete')['delete'] == 'on') ? 1 : 0;
        // dd($updateData);
        Permision::whereId($id)->update($updateData);
        return redirect()->route('permisions')->with('success', 'Record updated successfully!');
    }

}
