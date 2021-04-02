@extends('admin/app')

@section('content')
<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">{{$heading}}</h1>

</div>

@if(session()->has('success'))
<x-alert-success />
@endif

<div class="card shadow">
    <div class="card-header">
        <x-add-btn :route="'create_state_master'" />
        <h5 class="card-title">{{$heading}}</h5>
    </div>
    
    @livewire('state-master')
</div>
@endsection