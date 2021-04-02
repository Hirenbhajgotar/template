<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Country extends Model
{
    use HasFactory;
    protected $fillable = [
        'country_name', 'calling_code', 'lat', 'lng', 'timezones', 'currencie_code', 'currencie_code_name', 'country_flag', 'alpha_2_code', 'alpha_3_code'
    ];
}
