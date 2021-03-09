@extends('admin/app')
@section('content')
<link href="https://cdn.jsdelivr.net/npm/froala-editor@3.1.0/css/froala_editor.pkgd.min.css" rel="stylesheet"
    type="text/css" />
{{-- <link src="{{ asset('asset/froala_editor_3.2.5/css/froala_editor.min.css') }}" />
<link src="{{ asset('asset/froala_editor_3.2.5/css/froala_style.min.css') }}" /> --}}
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/froala-editor@3.1.0/js/froala_editor.pkgd.min.js">
</script>

<div class="card shadow">
    <div class="card-header">
        <a href=" {{ route('contect_us') }} " class="btn btn-success btn-icon-split float-right">
            <span class="text">Back</span>
            <span class="icon text-white-50">
                <i class="icofont-long-arrow-left"></i>
            </span>
        </a>
        <h5 class="card-title">Add Contect Us</h5>
    </div>
    <div class="card-body">
        <form action="{{ route('store_contect_us') }}" method="POST">
            @csrf
            <div class="row mb-3">
                <div class="col">
                    <div class="form-group">
                        <label for="exampleFormControlTextarea1">Email</label>
                        <input type="email" name="email" id="email" value="{{ old('email') }}" class="form-control @error('email') is-invalid @enderror" placeholder="First name">
                        @error('email')
                        {{-- <p class="text-danger">{{ $message }}</p> --}}
                        <div id="mobile_noFeedback" class="invalid-feedback">
                            {{ $message }}
                        </div>
                        @enderror
                    </div>
                </div>
                <div class="col">
                    <div class="form-group">
                        <label for="mobile_no">Mobile</label>
                        <input type="text" name="mobile_no" id="mobile_no" value="{{ old('mobile_no') }}" class="form-control @error('mobile_no') is-invalid @enderror" placeholder="Enter Mobile">
                        @error('mobile_no')
                        {{-- <p class="text-danger">{{ $message }}</p> --}}
                        <div id="mobile_noFeedback" class="invalid-feedback">
                            {{ $message }}
                        </div>
                        @enderror
                    </div>
                </div>
            </div>
            <div class="row mb-3">
                <div class="col">
                    <div class="form-group">
                        <label for="exampleFormControlTextarea1">Facebook Link</label>
                        <input type="text" name="fb_link" id="fb_link" value="{{ old('fb_link') }}" class="form-control" placeholder="Facebook Link">
                    </div>
                </div>
                <div class="col">
                    <div class="form-group">
                        <label for="exampleFormControlTextarea1">Instagram Link</label>
                        <input type="text" name="insta_link" id="insta_link" value="{{ old('insta_link') }}" class="form-control" placeholder="Instagram Link">
                    </div>
                </div>
            </div>
            <div class="row mb-3">
                <div class="col">
                    <div class="form-group">
                        <label for="exampleFormControlTextarea1">Twitter Link</label>
                        <input type="text" name="twitter_link" id="twitter_link" value="{{ old('twitter_link') }}" class="form-control" placeholder="Twitter Link">
                    </div>
                </div>
                <div class="col">
                    <div class="form-group">
                        <label for="exampleFormControlTextarea1">LinkedIn Link</label>
                        <input type="text" name="linkedin_link" id="linkedin_link" value="{{ old('linkedin_link') }}" class="form-control" placeholder="LinkedIn Link">
                    </div>
                </div>
            </div>
            <div class="row mb-3">
                <div class="col-12">
                    <div class="form-group ">
                        <label for="exampleFormControlTextarea1">Map</label>
                        <textarea class="form-control" id="map" name="map" 
                            rows="3">{{ old('map') }}</textarea>
                    </div>
                </div>
            </div>
            <div class="row mb-3">
                <div class="col-12">
                    <div class="form-group ">
                        <label for="exampleFormControlTextarea1">Address</label>
                        <textarea class="form-control" id="address" name="address"
                            rows="3">{{ old('address') }}</textarea>
                    </div>
                </div>
            </div>
            <div class="row mb-3">
                <div class="col-12">
                    <div class="form-group">
                        <label for="exampleFormControlTextarea1">Description</label>
                        <textarea class="form-control" name="description" id="description" rows="3">{{ old('description') }}</textarea>
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
        var address_editer = new FroalaEditor('#address')
</script>
@endsection