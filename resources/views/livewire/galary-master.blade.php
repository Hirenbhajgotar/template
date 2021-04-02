<div>
    {{-- A good traveler has no fixed plans and is not intent upon arriving. --}}
    <div class="card-body">
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
                                <input type="text" style="width: 95% !important;" wire:model="galarySearch" class="form-control bg-light border-0 small" placeholder="Search by Title/Description" aria-label="Search" aria-describedby="basic-addon2">
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
                    <th scope="col">Title</th>
                    <th scope="col">Sort Description</th>
                    <th scope="col" style="width: 10%">Image</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                @if($galaries->count() > 0)
                @php
                $i = $galaries->firstItem()
                @endphp
                @foreach ($galaries as $galary)
                <tr>
                    <th scope="row">{{$i}}</th>
                    <td>{{$galary->title1}}</td>
                    <td>{{strip_tags($galary->description)}}</td>
                    <td>
                        <img class="img-fluid" src="{{asset(env('STORAGE_DIR').env('GALARY_DIR').$galary->image)}}" alt="">
                    </td>
                    <td>
                        {{-- {{ route('edit_galary') }} --}}
                        <x-update-btn :route="'edit_galary'" :id="$galary->id" />
                        <x-delete-btn :route="'delete_galary'" :id="$galary->id" />

                    </td>
                </tr>
                @php
                $i++;
                @endphp
                @endforeach
                {{ $galaries->links() }}
                @endif

            </tbody>
        </table>
    </div>
</div>