<?php

namespace App\Http\Controllers;

use App\Models\AboutUs;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;

class AboutUsController extends Controller
{
    protected $CheckPermisionObj;
    public function __construct(CheckPermisionController $CheckPermisionObj)
    {
        $this->CheckPermisionObj = $CheckPermisionObj;
    }
    public function index(Request $req)
    {
        $CheckPermision = $this->CheckPermisionObj->check();
        $data['aboutUs'] = AboutUs::all();
        $data['rights'] = $CheckPermision;
        

        return view('admin/about_us/about_us', $data);
    }

    public function create()
    {
        return view('admin/about_us/create_about_us');
    }
    public function add(Request $req)
    {
        $rules = [
            'title' => 'required',
            'image' => 'image|mimes:jpeg,png,jpg,gif,svg,JPEG,PNG,JPG,GIF,SVG|nullable'
        ];
        $validator = Validator::make($req->all(), $rules);
        if($validator->fails()) {
            return redirect()->route('create_aboute_us')->withErrors($validator)->withInput();
        }
        $data = $req->all();
        if($req->hasFile('image')) {
            $imageName = time() . '.' . $req->image->extension();
            // Storage::disk('public')->delete('asset/img/about_us/' . $seting_records->logo); // delete file from specific disk e.g; s3, local etc
            $req->file('image')->storeAs('asset/img/about_us/', $imageName, 'public');
            $data['image'] = $imageName;
        }
        $service = AboutUs::create($data);
        $service->save();
        return redirect(route('about_us'))->with('success', 'Record successfulll updated!');
    }
    public function edit(Request $req, $id)
    {
        $data['aboutUs'] = AboutUs::findOrFail($id);
        return view('admin/about_us/edit_about_us', $data);
    }
    
    public function update(Request $req, $id)
    {
        $rules = [
            'title' => 'required',
            'image' => 'image|mimes:jpeg,png,jpg,gif,svg,JPEG,PNG,JPG,GIF,SVG|nullable'
        ];
        $validator = Validator::make($req->all(), $rules);
        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        }
        $updateData = $req->all();
        $prevData = AboutUs::findOrFail($id);
        
        if ($req->hasFile('image')) {
            $imageName = time() . '.' . $req->image->extension();
            Storage::disk('public')->delete(env('ABOUT_US_DIR') . $prevData->image); // delete file from specific public disk
            $req->file('image')->storeAs(env('ABOUT_US_DIR'), $imageName, 'public');
            $updateData['image'] = $imageName;
        }
        unset($updateData['_token']);
        // dd($updateData);
        AboutUs::whereId($id)->update($updateData);
        return redirect()->route('about_us')->with('success', 'Record updated successfully!');
    }










}
