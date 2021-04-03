<?php

namespace App\Http\Controllers\buyer;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class FeedbackController extends Controller
{
    public function index()
    {
        return view('buyer.feedback');
    }
    public function store_feedback(Request $req)
    {
        // dd($req->all());
    }


}
