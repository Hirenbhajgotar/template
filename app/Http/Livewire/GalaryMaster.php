<?php

namespace App\Http\Livewire;

use App\Models\Galary;
use Livewire\Component;
use Livewire\WithPagination;

class GalaryMaster extends Component
{
    use WithPagination;
    protected $paginationTheme = 'bootstrap';
    public $galarySearch = '';

    public function render()
    {
        return view('livewire.galary-master', 
            [
                'galaries' => Galary::where([['is_delete', '=', 0], ['is_active', '=', 1]])
                ->where(function($query) {
                    $query->orWhere('title1', 'like', '%'.trim($this->galarySearch) . '%')->orWhere('description', 'like', '%'.trim($this->galarySearch) . '%');
                })
                ->paginate(10)
            ]
        );
    }
    public function deleteRecord($banner_id)
    {
        Galary::whereId($banner_id)->update(['is_delete' => 1]);
        session()->flash('success', 'Record deleted succesfully');
    }

}
