<div>
    {{-- To attain knowledge, add things every day; To attain wisdom, subtract things every day --}}
    <div class="card-body">
        <table class="table table-hover">
            <thead>
                <tr>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th style="text-align:right" width="40%">
                        <form style="width: 95% !important;" class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                            <div class="form-group">
                                <input type="text" style="width: 95% !important;" wire:model="blogSearch" class="form-control bg-light border-0 small" placeholder="Search by Title/Description" aria-label="Search" aria-describedby="basic-addon2">
                            </div>
                        </form>
                    </th>
                </tr>
            </thead>
        </table>
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