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
                        <a href="{{route('admin.agents.create')}}" class="btn btn-sm btn-info"><i
                                class="fas fa-plus-circle me-1"></i>Add New</a>
                    </div>

                    <div class="card-body">
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
                                        @if($item->status==1)
                                        <span class="badge bg-success">Active</span>
                                        @else
                                        <span class="badge bg-danger">In-active</span>
                                        @endif
                                    </td>
                                    <td>
                                        <a data-placement="top" title="View"
                                            href="{{route('admin.agents.show',$item->id)}}" type="button"
                                            class="btn btn-primary btn-sm mb-1">
                                            <i class="fa fa-eye"></i>

                                        </a>

                                        <a data-toggle="tooltip" data-placement="top" title="Edit" href="" type="button"
                                            class="btn btn-warning btn-sm mb-1">
                                            <i class="fas fa-edit"></i>
                                        </a>

                                        {{-- <form class="d-inline" action="{{route('admin.agents.destroy',$item->id)}}"
                                            method="POST">
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
</script>
@endsection