    <!-- Waste no more time arguing what a good man should be, be one. - Marcus Aurelius -->
    @if($CheckPermision->create == 1)
    <a href=" {{ route($route) }} " class="btn btn-success btn-icon-split float-right">
        <span class="text">Add</span>
        <span class="icon text-white-50">
            <i class="icofont-plus"></i>
        </span>
    </a>
    @endif
