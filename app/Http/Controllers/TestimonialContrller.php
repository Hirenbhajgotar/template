<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class TestimonialContrller extends Controller
{
    public function index(Request $req)
    {
        return view('admin/testimonial/testimonial');
    }
    public function create(Request $req)
    {
        return view('admin/testimonial/create_testimonial');
    }
    public function edit(Request $req)
    {
        return view('admin/testimonial/edit_testimonial');
    }
}
