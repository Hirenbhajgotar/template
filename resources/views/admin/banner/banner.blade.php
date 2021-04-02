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
        {{--
            <a href=" {{ route('create_banner') }} " class="btn btn-success btn-icon-split float-right">
        <span class="text">Add</span>
        <span class="icon text-white-50">
            <i class="icofont-plus"></i>
        </span>
        </a>
        --}}
        <x-add-btn :route="'create_banner'" />
        <h5 class="card-title">{{$heading}}</h5>
    </div>
    @livewire('banner-master')
</div>
@endsection