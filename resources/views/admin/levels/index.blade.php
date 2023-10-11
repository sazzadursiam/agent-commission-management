@extends('admin.layout.master')
@section('page_title')
Levels
@endsection
@section('level_menu_active')
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
                            Levels
                        </h3>
                        <a href="{{route('admin.levels.create')}}" class="btn btn-sm btn-info"><i
                                class="fas fa-plus-circle me-1"></i>Add New</a>
                    </div>

                    <div class="card-body">
                        <table class="table" id="example1">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Level Title</th>
                                    <th>Level Name</th>
                                    <th>MOQ</th>
                                    <th>Options</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($levels as $item)
                                <tr>
                                    <td>{{$loop->iteration}}</td>

                                    <td>{{$item->title}}</td>
                                    <td>{{$item->name}}</td>
                                    <td>{{$item->moq}}</td>
                                    <td>
                                        {{-- <a data-placement="top" title="View"
                                            href="{{route('admin.agents.show',$item->id)}}" type="button"
                                            class="btn btn-primary btn-sm mb-1">
                                            <i class="fa fa-eye"></i>

                                        </a> --}}

                                        <a data-toggle="tooltip" data-placement="top" title="Edit" href="{{route('admin.levels.edit',$item->id)}}" type="button"
                                            class="btn btn-warning btn-sm mb-1">
                                            <i class="fas fa-edit"></i>
                                        </a>

                                        <form class="d-inline" action="{{route('admin.levels.destroy',$item->id)}}"
                                            method="POST">
                                            @csrf
                                            @method('DELETE')
                                            <button data-placement="top" title="Delete" type="submit"
                                                onclick="return confirm('Are you sure you want to delete?');"
                                                type="button" class="btn btn-danger btn-sm mb-1">
                                                <i class="fa fa-trash"></i>
                                            </button>
                                        </form>
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