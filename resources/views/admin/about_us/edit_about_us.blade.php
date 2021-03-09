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
        <a href=" {{ route('about_us') }} " class="btn btn-success btn-icon-split float-right">
            <span class="text">Back</span>
            <span class="icon text-white-50">
                <i class="icofont-long-arrow-left"></i>
            </span>
        </a>
        <h5 class="card-title">Edit About Us</h5>
    </div>
    <div class="card-body">
        <form action="{{ route('update_aboute_us', $aboutUs->id) }}" method="POST" enctype="multipart/form-data">
            @csrf
            <div class="row mb-3">
                <div class="col">
                    <div class="form-group">
                        <label for="exampleFormControlTextarea1">Title</label>
                        <input type="text" name="title" id="title" value="{{old('title', $aboutUs->title)}}" class="form-control @error('title') is-invalid @enderror" placeholder="Enter Title">
                        @error('title')
                        <div id="mobile_noFeedback" class="invalid-feedback">
                            {{ $message }}
                        </div>
                        @enderror
                    </div>
                </div>
                <div class="col">
                    <div class="row">
                        <div class="col-md-8">
                            <div class="form-group">
                                <label for="exampleFormControlTextarea1">Image</label>
                                <div class="custom-file">
                                    <input type="file" name="image" class="custom-file-input @error('image') is-invalid @enderror" id="customFile">
                                    <label class="custom-file-label" for="customFile">Choose Image</label>
                                    @error('image')
                                    <div id="mobile_noFeedback" class="invalid-feedback">
                                        {{ $message }}
                                    </div>
                                    @enderror
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <img src="{{ asset(env('STORAGE_DIR').env('ABOUT_US_DIR').$aboutUs->image) }}" alt="" class="img-fluid img-thumbnail">
                        </div>
                    </div>
                </div>
            </div>
            <div class="row mb-3">
                <div class="col-12">
                    <div class="form-group ">
                        <label for="exampleFormControlTextarea1">Sort Description</label>
                        <textarea class="form-control" id="sort_description" name="sort_description"
                            rows="3" >{{old('title', $aboutUs->sort_description)}}</textarea>
                    </div>
                </div>
            </div>
            <div class="row mb-3">
                <div class="col-12">
                    <div class="form-group">
                        <label for="exampleFormControlTextarea1">Long Description</label>
                        <textarea class="form-control" name="long_description" id="long_description" rows="3">{{old('title', $aboutUs->long_description)}}</textarea>
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

<script>
    var log_description_editer = new FroalaEditor('#long_description')
    var sort_description_editer = new FroalaEditor('#sort_description')
</script>
@endsection