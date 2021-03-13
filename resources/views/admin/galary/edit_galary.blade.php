@extends('admin/app')
@section('content')
<link href="https://cdn.jsdelivr.net/npm/froala-editor@3.1.0/css/froala_editor.pkgd.min.css" rel="stylesheet" type="text/css" />
{{-- <link src="{{ asset('asset/froala_editor_3.2.5/css/froala_editor.min.css') }}" />
<link src="{{ asset('asset/froala_editor_3.2.5/css/froala_style.min.css') }}" /> --}}
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/froala-editor@3.1.0/js/froala_editor.pkgd.min.js">
</script>

<div class="card shadow">
    <div class="card-header">
        <a href=" {{ route('galary') }} " class="btn btn-success btn-icon-split float-right">
            <span class="text">Back</span>
            <span class="icon text-white-50">
                <i class="icofont-long-arrow-left"></i>
            </span>
        </a>
        <h5 class="card-title">{{$heading}}</h5>
    </div>
    <div class="card-body">
        <form action="{{ route('update_galary', $galary->id) }}" method="POST" enctype="multipart/form-data">
            @csrf
            <div class="row mb-3">
                <div class="col">
                    <div class="form-group">
                        <label for="title1">Title 1</label>
                        <input type="text" class="form-control" name="title1" id="title1" value="{{ old('title1', $galary->title1) }}" placeholder="Title 1">
                        @error('title1')
                        <div id="mobile_noFeedback__" class="i-error">
                            {{ $message }}
                        </div>
                        @enderror
                    </div>
                </div>
                <div class="col">
                    <div class="row">
                        <div class="col-md-8">
                            <div class="form-group">
                                <label for="image">Image</label>
                                <div class="custom-file">
                                    <input type="file" class="custom-file-input" name="image" id="image">
                                    <label class="custom-file-label" for="image">Choose Image</label>
                                    @error('image')
                                    <div id="mobile_noFeedback" class="i-error">
                                        {{ $message }}
                                    </div>
                                    @enderror
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <img src="{{ asset(env('STORAGE_DIR').env('GALARY_DIR').$galary->image) }}" alt="" class="img-fluid img-thumbnail">
                        </div>
                    </div>
                </div>
            </div>
            <div class="row mb-3">
                <div class="col">
                    <div class="form-group">
                        <label for="title2">Title 2</label>
                        <input type="text" class="form-control" name="title2" id="title2" value="{{ old('title2', $galary->title2) }}" placeholder="Title 2">
                    </div>
                </div>
                <div class="col">
                    <div class="form-group">
                        <label for="link">Link</label>
                        <input type="text" class="form-control" name="link" id="link" value="{{ old('link', $galary->link) }}" placeholder="Link">
                    </div>
                </div>
            </div>
            <div class="row mb-3">
                <div class="col-12">
                    <div class="form-group ">
                        <label for="description">Description</label>
                        <textarea class="form-control" id="description" name="description" value="{{ old('discription', $galary->discription) }}" rows="3"></textarea>
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
    var log_description_editer = new FroalaEditor('#log_description')
    var sort_description_editer = new FroalaEditor('#sort_description')
</script>
@endsection