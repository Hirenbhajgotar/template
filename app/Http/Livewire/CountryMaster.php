<?php

namespace App\Http\Livewire;

use App\Models\Country;
use Livewire\Component;
use Livewire\WithPagination;

class CountryMaster extends Component
{
    use WithPagination;
    protected $paginationTheme = 'bootstrap';
    public $countrySearch = '';

    public function render()
    {
        $countrySearch = "%". $this->countrySearch . "%";
        return view('livewire.country-master', 
            [
                'countries' => Country::where([['country_name', 'like', $countrySearch]])->orWhere([['alpha_2_code', 'like', $countrySearch]])->paginate(10)
            ]
        );
    }
}
