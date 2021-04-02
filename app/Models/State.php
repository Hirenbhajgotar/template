<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class State extends Model
{
    use HasFactory;
    protected $fillable = [
        'country_id', 'state_name', 'country_name'
    ];

    public function scopeSearch($query, $terms)
    {
        // dd($query);
        $terms = "%$terms%";
        $query->where(function($query) use ($terms) {
            $query->where('state_name', 'like', $terms);
        });
    }
}
