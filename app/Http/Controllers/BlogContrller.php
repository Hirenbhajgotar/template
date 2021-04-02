<?php

namespace App\Http\Controllers;

use App\Models\Blog;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;

class BlogContrller extends Controller
{
    public function index(Request $req)
    {
        $data['heading'] = "Blog";
        $data['blogs'] = Blog::where([['is_delete', '=', 0], ['is_active', '=', 1]])->paginate(2);
        return view('admin/blog/blog', $data);
    }
    public function create(Request $req)
    {
        return view('admin/blog/create_blog');
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
            $req->file('image')->storeAs(env('BLOG_DIR'), $imageName, 'public');
            $data['image'] = $imageName;
        }
        $baner = Blog::create($data);
        $baner->save();
        return redirect(route('blog'))->with('success', 'Record successfulll updated!');
    }
    public function edit(Request $req, $id)
    {
        $data['blog'] = Blog::findOrFail($id);
        return view('admin/blog/edit_blog', $data);
    }
    public function update(Request $req, $id)
    {
        $rules = [
            'title' => 'required',
            'description' => 'required'
        ];
        $validator = Validator::make($req->all(), $rules);
        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        }
        $updateData = $req->all();
        $prevData = Blog::findOrFail($id);
        if ($req->hasFile('image')) {
            $imageName = time() . '.' . $req->image->extension();
            Storage::disk('public')->delete(env('BLOG_DIR') . $prevData->image); // delete file from public disk
            $req->file('image')->storeAs(env('BLOG_DIR'), $imageName, 'public');
            $updateData['image'] = $imageName;
        }
        // $baner = Blog::create($data);
        // $baner->save();
        unset($updateData['_token']);
        Blog::whereId($id)->update($updateData);
        return redirect(route('blog'))->with('success', 'Record successfulll updated!');
    }

    public function destroy(Request $req, $id)
    {
        Blog::whereId($id)->update(['is_delete' => 1]);
        return redirect()->route('blog')->with('success', 'Record Delete successfully!');

    }
}
