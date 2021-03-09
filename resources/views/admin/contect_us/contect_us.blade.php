@extends('admin/app')

@section('content')
<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">Contect Us</h1>
    
</div>
@if (Session::has('success'))
    <x-alert-success />
@endif
<div class="card shadow">
    <div class="card-header">
        <a href=" {{ route('create_contect_us') }} " class="btn btn-success btn-icon-split float-right">
            <span class="text">Add</span>
            <span class="icon text-white-50">
                <i class="icofont-plus"></i>
            </span>
        </a>
        <h5 class="card-title">Contect Us</h5>
    </div>
    <div class="card-body">
        <table class="table table-hover">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Email</th>
                    <th scope="col">Mobile</th>
                    <th scope="col">Address</th>
                    <th scope="col">Description</th>
                </tr>
            </thead>
            <tbody>
                @php
                    $i = 0
                @endphp
                @foreach ($contactUs as $item)
                    @php
                        $i++
                    @endphp
                    <tr>
                        <th scope="row">{{ $i }}</th>
                        <td> {{ $item->email }} </td>
                        <td>{{ $item->mobile_no }}</td>
                        <td>{{ $item->address }}</td>
                        <td>{{ $item->description }}</td>
                        <td>
                            <a href="{{ route('edit_contect_us', $item->id) }}" class="btn btn-warning btn-sm">
                                <i class="icofont-pencil-alt-1"></i>
                            </a>
                            {{-- <a href="#" class="btn btn-danger btn-sm">
                                <i class="icofont-trash"></i>
                            </a> --}}
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>
@endsection