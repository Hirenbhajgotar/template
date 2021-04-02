<?php

namespace App\Http\Livewire;

use App\Models\Testimonial;
use Livewire\Component;
use Livewire\WithPagination;

class TestimonialMaster extends Component
{
    use WithPagination;
    protected $paginationTheme = 'bootstrap';
    public $testimonialSearch = '';

    public function render()
    {
        return view('livewire.testimonial-master', 
            [
                'testimonials' => Testimonial::where([['is_delete', '=', 0], ['is_active', '=', 1]])
                ->where(function($query) {
                    $query->orWhere('name', 'like', '%'.trim($this->testimonialSearch).'%')->orWhere('description', 'like', '%'.trim($this->testimonialSearch).'%')->orWhere('designation', 'like', '%'.trim($this->testimonialSearch).'%');
                })
                ->paginate(10)
            ]
        );
    }
    public function deleteRecord($banner_id)
    {
        // $banner = Banner::findOrFail($state_id);
        // $banner->delete();
        Testimonial::whereId($banner_id)->update(['is_delete' => 1]);
        session()->flash('success', 'Record deleted succesfully');
    }

}
