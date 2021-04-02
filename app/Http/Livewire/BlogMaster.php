<?php

namespace App\Http\Livewire;

use App\Models\Blog;
use Livewire\Component;
use Livewire\WithPagination;

class BlogMaster extends Component
{
    use WithPagination;
    protected $paginationTheme = 'bootstrap';
    public $blogSearch = '';

    public function render()
    {
        return view('livewire.blog-master',
            [
                'blogs' => Blog::where([['is_delete', '=', 0], ['is_active', '=', 1]])
                ->where(function($query) {
                    $query->orWhere('title', 'like', '%' . trim($this->blogSearch) . '%')->orWhere('description', 'like', '%' . trim($this->blogSearch) . '%');
                })
                ->paginate(2)
            ]
        );
    }
    public function deleteRecord($banner_id)
    {
        // $banner = Banner::findOrFail($state_id);
        // $banner->delete();
        Blog::whereId($banner_id)->update(['is_delete' => 1]);
        session()->flash('success', 'Record deleted succesfully');
    }

}
