<?php

namespace App\Http\Controllers;

use App\Models\Banner;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;

class BannerController extends Controller
{

    public function index()
    {
        // $data['baners'] = Banner::where([['is_delete', '=', 0], ['is_active', '=', 1]])->paginate(10);
        $data['heading'] = "Banner";
        return view('admin/banner/banner', $data);
    }

    public function create()
    {
        return view('admin/banner/create_banner');
    }

    public function store(Request $req)
    {
        $rules = [
            'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg,JPEG,PNG,JPG,GIF,SVG|nullable'
        ];
        $validator = Validator::make($req->all(), $rules);
        if ($validator->fails()) {
            return redirect()->route('create_banner')->withErrors($validator)->withInput();
        }
        $data = $req->all();
        if ($req->hasFile('image')) {
            $imageName = time() . '.' . $req->image->extension();
            // Storage::disk('public')->delete('asset/img/about_us/' . $seting_records->logo); // delete file from specific disk e.g; s3, local etc
            $req->file('image')->storeAs(env('BANNER_DIR'), $imageName, 'public');
            $data['image'] = $imageName;
        }
        $baner = Banner::create($data);
        $baner->save();
        return redirect(route('banner'))->with('success', 'Record inserted successfulll!');
    }

    public function edit(Request $req, $id)
    {
        $data['baner'] = Banner::findOrFail($id);
        return view('admin/banner/edit_banner', $data);
    }

    public function update(Request $req, $id)
    {
        $rules = [
            'image' => 'image|mimes:jpeg,png,jpg,gif,svg,JPEG,PNG,JPG,GIF,SVG|nullable'
        ];
        $validator = Validator::make($req->all(), $rules);
        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        }
        $updateData = $req->all();
        $prevData = Banner::findOrFail($id);

        if ($req->hasFile('image')) {
            $imageName = time() . '.' . $req->image->extension();
            Storage::disk('public')->delete(env('BANNER_DIR') . $prevData->image); // delete file from specific public disk
            $req->file('image')->storeAs(env('BANNER_DIR'), $imageName, 'public');
            $updateData['image'] = $imageName;
        }
        unset($updateData['_token']);
        // dd($updateData);
        Banner::whereId($id)->update($updateData);
        return redirect()->route('banner')->with('success', 'Record updated successfully!');
    }

    public function destroy($id)
    {
        Banner::whereId($id)->update(['is_delete' => 1]);
        return redirect()->route('banner')->with('success', 'Record deleted successfully!');

    }
}
