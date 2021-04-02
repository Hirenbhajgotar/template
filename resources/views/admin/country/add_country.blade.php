@extends('admin/app')
@section('content')

<div class="card shadow">
    <div class="card-header">
        <a href=" {{ route('country_master') }} " class="btn btn-success btn-icon-split float-right">
            <span class="text">Back</span>
            <span class="icon text-white-50">
                <i class="icofont-long-arrow-left"></i>
            </span>
        </a>
        <h5 class="card-title">{{$heading}}</h5>
    </div>
    <div class="card-body">
        <form action="{{route('store_country_master')}}" method="POST">
            @csrf
            <div class="row mb-3">
                <div class="col">
                    <div class="form-group">
                        <label for="exampleFormControlTextarea1">Name</label>
                        <input type="text" name="country_name" id="country_name" value="{{old('country_name')}}" class="form-control" placeholder="Counry Name">
                        @error('country_name')
                        <div class="i-error">
                            {{ $message }}
                        </div>
                        @enderror
                    </div>
                </div>

            </div>
            <div class="row mb-3">
                <div class="col">
                    <div class="form-group">
                        <label for="exampleFormControlTextarea1">Alpha 2 Code</label>
                        <input type="text" name="alpha_2_code" id="alpha_2_code" value="{{old('alpha_2_code')}}" class="form-control" placeholder="Alphp 2 Code (i.e. IN)">
                    </div>
                </div>
                <div class="col">
                    <div class="form-group">
                        <label for="exampleFormControlTextarea1">Alpha 3 Code</label>
                        <input type="text" name="alpha_3_code" id="alpha_3_code" value="{{old('alpha_3_code')}}" class="form-control" placeholder="Alphp 3 Code (i.e. IND)">
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

<script>
    var description_editer = new FroalaEditor('#description')
</script>
@endsection