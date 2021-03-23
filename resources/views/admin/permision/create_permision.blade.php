@extends('admin/app')
@section('content')
<link href="https://cdn.jsdelivr.net/npm/froala-editor@3.1.0/css/froala_editor.pkgd.min.css" rel="stylesheet" type="text/css" />
{{-- <link src="{{ asset('asset/froala_editor_3.2.5/css/froala_editor.min.css') }}" />
<link src="{{ asset('asset/froala_editor_3.2.5/css/froala_style.min.css') }}" /> --}}
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/froala-editor@3.1.0/js/froala_editor.pkgd.min.js">
</script>

<div class="card shadow">
    <div class="card-header">
        <a href=" {{ route('permisions') }} " class="btn btn-success btn-icon-split float-right">
            <span class="text">Back</span>
            <span class="icon text-white-50">
                <i class="icofont-long-arrow-left"></i>
            </span>
        </a>
        <h5 class="card-title">{{$heading}}</h5>
    </div>
    <div class="card-body">
        <table class="table">
            <tbody>
                @foreach($admin_types as $item)
                <?php
                $right = \App\Models\Permision::where([['admin_type', '=', $item->id]])->first();
                ?>
                <form action="{{ route('update_permisions', $right->id) }}" method="POST">
                    @csrf
                    <tr>
                        <th scope="row">{{ $item->name }}
                            <input type="hidden" name="admin_type" value="{{ $item->id }}">
                        </th>
                        <td>
                            <div class="form-check">
                                <input class="form-check-input" name="create" type="checkbox" {{ $right->create ? "checked" : "" }}  id="insert_{{$item->id}}">
                                <label class="form-check-label" for="insert_{{$item->id}}">
                                    Insert
                                </label>
                            </div>
                        </td>
                        <td>
                            <div class="form-check">
                                <input class="form-check-input" name="view" type="checkbox" {{ $right->view ? "checked" : "" }} id="view_{{$item->id}}">
                                <label class="form-check-label" for="view_{{$item->id}}">
                                    View
                                </label>
                            </div>
                        </td>
                        <td>
                            <div class="form-check">
                                <input class="form-check-input" name="update" type="checkbox"  id="update_{{$item->id}}" {{ $right->update ? "checked" : "" }}>
                                <label class="form-check-label" for="update_{{$item->id}}">
                                    Update
                                </label>
                            </div>
                        </td>
                        <td>
                            <div class="form-check">
                                <input class="form-check-input" name="delete" type="checkbox"  id="delete_{{$item->id}}" {{ $right->delete ? "checked" : "" }}>
                                <label class="form-check-label" for="delete_{{$item->id}}">
                                    Delete
                                </label>
                            </div>
                        </td>
                        <td>
                            <!-- <div class="row mb-3">
                                    <div class="col-12">
                                    </div>
                                </div> -->
                            <button type="submit" class="btn btn-success">Update</button>
                        </td>
                    </tr>
                </form>
                @endforeach
            </tbody>
        </table>


    </div>
</div>

<script>
    var log_description_editer = new FroalaEditor('#long_description')
    var sort_description_editer = new FroalaEditor('#sort_description')
</script>
@endsection