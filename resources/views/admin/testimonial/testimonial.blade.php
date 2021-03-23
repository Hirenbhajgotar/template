@extends('admin/app')

@section('content')
<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">{{$heading}}</h1>

</div>
@if (Session::has('success'))
<x-alert-success />
@endif
<div class="card shadow">
    <div class="card-header">
        <x-add-btn :route="'create_testimonial'" />
        <h5 class="card-title">{{$heading}}</h5>
    </div>
    <div class="card-body">
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
@endsection