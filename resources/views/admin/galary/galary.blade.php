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
    @livewire('galary-master')
</div>
@endsection