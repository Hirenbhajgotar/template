<?php

namespace App\Http\Controllers;

use App\Models\Testimonial;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;

class TestimonialContrller extends Controller
{
    public function index(Request $req)
    {
        $data['heading'] = 'Temstimonial';
        $data['testimonials'] = Testimonial::where([['is_delete', '=', 0], ['is_active', '=', 1]])->paginate(10);
        return view('admin/testimonial/testimonial', $data);
    }
    public function create(Request $req)
    {
        $data['heading'] = 'Add Temstimonial';
        return view('admin/testimonial/create_testimonial', $data);
    }
    public function store(Request $req)
    {
        $rules = [
            'name' => 'required',
            'description' => 'required'
        ];
        $validator = Validator::make($req->all(), $rules);
        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        }
        $data = $req->all();
        if ($req->hasFile('image')) {
            $imageName = time() . '.' . $req->image->extension();
            $req->file('image')->storeAs(env('TESTIMONIAL_DIR'), $imageName, 'public');
            $data['image'] = $imageName;
        }
        $baner = Testimonial::create($data);
        $baner->save();
        return redirect(route('testimonial'))->with('success', 'Record successfulll Added!');
    }
    public function edit(Request $req, $id)
    {
        $data['heading'] = "Edit Testimonial";
        $data['testimonial'] = Testimonial::findOrFail($id);
        return view('admin/testimonial/edit_testimonial', $data);
    }
    public function update(Request $req, $id)
    {
        $rules = [
            'name' => 'required',
            'description' => 'required'
        ];
        $validator = Validator::make($req->all(), $rules);
        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        }
        $updateData = $req->all();
        $prevData = Testimonial::findOrFail($id);

        if ($req->hasFile('image')) {
            $imageName = time() . '.' . $req->image->extension();
            Storage::disk('public')->delete(env('TESTIMONIAL_DIR') . $prevData->image); // delete file from specific public disk
            $req->file('image')->storeAs(env('TESTIMONIAL_DIR'), $imageName, 'public');
            $updateData['image'] = $imageName;
        }
        unset($updateData['_token']);
        // dd($updateData);
        Testimonial::whereId($id)->update($updateData);
        return redirect()->route('testimonial')->with('success', 'Record updated successfully!');
    }
    public function destroy($id)
    {
        Testimonial::whereId($id)->update(['is_delete' => 1]);
        return redirect()->route('testimonial')->with('success', 'Record deleted successfully!');
    }

}
