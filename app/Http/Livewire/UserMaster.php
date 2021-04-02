<?php

namespace App\Http\Livewire;

use App\Models\User;
use Livewire\Component;
use Livewire\WithPagination;

class UserMaster extends Component
{
    use WithPagination;
    protected $paginationTheme = 'bootstrap';
    public $userSearch = '';
    
    public function render()
    {
        return view('livewire.user-master',
            [
                'users' => User::where('name', 'like', '%'. trim($this->userSearch) .'%' )->orWhere('email', 'like', '%' . trim($this->userSearch) .'%' )->paginate(10)
            ]
        );
    }
}
