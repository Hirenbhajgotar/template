<?php

namespace App\Http\Controllers;

use App\Models\Country;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class CountryMasterController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data['heading'] = 'Country Master';
        // $data['countries'] = Country::paginate(10);
        return view('admin/country/country', $data);
    }

    public function create()
    {
        $data['heading'] = "Add Country";
        return view('admin/country/add_country', $data);
    }
    public function store(Request $req)
    {
        $rules = [
            'country_name' => 'required'
        ];
        $validator = Validator::make($req->all(), $rules);
        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        }
        $country = Country::create($req->all());
        $country->save();
        return redirect(route('country_master'))->with('success', 'Record Successfulll Added!');

    }

    public function edit($id)
    {
        $data['heading'] = "Edit Country";
        $data['country'] = Country::findOrFail($id);        
        return view('admin/country/edit_country', $data);
    }

    public function update(Request $req, $id)
    {
        $rules = [
            'country_name' => 'required'
        ];
        $validator = Validator::make($req->all(), $rules);
        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        }
        $updateData = $req->all();
        unset($updateData['_token']);
        Country::whereId($id)->update($updateData);
        return redirect()->route('country_master')->with('success', 'Record updated successfully!');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
