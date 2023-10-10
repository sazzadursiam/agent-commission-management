@extends('admin.layout.master')
@section('page_title')
Agents
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
                            Agents
                        </h3>
                        <div>
                            <button class="btn btn-sm btn-warning card-view-btn" type="button"><i
                                    class="fa-solid fa-grip me-1"></i>Card View</button>
                            <button class="btn btn-sm btn-success list-view-btn d-none" type="button"><i
                                    class="fa-solid fa-list-ul me-2"></i>List View</button>
                            <a href="{{route('admin.agents.create')}}" class="btn btn-sm btn-info"><i
                                    class="fas fa-plus-circle me-1"></i>Add New</a>
                        </div>
                    </div>

                    <div class="card-body">
                        <div class="list_view_div ">
                            <table class="table" id="example1">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Photo</th>
                                        <th>Name</th>
                                        <th>IC Number</th>
                                        <th>Level</th>
                                        <th>Joined At</th>
                                        <th>Status</th>
                                        <th>Options</th>
                                        <th>Active</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($agents as $item)
                                    <tr>
                                        <td>{{$loop->iteration}}</td>
                                        <td>
                                            @if($item->profile_photo)
                                            <img src="{{asset($item->profile_photo)}}" alt="" style="height: 50px">
                                            @else
                                            <i class="fa fa-user" style="font-size: 27px"></i>
                                            @endif
                                        </td>
                                        <td>{{$item->name}}</td>
                                        <td>{{$item->ic_number}}</td>
                                        <td>{{$item->level}}</td>
                                        <td>{{$item->created_at->format('Y-m-d')}}</td>
                                        <td>
                                            @if($item->status==0)
                                            <span class="badge bg-danger">Pending</span>
                                            @elseif($item->status==1)
                                            <span class="badge bg-success">Approved</span>
                                            @elseif($item->status==2)
                                            <span class="badge bg-danger">Blocked</span>
                                            @elseif($item->status==3)
                                            <span class="badge bg-warning">Rejected</span>
                                            @endif
                                        </td>
                                        <td>
                                            <a data-placement="top" title="View"
                                                href="{{route('admin.agents.show',$item->id)}}" type="button"
                                                class="btn btn-primary btn-sm mb-1">
                                                <i class="fa fa-eye"></i>

                                            </a>

                                            <a data-toggle="tooltip" data-placement="top" title="Edit" href=""
                                                type="button" class="btn btn-warning btn-sm mb-1">
                                                <i class="fas fa-edit"></i>
                                            </a>

                                            {{-- <form class="d-inline"
                                                action="{{route('admin.agents.destroy',$item->id)}}" method="POST">
                                                @csrf
                                                @method('DELETE')
                                                <button data-placement="top" title="Delete" type="submit"
                                                    onclick="return confirm('Are you sure you want to delete?');"
                                                    type="button" class="btn btn-danger btn-sm mb-1">
                                                    <i class="fa fa-trash"></i>
                                                </button>
                                            </form> --}}
                                        </td>
                                        <td>
                                            <button class="btn btn-danger btn-sm">Inactivate</button>
                                        </td>
                                    </tr>
                                    @endforeach


                                </tbody>
                            </table>
                        </div>
                        <div class="card_view_div d-none">
                            <div class="row">
                                @foreach ($agents as $agent)
                                <div class="col-md-3">
                                    <div class="card" style="border-top: 2px solid blue">
                                        <div class="card-header">
                                            <div class="d-flex justify-content-between align-items-center">
                                                <div>
                                                    @if($agent->status==0)
                                                    <span class="badge bg-danger">Pending</span>
                                                    @elseif($agent->status==1)
                                                    <span class="badge bg-success">Approved</span>
                                                    @elseif($agent->status==2)
                                                    <span class="badge bg-danger">Blocked</span>
                                                    @elseif($agent->status==3)
                                                    <span class="badge bg-warning">Rejected</span>
                                                    @endif
                                                </div>
                                                <div class="d-flex justify-content-end">
                                                    <p class="mb-0">Registered On: {{$agent->created_at->format("d M
                                                        Y")}}</p>

                                                    <div class="ms-2 dropdown">
                                                        <button type="button" class="btn p-0 dropdown-toggle hide-arrow"
                                                            data-bs-toggle="dropdown">
                                                            <i class="bx bx-dots-vertical-rounded"></i>
                                                        </button>
                                                        <div class="dropdown-menu">
                                                            <a class="dropdown-item"
                                                                href="{{route('admin.agents.show',$agent->id)}}"><i
                                                                    class="fa fa-eye me-1"></i> View</a>

                                                        </div>
                                                    </div>


                                                </div>
                                            </div>
                                        </div>
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
                                                <p class="mb-0">
                                                    Gender:
                                                    @if($agent->gender=='m')
                                                    Male
                                                    @elseif($agent->gender=='f')
                                                    Female
                                                    @else
                                                    N/A
                                                    @endif
                                                </p>
                                                <p class="mb-0">
                                                    Date of birth:
                                                    {{\Carbon\Carbon::parse($agent->dob)->format('Y-m-d')??'N/A'}}
                                                </p>
                                                <p class="mb-0">
                                                    IC Number: {{$agent->ic_number??'N/A'}}
                                                </p>
                                                <p class="mb-0">
                                                    Level: {{$agent->level??'N/A'}}
                                                </p>
                                                <p class="mb-0">
                                                    Downline: {{$agent->downline??'N/A'}}
                                                </p>
                                                <p class="mb-0">
                                                    Username: {{$agent->user_name??'N/A'}}
                                                </p>
                                                <p class="mb-0">
                                                    Upline Name: {{$agent->up_line_name??'N/A'}}
                                                </p>
                                                <p class="mb-0">
                                                    Role: {{$agent->role??'N/A'}}
                                                </p>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                                @endforeach
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
    $("#example1").DataTable({
        "responsive": true,
        "lengthChange": true,
        "autoWidth": false,
    });

    $(".card-view-btn").click(function(){
        $(".list_view_div").addClass("d-none");
        $(".card_view_div").removeClass("d-none");
        
        $(".card-view-btn").addClass("d-none");
        $(".list-view-btn").removeClass("d-none");

    });

    $(".list-view-btn").click(function(){
        $(".card_view_div").addClass("d-none");
        $(".list_view_div").removeClass("d-none");
        
        $(".list-view-btn").addClass("d-none");
        $(".card-view-btn").removeClass("d-none");

    });
</script>
@endsection