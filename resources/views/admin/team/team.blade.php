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
        <a href=" {{ route('create_team') }} " class="btn btn-success btn-icon-split float-right">
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
                    <th scope="col">Name</th>
                    <th scope="col">Description</th>
                    <th scope="col">Designation</th>
                    <th scope="col" width="10%">Image</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                @if($teams->count() > 0)
                @php
                $i = $teams->firstItem()
                @endphp
                @foreach ($teams as $team)
                <tr>
                    <th scope="row">{{$i}}</th>
                    <td>{{$team->name}}</td>
                    <td>{{$team->description}}</td>
                    <td>{{$team->designation}}</td>
                    <td>
                        <img class="img-fluid" src="{{asset(env('STORAGE_DIR').env('TEAM_DIR').$team->image)}}" alt="">
                    </td>
                    <td>
                        <a href="{{route('edit_team', $team->id)}}" class="btn btn-warning btn-sm">
                            {{-- <i class="fas fa-exclamation-triangle"></i> --}}
                            <i class="icofont-pen-alt-2"></i>
                        </a>
                        <a href="{{route('delete_team', $team->id)}}" class="btn btn-danger btn-sm">
                            {{-- <i class="fas fa-trash"></i> --}}
                            <i class="icofont-trash"></i>
                        </a>
                    </td>
                </tr>
                @php
                $i++;
                @endphp
                @endforeach
                {{ $teams->links() }}
                @else
                <tr>
                    <td colspan="6" align="center">No Record Available</td>
                </tr>
                @endif
            </tbody>
        </table>
    </div>
</div>
@endsection