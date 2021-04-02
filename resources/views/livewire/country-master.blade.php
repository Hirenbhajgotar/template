<div>
    {{-- Knowing others is intelligence; knowing yourself is true wisdom. --}}
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th style="text-align:right" width="40%">
                            <form style="width: 95% !important;" class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                                <div class="form-group">
                                    <input type="text"  style="width: 95% !important;" wire:model="countrySearch" class="form-control bg-light border-0 small" placeholder="Search by Name/Code" aria-label="Search" aria-describedby="basic-addon2">
                                </div>
                            </form>
                        </th>
                    </tr>
                </thead>
            </table>
            <table class="table table-hover">
                @if ($countries->count() > 0)
                <caption>{{ $countries->links() }}</caption>
                @endif
                <thead>

                    <tr>
                        <th scope="col">#</th>
                        <th scope="col" width="30%">Name</th>
                        <th scope="col">Code</th>
                        <th scope="col" width="25%">Currencie Code</th>
                        <th scope="col" width="25%">Timezone</th>
                        <th scope="col" width="5%" style="text-align: right;">Action</th>
                    </tr>
                </thead>
                <tbody>
                    @if ($countries->count() > 0)
                    @php
                    $i = $countries->firstItem()
                    @endphp
                    @foreach ($countries as $item)
                    <tr>
                        <th scope="row">{{ $i }}</th>
                        <td>{{$item->country_name}}</td>
                        <td>{{$item->alpha_2_code}}</td>
                        <td>{{$item->currencie_code}}</td>
                        <td>{{$item->timezones}}</td>
                        <td style="text-align: right;" width="5%">
                            <x-update-btn :route="'edit_country_master'" :id="$item->id" />
                            {{-- <x-delete-btn :route="'delete_country_master'" :id="$item->id" /> --}}

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
</div>