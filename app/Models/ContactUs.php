<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ContactUs extends Model
{
    use HasFactory;
    protected $fillable = [
        'email',
        'mobile_no', 
        'address', 'description', 'map', 'fb_link', 'insta_link', 'twitter_link', 'linkedin_link'
    ];
}
