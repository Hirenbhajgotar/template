@extends('admin/app')

@section('content')
<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">Galary</h1>

</div>
@if (Session::has('success'))
<x-alert-success />
@endif
<div class="card shadow">
    <div class="card-header">
        <a href=" {{ route('create_galary') }} " class="btn btn-success btn-icon-split float-right">
            <span class="text">Add</span>
            <span class="icon text-white-50">
                <i class="icofont-plus"></i>
            </span>
        </a>
        <h5 class="card-title">Galary</h5>
    </div>
    <div class="card-body">
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
                    <td>{{$galary->description}}</td>
                    <td>
                        <img class="img-fluid" src="{{asset(env('STORAGE_DIR').env('GALARY_DIR').$galary->image)}}" alt="">
                    </td>
                    <td>
                        {{-- {{ route('edit_galary') }} --}}
                        <a href="{{ route('edit_galary', $galary->id) }}" class="btn btn-warning btn-sm">
                            {{-- <i class="fas fa-exclamation-triangle"></i> --}}
                            <i class="icofont-pen-alt-2"></i>
                        </a>
                        <a href="{{ route('delete_galary', $galary->id) }}" class="btn btn-danger btn-sm">
                            {{-- <i class="fas fa-trash"></i> --}}
                            <i class="icofont-trash"></i>
                        </a>
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
@endsection