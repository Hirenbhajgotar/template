<?php

namespace App\Http\Controllers;

use App\Models\Galary;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class GalaryContrller extends Controller
{
    public function index(Request $req)
    {
        $data['galary'] = Galary::where([['is_delete', '=', 0], ['is_active', '=', 1]]);
        // dd($data);
        return view('admin/galary/galary', $data);
    }
    public function create(Request $req)
    {
        return view('admin/galary/create_galary');
    }
    public function store(Request $req)
    {
        $rules = [
            'title' => 'required',
            'description' => 'required'
        ];
        $validator = Validator::make($req->all(), $rules);
        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        }
        $data = $req->all();
        if ($req->hasFile('image')) {
            $imageName = time() . '.' . $req->image->extension();
            $req->file('image')->storeAs(env('GALARY_DIR'), $imageName, 'public');
            $data['image'] = $imageName;
        }
        $baner = Galary::create($data);
        $baner->save();
        return redirect(route('galary'))->with('success', 'Record successfulll Added!');
    }
    public function edit(Request $req)
    {
        return view('admin/galary/edit_galary');
    }
}
