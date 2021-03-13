<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Galary extends Model
{
    use HasFactory;
    protected $fillable = [
        'title1',
        'title2',
        'image',
        'description',
        'link',
        'is_active',
        'is_delete'
    ];
}
