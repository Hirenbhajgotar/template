<?php

namespace App\Http\Controllers;

use App\Models\ContactUs;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class ContactUsContrller extends Controller
{
    public function index(Request $req)
    {
        $data['contactUs'] = ContactUs::all();
        return view('admin/contect_us/contect_us', $data);
    }
    public function create(Request $req)
    {
        return view('admin/contect_us/create_contect_us');
    }
    public function store(Request $req)
    {
        $rules = [
            'email' => 'required|email|nullable',
            'mobile_no' => 'required|digits:10',
        ];
        $validator = Validator::make($req->all(), $rules);
        if ($validator->fails()) {
            return redirect()->route('create_contect_us')->withErrors($validator)->withInput();
        }
        $data = $req->all();
        // dd($data);
        $service = ContactUs::create($data);
        $service->save();
        return redirect(route('contect_us'))->with('success', 'Record successfully inserted!');
    }
    public function edit(Request $req, $id)
    {
        $data['contactUs'] = ContactUs::findOrFail($id);
        return view('admin/contect_us/edit_contect_us', $data);
    }
    public function update(Request $req, $id)
    {
        $rules = [
            'email' => 'required|email|nullable',
            'mobile_no' => 'required|digits:10',
        ];
        $validator = Validator::make($req->all(), $rules);
        if ($validator->fails()) {
            return redirect()->route('create_contect_us')->withErrors($validator)->withInput();
        }
        $data = $req->all();
        unset($data['_token']);

        ContactUs::whereId($id)->update($data);
        return redirect(route('contect_us'))->with('success', 'Record updated successfully!');
    }



}
