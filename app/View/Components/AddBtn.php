<?php

namespace App\View\Components;

use App\Http\Controllers\CheckPermisionController;
use Illuminate\View\Component;

class AddBtn extends Component
{
    protected $CheckPermisionObj;
    public $CheckPermision;
    public $route;
    public function __construct(CheckPermisionController $CheckPermisionObj, $route)
    {
        $this->route = $route;
        $this->CheckPermisionObj = $CheckPermisionObj;
        $this->CheckPermision = $this->CheckPermisionObj->check();
    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\Contracts\View\View|string
     */
    public function render()
    {
        return view('components.add-btn');
    }
}
