@extends('admin/app')

@section('content')
<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">Banner</h1>

</div>
@if (Session::has('success'))
<x-alert-success />
@endif

<div class="card shadow">
    <div class="card-header">
        {{--
            <a href=" {{ route('create_banner') }} " class="btn btn-success btn-icon-split float-right">
        <span class="text">Add</span>
        <span class="icon text-white-50">
            <i class="icofont-plus"></i>
        </span>
        </a>
        --}}
        <x-add-btn :route="'create_banner'" />
        <h5 class="card-title">Banner</h5>
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col" width="12%">Title</th>
                        <th scope="col">Description</th>
                        <th scope="col" width="25%">Image</th>
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
                        <td>
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
@endsection