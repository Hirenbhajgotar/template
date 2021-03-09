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
        <a href=" {{ route('blog') }} " class="btn btn-success btn-icon-split float-right">
            <span class="text">Back</span>
            <span class="icon text-white-50">
                <i class="icofont-long-arrow-left"></i>
            </span>
        </a>
        <h5 class="card-title">Edit Blog</h5>
    </div>
    <div class="card-body">
        <form action="{{ route('update_blog', $blog->id) }}" method="POST" enctype="multipart/form-data">
            @csrf
            <div class="row mb-3">
                <div class="col">
                    <div class="form-group">
                        <label for="exampleFormControlTextarea1">Title</label>
                        <input type="text" name="title" id="title" value="{{ old('title', $blog->title) }}"
                            class="form-control @error('title') is-invalid @enderror" placeholder="Title">
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
                                    <input type="file" name="image" class="custom-file-input" id="customFile">
                                    <label class="custom-file-label" for="customFile">Choose Image</label>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <img src="{{ asset(env('STORAGE_DIR').env('BLOG_DIR').$blog->image) }}" alt="Blog Image"
                                class="img-fluid img-thumbnail">
                        </div>
                    </div>

                </div>
            </div>
            <div class="row mb-3">
                <div class="col-12">
                    <div class="form-group ">
                        <label for="exampleFormControlTextarea1">Sort Description</label>
                        <textarea class="form-control @error('description') is-invalid @enderror" id="description"
                            name="description" rows="3">{{ old('title', $blog->description) }}</textarea>
                        @error('description')
                        <div id="mobile_noFeedback" class="invalid-feedback">
                            {{ $message }}
                        </div>
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

<script>
    var log_description_editer = new FroalaEditor('#description')
</script>
@endsection