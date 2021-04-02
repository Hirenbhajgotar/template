<div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-hover">

                @if ($states->count() > 0)
                <caption>{{ $states->links() }}</caption>
                @endif
                <thead>
                    <tr>
                        <th></th>
                        <th></th>
                        <th>
                            <div class="form-group_">
                                <select wire:model="country_id" name="country_id" id="country_id_" class="form-control">
                                    <option value="">Select Country</option>
                                    @foreach($Countries as $country)
                                    <option value="{{$country->id}}">{{$country->country_name}}</option>
                                    @endforeach
                                </select>
                            </div>

                        </th>
                        <th style="text-align:right">
                            <form style="width: 95% !important;" class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                                <div class="form-group">
                                    <input type="text" style="width: 95% !important;" wire:model="stateSearch" class="form-control bg-light border-0 small" placeholder="Search by state" aria-label="Search" aria-describedby="basic-addon2">
                                    <!-- <div class="input-group-append">
                                        <button class="btn btn-primary" type="button">
                                            <i class="fas fa-search fa-sm"></i>
                                        </button>
                                    </div> -->
                                </div>
                            </form>
                        </th>
                    </tr>
                    <tr>
                        <th scope="col" width="5%">#</th>
                        <th scope="col" width="30%">State</th>
                        <th scope="col" width="30%">Country</th>
                        <th scope="col" width="auto" style="text-align:right">Action</th>
                    </tr>
                </thead>
                <tbody>
                    @if ($states->count() > 0)
                    @php
                    $i = $states->firstItem()
                    @endphp
                    @foreach ($states as $item)
                    <tr>
                        <th scope="row">{{ $i }}</th>
                        <td>{{$item->state_name}}</td>
                        <td>{{$item->country_name}}</td>
                        <td style="text-align:right">
                            <div>
                                <x-update-btn :route="'edit_state_master'" :id="$item->id" />
                                <x-delete-btn :route="'delete_state_master'" :id="$item->id" />

                            </div>
                        </td>
                    </tr>
                    @php
                    $i++;
                    @endphp
                    @endforeach
                    @else
                    <tr>
                        <td colspan="4" style="text-align: center;">No Records Found.</td>
                    </tr>
                    @endif
                </tbody>

            </table>
        </div>
    </div>
</div>