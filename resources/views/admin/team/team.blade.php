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
        <x-add-btn :route="'create_team'" />
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
                        <x-update-btn :route="'edit_team'" :id="$team->id" />
                        <x-delete-btn :route="'delete_team'" :id="$team->id" />
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