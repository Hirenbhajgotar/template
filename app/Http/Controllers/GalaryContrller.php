<?php

namespace App\Http\Controllers;

use App\Models\Galary;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;

class GalaryContrller extends Controller
{
    public function index(Request $req)
    {
        $data['galaries'] = Galary::where([['is_delete', '=', 0], ['is_active', '=', 1]])->paginate(10);
        return view('admin/galary/galary', $data);
    }
    public function create(Request $req)
    {
        $data['heading'] = "Add Galary";
        return view('admin/galary/create_galary', $data);
    }
    public function store(Request $req)
    {
        $rules = [
            'title1' => 'required',
            'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg,JPEG,PNG,JPG,GIF,SVG|nullable'
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
    public function edit(Request $req, $id)
    {
        $data['heading'] = "Edit Galary";
        $data['galary'] = Galary::findOrFail($id);
        return view('admin/galary/edit_galary', $data);
    }
    public function update(Request $req, $id)
    {
        $rules = [
            'title1' => 'required',
            'image' => 'image|mimes:jpeg,png,jpg,gif,svg,JPEG,PNG,JPG,GIF,SVG|nullable'
        ];
        $validator = Validator::make($req->all(), $rules);
        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        }
        $updateData = $req->all();
        $prevData = Galary::findOrFail($id);

        if ($req->hasFile('image')) {
            $imageName = time() . '.' . $req->image->extension();
            Storage::disk('public')->delete(env('GALARY_DIR') . $prevData->image); // delete file from specific public disk
            $req->file('image')->storeAs(env('GALARY_DIR'), $imageName, 'public');
            $updateData['image'] = $imageName;
        }
        unset($updateData['_token']);
        // dd($updateData);
        Galary::whereId($id)->update($updateData);
        return redirect()->route('galary')->with('success', 'Record updated successfully!');
    }

    public function destroy($id)
    {
        Galary::whereId($id)->update(['is_delete' => 1]);
        return redirect()->route('galary')->with('success', 'Record deleted successfully!');
    }
}
