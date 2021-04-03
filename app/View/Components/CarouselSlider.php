<?php

namespace App\View\Components;

use App\Models\Banner;
use Illuminate\View\Component;

class CarouselSlider extends Component
{
    /**
     * Create a new component instance.
     *
     * @return void
     */
    public $banners;
    public function __construct()
    {
        $this->banners = Banner::all();
        // dd($this->banners);
    }

    public function render()
    {
        return view('components.carousel-slider');
    }
}
