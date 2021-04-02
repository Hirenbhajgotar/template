<?php

namespace App\Http\Livewire;

use App\Models\Country;
use App\Models\State;
use Livewire\Component;
use Livewire\WithPagination;
class StateMaster extends Component
{
    use WithPagination;
    protected $paginationTheme = 'bootstrap';
    public $stateSearch = "";
    public $country_id = null;
    public function render()
    {
        return view('livewire.state-master',
            [
                'states' => State::orderBy('country_id')
                ->when($this->country_id, function($query) {
                    $query->where('country_id', $this->country_id);
                })
                ->where([['state_name', 'like', '%'.trim($this->stateSearch).'%']])
                ->paginate(10),
                // 'states' => State::orderBy('country_id')->search($this->stateSearch)->paginate(10)

                'Countries' => Country::orderBy('id')->get(),
            ]    
        );
    }
    public function deleteRecord($state_id)
    {
        $state = State::findOrFail($state_id);
        $state->delete();
        session()->flash('success', 'Record deleted succesfully');
    }
    
}
