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
        <x-add-btn :route="'create_galary'" />
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
@endsection