@extends('admin/app')
@section('content')
<div class="card shadow">
    <div class="card-header">
        <a href=" {{ route('admin_type') }} " class="btn btn-success btn-icon-split float-right">
            <span class="text">Back</span>
            <span class="icon text-white-50">
                <i class="icofont-long-arrow-left"></i>
            </span>
        </a>
        <h5 class="card-title">{{$heading}}</h5>
    </div>
    <div class="card-body">
        <form action="{{ route('update_admin_type', $adminType->id) }}" method="POST" enctype="multipart/form-data">
            @csrf
            <div class="row mb-3">
                <div class="col">
                    <div class="form-group">
                        <label for="type">Type</label>
                        <input type="text" name="type" id="type" value="{{old('type', $adminType->type)}}" class="form-control @error('type') is-invalid @enderror" placeholder="Admin Type">
                        @error('type')
                        <div id="mobile_noFeedback" class="invalid-feedback">
                            {{ $message }}
                        </div>
                        @enderror
                    </div>
                </div>
                <div class="col">
                    <div class="form-group">
                        <label for="name">name</label>
                        <input name="name" id="name" value="{{old('name', $adminType->name)}}" class="form-control @error('name') is-invalid @enderror" placeholder="Name">
                    </div>
                </div>
            </div>
            <div class="row mb-3">
                <div class="col">
                    <div class="form-group">
                        <label for="exampleFormControlTextarea1">Email</label>
                        <input type="text" name="email" class="form-control" value="{{ old('email', $users->email) }}" placeholder="Email">
                        @error('email')
                        <p class="text-danger">{{ $message }}</p>
                        @enderror
                    </div>
                </div>
                <div class="col">
                    <div class="form-group">
                        <label for="exampleFormControlTextarea1">Password</label>
                        <input type="password" name="password" class="form-control" value="{{ old('password') }}" placeholder="Password">
                        @error('password')
                        <p class="text-danger">{{ $message }}</p>
                        @enderror
                    </div>
                </div>
            </div>
            <div class="row mb-3">
                <div class="col-12">
                    <button type="submit" class="btn btn-success">Update</button>
                </div>
            </div>
        </form>
    </div>
</div>
@endsection