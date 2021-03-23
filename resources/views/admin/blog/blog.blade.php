@extends('admin/app')

@section('content')
<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">Blog</h1>

</div>
@if (Session::has('success'))
<x-alert-success />
@endif
<div class="card shadow">
    <div class="card-header">
        <x-add-btn :route="'create_blog'" />
        <h5 class="card-title">Blog</h5>
    </div>
    <div class="card-body">
        <table class="table table-hover">
            <caption>{{ $blogs->links() }}</caption>
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Title</th>
                    <th scope="col">Description</th>
                    <th scope="col" width="10%">Image</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                @if ($blogs->count() > 0)
                @php
                $i = $blogs->firstItem()
                @endphp
                @foreach ($blogs as $blog)
                <tr>
                    <th scope="row">{{ $i }}</th>
                    <td>{{$blog->title}}</td>
                    <td>{{ strip_tags($blog->description) }}</td>
                    <td>
                        <img src="{{ asset(env('STORAGE_DIR').env('BLOG_DIR').$blog->image) }}" class="img-fluid" alt="">
                    </td>
                    <td>
                        <x-update-btn :route="'edit_blog'" :id="$blog->id" />
                        <x-delete-btn :route="'delete_blog'" :id="$blog->id" />
                    </td>
                </tr>
                @php
                $i++;
                @endphp
                @endforeach
                @endif
            </tbody>
        </table>
    </div>
</div>
@endsection