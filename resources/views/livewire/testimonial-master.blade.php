<div>
    {{-- Nothing in the world is as soft and yielding as water. --}}
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
                                <input type="text" style="width: 95% !important;" wire:model="testimonialSearch" class="form-control bg-light border-0 small" placeholder="Search by Name/Description/Designation" aria-label="Search" aria-describedby="basic-addon2">
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
                    <th scope="col">Name</th>
                    <th scope="col">Description</th>
                    <th scope="col">Designation</th>
                    <th scope="col" width="10%">Image</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                @if($testimonials->count() > 0)
                @php
                $i = $testimonials->firstItem()
                @endphp
                @foreach ($testimonials as $testimonial)
                <tr>
                    <th scope="row">{{$i}}</th>
                    <td>{{$testimonial->name}}</td>
                    <td>{{ strip_tags($testimonial->description) }}</td>
                    <td>{{$testimonial->designation}}</td>
                    <td>
                        <img class="img-fluid" src="{{asset(env('STORAGE_DIR').env('TESTIMONIAL_DIR').$testimonial->image)}}" alt="">
                    </td>
                    <td>
                        <x-update-btn :route="'edit_testimonial'" :id="$testimonial->id" />
                        <x-delete-btn :route="'delete_testimonial'" :id="$testimonial->id" />
                    </td>
                </tr>
                @php
                $i++;
                @endphp
                @endforeach
                {{ $testimonials->links() }}
                @else
                <tr>
                    <td colspan="4" align="center">No Records Available</td>
                </tr>
                @endif
            </tbody>
        </table>
    </div>
</div>