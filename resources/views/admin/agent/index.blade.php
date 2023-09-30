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
                    <div class="card-header">
                        <h3 class="card-title">
                            Agents
                        </h3>
                        <a href="{{route('admin.agents.create')}}" class="btn btn-sm btn-info float-right"><i
                                class="fas fa-plus-circle mr-1"></i>Add New</a>
                    </div>

                    <div class="card-body">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Name</th>
                                    <th>IC Number</th>
                                    <th>Created At</th>
                                    <th>Options</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>Alex</td>
                                    <td>1111</td>
                                    <td>10 Sep 2023</td>
                                    <td>
                                        <a data-toggle="tooltip" data-placement="top" title="View" href="" type="button"
                                            class="btn btn-primary btn-sm mb-1">
                                            <i class="fa fa-eye"></i>

                                        </a>

                                        <a data-toggle="tooltip" data-placement="top" title="Edit" href="" type="button"
                                            class="btn btn-warning btn-sm mb-1">
                                            <i class="fas fa-edit"></i>
                                        </a>

                                        <form class="d-inline" action="" method="POST">
                                            @csrf
                                            @method('DELETE')
                                            <button data-toggle="tooltip" data-placement="top" title="Delete"
                                                type="submit"
                                                onclick="return confirm('Are you sure you want to delete?');"
                                                type="button" class="btn btn-danger btn-sm mb-1">
                                                <i class="fa fa-trash"></i>
                                            </button>
                                        </form>
                                    </td>
                                </tr>

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
    $('[data-toggle="tooltip"]').tooltip();
        $("#example1").DataTable({
        "responsive": true,
        "lengthChange": true,
        "autoWidth": false,
    });
</script>
@endsection