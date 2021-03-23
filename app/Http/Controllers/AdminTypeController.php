<?php

namespace App\Http\Controllers;

use App\Models\AdminType;
use App\Models\Permision;
use App\Http\Controllers\CheckPermisionController;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Validation\Rule;

class AdminTypeController extends Controller
{
    protected $CheckPermisionObj;
    public function __construct(CheckPermisionController $CheckPermisionObj) {
        $this->CheckPermisionObj = $CheckPermisionObj;
        
    }
    public function index(Request $req)
    {
        if(auth()->user()->role !== 1) {
            return redirect()->route('not_authorized');
        }
        
        // $CheckPermision = new CheckPermisionController();
        $CheckPermision = $this->CheckPermisionObj->check();
        
        $data['heading'] = "Admin Type";
        // $data['adminTypes'] = AdminType::where([['is_delete', '=', 0]])->paginate(10);
        $data['adminTypes'] = AdminType::where([['is_delete', '=', 0]])->get();
        $data['rights'] = $CheckPermision;
        return view('admin/admin_type/admin_type', $data);
    }

    public function create()
    {
        $data['heading'] = "Add Admin Type";
        return view('admin/admin_type/create_admin_type', $data);
    }

    public function store(Request $req)
    {
        $rules = [
            'type'     => 'required|regex:/^[a-zA-Z_]*$/|unique:admin_types',
            'email'    => 'required|email|unique:users',
            'password' => 'required|min:6',
            'name'     => 'required|regex:/^[a-zA-Z_0-9-\s]*$/'
        ];
        $validator = Validator::make($req->all(), $rules);
        if ($validator->fails()) {
            return redirect()->route('create_admin_type')->withErrors($validator)->withInput();
        }
        $admin_type = AdminType::create($req->all());
        $admin_type->save();
        $admin_type_id = $admin_type->id;

        // create user
        $userData['email']    = $req->email;
        $userData['password'] = Hash::make($req->password);
        $userData['name']     = $req->name;
        $userData['role']     = $admin_type_id;
        $user = User::create($userData);
        $user->save();

        // add default permision
        $permisionData['admin_type'] = $admin_type_id;
        $permisionData['create']     = 1;
        $permisionData['view']       = 1;
        $permisionData['update']     = 1;
        $permisionData['delete']     = 0;

        $permision = Permision::create($permisionData);
        $permision->save();
        return redirect(route('admin_type'))->with('success', 'Record successfully added!');
    }

    public function edit(Request $req, $id)
    {
        $data['heading'] = 'Edit Admin Type';
        $data['adminType'] = AdminType::findOrFail($id);
        $data['users'] = User::where([['role', '=', $id]])->first();
        // dd($data['users']);
        return view('admin/admin_type/edit_admin_type', $data);
    }

    public function update(Request $req, $id)
    {
        $rules = [
            'type'     => ['required','regex:/^[a-zA-Z_]*$/',Rule::unique('admin_types')->ignore($id)],
            'email'    => ['required','email',Rule::unique('users', 'role')->ignore($id)],
            'password' => 'required|min:6',
            'name'     => 'required|regex:/^[a-zA-Z_0-9-\s]*$/'
        ];
        $validator = Validator::make($req->all(), $rules);
        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        }
        // dd($req->all());
        $updateAdminTypeData['type'] = $req->type; 
        $updateAdminTypeData['name'] = $req->name; 
        // $updateData = $req->all();
        // unset($updateData['_token']);
        
        // update admin type
        AdminType::whereId($id)->update($updateAdminTypeData);

        // update user
        $updateUserData['name']     = $req->name;
        $updateUserData['email']    = $req->email;
        $updateUserData['password'] = Hash::make($req->password);
        User::where([['role', '=', $id]])->update($updateUserData);

        return redirect()->route('admin_type')->with('success', 'Record updated successfully!');
    }

    public function destroy($id)
    {
        AdminType::whereId($id)->update(['is_delete' => 1]);
        return redirect()->route('admin_type')->with('success', 'Record deleted successfully!');

    }
}
