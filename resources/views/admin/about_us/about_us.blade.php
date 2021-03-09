@extends('admin/app')

@section('content')
<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
    {{-- <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
            class="fas fa-download fa-sm text-white-50"></i> Generate Report</a> --}}
</div>
    @if (Session::has('success'))
    <x-alert-success />
    @endif
    <div class="card shadow">
        <div class="card-header">
            <a href=" {{ route('create_aboute_us') }} " class="btn btn-success btn-icon-split float-right">
                <span class="text">Add</span>
                <span class="icon text-white-50">
                    <i class="icofont-plus"></i>
                </span>
            </a>
            <h5 class="card-title">About Us</h5>
        </div>
        
        <div class="card-body">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Title</th>
                        <th scope="col">Sort Description</th>
                        <th scope="col">Image</th>
                        <th scope="col">Action</th>
                    </tr>
                </thead>
                <tbody>
                    @if ($aboutUs)
                        @php
                            $i = 1;
                        @endphp
                        @foreach ($aboutUs as $item)
                            <tr>
                                <th scope="row">{{ $i }}</th>
                                <td>{{ $item->title }}</td>
                                <td>{{ strip_tags($item->sort_description) }}</td>
                                <td>
                                    <img src="{{ asset(env('STORAGE_DIR').env('ABOUT_US_DIR').$item->image) }}" alt="" class="img-fluid">
                                </td>
                                <td>
                                    <a href="{{ route('edit_aboute_us', $item->id) }}" class="btn btn-warning btn-sm">
                                        {{-- <i class="fas fa-exclamation-triangle"></i> --}}
                                        <i class="icofont-pen-alt-2"></i>
                                    </a>
                                    {{-- <a href="#" class="btn btn-danger btn-sm">
                                        <i class="icofont-trash"></i>
                                    </a> --}}
                                </td>
                            </tr>
                            @php
                            $i++
                            @endphp
                        @endforeach
                    @endif
                </tbody>
            </table>
        </div>
    </div>
@endsection