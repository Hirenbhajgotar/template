<?php

namespace App\Http\Livewire;

use App\Models\Team;
use Livewire\Component;
use Livewire\WithPagination;

class TeamMaster extends Component
{
    use WithPagination;
    protected $paginationTheme = 'bootstrap';
    public $teamSearch = '';

    public function render()
    {
        return view('livewire.team-master',
            [
                'teams' => Team::where([['is_delete', '=', 0], ['is_active', '=', 1]])
                ->where(function($query) {
                    $query->orWhere('name', 'like', '%'.trim($this->teamSearch).'%')->orWhere('description', 'like', '%'.trim($this->teamSearch).'%')->orWhere('desination', 'like', '%'.trim($this->teamSearch).'%');
                })
                ->paginate(10)
            ]
        );
    }
    public function deleteRecord($banner_id)
    {
        // $banner = Banner::findOrFail($state_id);
        // $banner->delete();
        Team::whereId($banner_id)->update(['is_delete' => 1]);
        session()->flash('success', 'Record deleted succesfully');
    }

}
