<?php

namespace App\View\Components;

use App\Http\Controllers\CheckPermisionController;
use Illuminate\View\Component;

class DeleteBtn extends Component
{
    public $route;
    public $id;
    protected  $CheckPermisionObj;
    public $CheckPermision;
    public function __construct(CheckPermisionController $CheckPermisionObj, $route, $id)
    {
        $this->route             = $route;
        $this->id                = $id;
        $this->CheckPermisionObj = $CheckPermisionObj;
        $this->CheckPermision    = $this->CheckPermisionObj->check();
    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\Contracts\View\View|string
     */
    public function render()
    {
        return view('components.delete-btn');
    }
}
