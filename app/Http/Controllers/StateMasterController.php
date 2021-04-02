<?php

namespace App\Http\Controllers;

use App\Models\Country;
use App\Models\State;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class StateMasterController extends Controller
{
    public function index()
    {
        $data['heading'] = 'State Master';
        // $data['states'] = State::paginate(10);
        
        return view('admin/state/state', $data);
    }

    public function create()
    {
        $data['heading'] = "Add State";
        $data['countries'] = Country::all();
        
        return view('admin/state/add_state', $data);
    }

    public function store(Request $req)
    {
        $rules = [
            'country_id' => 'required',
            'state_name' => 'required'
        ];
        $validator = Validator::make($req->all(), $rules);
        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        }
        $country_name = Country::where([['id', '=', $req->country_id]])->first();
        $data = $req->all();
        $data['country_name'] = $country_name->country_name;
        // dd($data);
        $country = State::create($data);
        $country->save();
        return redirect(route('state_master'))->with('success', 'Record Successfulll Added!');

    }

    public function edit($id)
    {
        $data['heading'] = "Add State";
        $data['state'] = State::findorFail($id);
        $data['countries'] = Country::all();
        // dd($data['state']);
        return view('admin/state/edit_state', $data);
    }

    public function update(Request $req, $id)
    {
        $rules = [
            'country_id' => 'required',
            'state_name' => 'required'
        ];
        $validator = Validator::make($req->all(), $rules);
        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        }
        $country_name = Country::where([['id', '=', $req->country_id]])->first();
        $updateData = $req->all();
        $updateData['country_name'] = $country_name->country_name;

        unset($updateData['_token']);
        // dd($updateData);
        State::whereId($id)->update($updateData);
        return redirect()->route('state_master')->with('success', 'Record updated successfully!');
    }

    public function destroy($id)
    {
        //
    }
}
