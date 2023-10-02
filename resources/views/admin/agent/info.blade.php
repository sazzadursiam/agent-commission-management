@extends('admin.layout.master')
@section('page_title')
Agent Info
@endsection
@section('agent_menu_active')
active
@endsection
@section('content')
<section class="content py-4">
    <div class="container-fluid">

        <div class="row">

            <section class="col-lg-12 connectedSortable">

                <div class="card">
                    <div class="card-header d-flex align-items-center justify-content-between">
                        <h3 class="card-title mb-0">
                            Agent Info
                        </h3>
                        <a href="{{route('admin.agents.index')}}" class="btn btn-sm btn-info"><i
                                class="fas fa-folder-open me-1"></i>Agent List</a>
                    </div>

                    <div class="card-body">
                        <div class="row align-items-center justify-content-center">
                            <div class="col-md-4">
                                <div class="card" style="border-top: 2px solid blue">
                                    <div class="card-body">
                                        <div class="w-100 d-flex align-items-center justify-content-center">
                                            <div style="height: 80px;width:80px"
                                                class="d-flex align-items-start align-items-sm-center">
                                                <img style="height: 100%;width:100%" src="{{$agent->profile_photo}}"
                                                    alt="" class="d-block rounded ">
                                            </div>
                                        </div>
                                        <div class="text-center py-2">
                                            <h3 class="mb-0">{{$agent->name}}</h3>
                                            <p>
                                                Gender:
                                                @if($agent->gender=='m')
                                                Male
                                                @else
                                                Female
                                                @endif
                                            </p>
                                            <p>
                                                Date of birth: {{\Carbon\Carbon::parse($agent->dob)->format('Y-m-d')}}
                                            </p>
                                            <p>
                                                IC Number: {{$agent->ic_number}}
                                            </p>
                                            <p>
                                                Level: {{$agent->level}}
                                            </p>
                                            <p>
                                                Downline: {{$agent->downline}}
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                </div>
                <!-- /.card -->
            </section>


        </div>

    </div>
</section>
@endsection
@section('custom_js')
<script>

</script>
@endsection