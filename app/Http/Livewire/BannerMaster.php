<?php

namespace App\Http\Livewire;

use App\Models\Banner;
use Livewire\Component;
use Livewire\WithPagination;

class BannerMaster extends Component
{
    use WithPagination;
    protected $paginationTheme = 'bootstrap';
    public $bannerSearch = "";

    public function render()
    {
        // $this->bannerSearch = "%" . $this->bannerSearch . "%";
        return view('livewire.banner-master', 
            [
                // 'baners' => Banner::where([['is_delete', '=', 0], ['is_active', '=', 1]])->Where([['title', 'like', trim($bannerSearch)]])->orWhere([['description', 'like', trim($bannerSearch)]])->paginate(10)
                'baners' => Banner::where([['is_delete', '=', 0], ['is_active', '=', 1]])
                ->Where( function($query) {
                    $query->orWhere([['title', 'like', '%'.trim($this->bannerSearch) . '%']])->orWhere([['description', 'like', '%' . trim($this->bannerSearch) . '%']]);
                })
                ->paginate(10)
            ]
        );
    }

    public function deleteRecord($banner_id)
    {
        // $banner = Banner::findOrFail($state_id);
        // $banner->delete();
        Banner::whereId($banner_id)->update(['is_delete' => 1]);
        session()->flash('success', 'Record deleted succesfully');
    }


}
