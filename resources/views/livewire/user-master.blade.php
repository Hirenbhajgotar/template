<div>
    {{-- A good traveler has no fixed plans and is not intent upon arriving. --}}
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
                                <input type="text" style="width: 95% !important;" wire:model="userSearch" class="form-control bg-light border-0 small" placeholder="Search by Title/Description" aria-label="Search" aria-describedby="basic-addon2">
                            </div>
                        </form>
                    </th>
                </tr>
            </thead>
        </table>
        <table class="table table-hover">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Name</th>
                    <th scope="col">Email</th>
                    <th scope="col">Designation</th>
                </tr>
            </thead>
            <tbody>
                @if ($users->count() > 0)
                @php
                $i = $users->firstItem()
                @endphp
                @foreach($users as $user)
                <tr>
                    <th scope="row">{{$i}}</th>
                    <td>{{$user->name}}</td>
                    <td>{{$user->email}}</td>
                    <?php $user_role = \App\Models\AdminType::where([['id', '=', $user->role]])->first(); ?>
                    <td>{{$user_role->name}}</td>
                    
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