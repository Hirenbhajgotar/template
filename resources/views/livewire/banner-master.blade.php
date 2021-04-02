<div>
    {{-- Close your eyes. Count to one. That is how long forever feels. --}}
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th style="text-align:right" width="40%">
                            <form style="width: 95% !important;" class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                                <div class="form-group">
                                    <input type="text" style="width: 95% !important;" wire:model="bannerSearch" class="form-control bg-light border-0 small" placeholder="Search by Title/Description" aria-label="Search" aria-describedby="basic-addon2">
                                </div>
                            </form>
                        </th>
                    </tr>
                </thead>
            </table>
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col" width="12%">Title</th>
                        <th scope="col">Description</th>
                        <th scope="col" width="15%">Image</th>
                        <th scope="col" width="10%">Action</th>
                    </tr>
                </thead>
                <tbody>
                    @if ($baners->count() > 0)
                    @php
                    $i = $baners->firstItem()
                    @endphp
                    @foreach ($baners as $banner)
                    <tr>
                        <th scope="row">{{ $i }}</th>
                        <td>{{$banner->title}}</td>
                        <td>{{ strip_tags($banner->description) }}</td>
                        <td width="15%">
                            <img class="img-fluid" src="{{asset(env('STORAGE_DIR').env('BANNER_DIR').$banner->image)}}" alt="">
                        </td>
                        <td>
                            <x-update-btn :route="'edit_banner'" :id="$banner->id" />
                            <x-delete-btn :route="'delete_banner'" :id="$banner->id" />

                        </td>
                    </tr>
                    @php
                    $i++;
                    @endphp
                    @endforeach
                    {{ $baners->links() }}
                    @endif
                </tbody>
            </table>
        </div>
    </div>
</div>