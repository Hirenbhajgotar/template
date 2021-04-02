@extends('admin/app')
@section('content')

<div class="card shadow">
    <div class="card-header">
        <a href=" {{ route('state_master') }} " class="btn btn-success btn-icon-split float-right">
            <span class="text">Back</span>
            <span class="icon text-white-50">
                <i class="icofont-long-arrow-left"></i>
            </span>
        </a>
        <h5 class="card-title">{{$heading}}</h5>
    </div>
    <div class="card-body">
        <form action="{{route('update_state_master', $state->id)}}" method="POST">
            @csrf
            <div class="row mb-3">
                <div class="col">
                    <div class="form-group">
                        <label for="exampleFormControlTextarea1">Country</label>
                        <select name="country_id" id="country_id" class="form-control">
                            <option value="">Select Country</option>
                            @foreach($countries as $country)
                            <option {{$state->country_id == $country->id ? 'selected' : ''}} value="{{$country->id}}">{{$country->country_name}}</option>
                            @endforeach
                        </select>
                        @error('country_id')
                        <div class="i-error">
                            {{ $message }}
                        </div>
                        @enderror
                    </div>
                </div>
                <div class="col">
                    <div class="form-group">
                        <label for="state">State</label>

                        <input type="text" name="state_name" id="state_name" value="{{ old('state_name', $state->state_name) }}" class="form-control" placeholder="Enter State Name">
                        @error('country_id')
                        <div class="i-error">
                            {{ $message }}
                        </div>
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