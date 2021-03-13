<?php

namespace App\Http\Controllers;

use App\Models\Team;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;

class TeamContrller extends Controller
{
    public function index(Request $req)
    {
        $data['heading'] = "Team";
        $data['teams'] = Team::where([['is_delete', '=', 0], ['is_active', '=', 1]])->paginate(10);
        return view('admin/team/team', $data);
    }
    public function create(Request $req)
    {
        $data['heading'] = "Add Team";
        return view('admin/team/create_team', $data);
    }
    public function store(Request $req)
    {
        $rules = [
            'name' => 'required',
        ];
        $validator = Validator::make($req->all(), $rules);
        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        }
        $data = $req->all();
        if ($req->hasFile('image')) {
            $imageName = time() . '.' . $req->image->extension();
            $req->file('image')->storeAs(env('TEAM_DIR'), $imageName, 'public');
            $data['image'] = $imageName;
        }
        $baner = Team::create($data);
        $baner->save();
        return redirect(route('team'))->with('success', 'Record successfulll Added!');
    }
    public function edit(Request $req, $id)
    {
        $data['heading'] = 'Edit Team';
        $data['team'] = Team::findOrFail($id);
        return view('admin/team/edit_team', $data);
    }
    public function update(Request $req, $id)
    {
        $rules = [
            'name' => 'required',
        ];
        $validator = Validator::make($req->all(), $rules);
        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        }
        $updateData = $req->all();
        $prevData = Team::findOrFail($id);

        if ($req->hasFile('image')) {
            $imageName = time() . '.' . $req->image->extension();
            Storage::disk('public')->delete(env('TEAM_DIR') . $prevData->image); // delete file from specific public disk
            $req->file('image')->storeAs(env('TEAM_DIR'), $imageName, 'public');
            $updateData['image'] = $imageName;
        }
        unset($updateData['_token']);
        // dd($updateData);
        Team::whereId($id)->update($updateData);
        return redirect()->route('team')->with('success', 'Record updated successfully!');
    }
    public function destroy($id)
    {
        Team::whereId($id)->update(['is_delete' => 1]);
        return redirect()->route('team')->with('success', 'Record deleted successfully!');
    }
}
