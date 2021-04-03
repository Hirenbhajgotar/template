<div>
    @if (session()->has('notLogedIn'))
    <div aria-live="polite" aria-atomic="true" style="position: relative;">
        <div class="toast" id="toast" role="alert" data-delay="50000" style="position: absolute; top: 6rem; right: 1rem; z-index: 999; min-width: 20rem;" aria-live="assertive" aria-atomic="true">
            <div class="toast-header">
                <img src="..." class="rounded mr-2" alt="...">
                <strong class="mr-auto">Service.com</strong>
                {{-- <small>11 mins ago</small> --}}
                <button type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="toast-body">
                {{-- {{ session('notLogedIn') }} --}}
                <p style="font-size: 17px;">You have to <a data-dismiss="toast" href="javascript:void(0)" data-toggle="modal" data-target="#loginModal">Login</a>
                    first !</p>
            </div>
        </div>
    </div>

    {{ session()->forget('notLogedIn') }}
    @endif
</div>