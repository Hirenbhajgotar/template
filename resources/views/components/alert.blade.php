<div>
    @if(Session::get('success'))
    <div class="alert alert-success alert-dismissible fade show" role="alert">
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
        <strong class="font-bold">Success: </strong>
        <span class="mx-2">{{ Session::get('success') }} </span>
    </div>
    @elseif(Session::get('error'))
    <div class="alert alert-danger alert-dismissible fade show" role="alert">
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
        <strong class="font-bold">Success: </strong>
        <span class="mx-2">{{ Session::get('error') }} </span>
    </div>
    @endif


</div>