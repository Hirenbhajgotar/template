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
        <form action="{{ route('store_admin_type') }}" method="POST">
            @csrf
            <div class="row mb-3">
                <div class="col">
                    <div class="form-group">
                        <label for="exampleFormControlTextarea1">Type</label>
                        <input type="text" name="type" class="form-control" value="{{ old('type') }}" placeholder="Admin Type">
                        @error('type')
                        <p class="text-danger">{{ $message }}</p>
                        @enderror
                    </div>
                </div>
                <div class="col">
                    <div class="form-group">
                        <label for="exampleFormControlTextarea1">Name</label>
                        <input type="text" name="name" class="form-control" value="{{ old('name') }}" placeholder="Name">
                        @error('name')
                        <p class="text-danger">{{ $message }}</p>
                        @enderror
                    </div>
                </div>
            </div>
            <div class="row mb-3">
                <div class="col">
                    <div class="form-group">
                        <label for="exampleFormControlTextarea1">Email</label>
                        <input type="text" name="email" class="form-control" value="{{ old('email') }}" placeholder="Email">
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
                    <button type="submit" class="btn btn-success">Submit</button>
                </div>
            </div>
        </form>
    </div>
</div>

@endsection