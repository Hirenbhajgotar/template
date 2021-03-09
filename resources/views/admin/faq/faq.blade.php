@extends('admin/app')

@section('content')
<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">Galary</h1>

</div>
<div class="card shadow">
    <div class="card-header">
        <a href=" {{ route('create_galary') }} " class="btn btn-success btn-icon-split float-right">
            <span class="text">Add</span>
            <span class="icon text-white-50">
                <i class="icofont-plus"></i>
            </span>
        </a>
        <h5 class="card-title">Galary</h5>
    </div>
    <div class="card-body">
        <table class="table table-hover">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Title</th>
                    <th scope="col">Sort Description</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row">1</th>
                    <td>Mark</td>
                    <td>Otto</td>
                    <td>
                        <a href="{{ route('edit_blog') }}" class="btn btn-warning btn-sm">
                            {{-- <i class="fas fa-exclamation-triangle"></i> --}}
                            <i class="icofont-pen-alt-2"></i>
                        </a>
                        <a href="#" class="btn btn-danger btn-sm">
                            {{-- <i class="fas fa-trash"></i> --}}
                            <i class="icofont-trash"></i>
                        </a>
                    </td>
                </tr>

            </tbody>
        </table>
    </div>
</div>
@endsection