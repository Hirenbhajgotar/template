@extends('admin/app')

@section('content')
<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">{{$heading}}</h1>
    {{-- <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
            class="fas fa-download fa-sm text-white-50"></i> Generate Report</a> --}}
</div>
@if (Session::has('success'))
<x-alert-success />
@endif
<div class="card shadow">
    <div class="card-header">
        <a href=" {{ route('create_admin_type') }} " class="btn btn-success btn-icon-split float-right">
            <span class="text">Add</span>
            <span class="icon text-white-50">
                <i class="icofont-plus"></i>
            </span>
        </a>
        <h5 class="card-title">{{$heading}}</h5>
    </div>

    <div class="card-body">
        <table class="table table-hover">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Type</th>
                    <th scope="col">Name</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                @if ($adminTypes)
                @php
                $i = 1;
                @endphp
                @foreach ($adminTypes as $item)

                <tr>
                    <th scope="row">{{ $i }}</th>
                    <td>{{ $item->type }}</td>
                    <td>{{ $item->name }}</td>
                    <td>
                        @if($rights->update == 1)
                        <a href="{{ route('edit_admin_type', $item->id) }}" class="btn btn-warning btn-sm">
                            <i class="icofont-pen-alt-2"></i>
                        </a>
                        @endif
                        @if($item->id != 1) {{-- delete btn not visible of super admin --}}
                            @if($rights->delete == 1)
                            <a href="{{route('delete_admin_type', $item->id)}}" class="btn btn-danger btn-sm">
                                <i class="icofont-trash"></i>
                            </a>
                            @endif
                        @endif
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