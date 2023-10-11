@extends('admin.layout.master')
@section('page_title', 'User')
@section('staff_menu_active', 'active')
@section('custom_style')
    <style>



    </style>
@endsection
@section('content')
<section class="content py-4">
    <div class="container-fluid">
    <div class="row">
        <div class="col-12">
            <div class="card">

                <div class="card-header d-flex align-items-center">
                    <h5 class="card-title">All Staff</h5>
                    <div class="ms-auto">
                        <a class="btn btn-sm text-white" href="{{ route('admin.staff.create') }}" role="button"
                            style="background-color: #3f6791;"><i class="fa-solid fa-circle-plus me-1"></i>
                            Add New</a>
                    </div>
                </div>
                <div class="card-body">
                    <div style="overflow-x: auto">
                        <table id="myTable" class="table table-bordered table-striped display">
                            <thead>
                                <tr>
                                    <th>Sl.</th>
                                    <th>Name</th>
                                    <th>Email</th>
                                    <th>Phone</th>
                                    <th>Role</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($users as $user)
                                    <tr>
                                        <td>
                                            {{ $loop->iteration }}
                                        </td>
                                        
                                        <td>{{ $user->name }}</td>
                                        <td>{{ $user->email }}</td>
                                        <td>{{ $user->phone ?? '---' }}</td>
                                        <td>
                                            @if (!empty($user->getRoleNames()))
                                                @foreach ($user->getRoleNames() as $v)
                                                    <span class="badge bg-success me-1">{{ $v }}</span>
                                                @endforeach
                                            @endif
                                        </td>
                                        <td>
                                            <a data-toggle="tooltip" data-placement="top" title="Edit" href=""
                                                type="button" class="btn btn-warning btn-sm mb-1">
                                                <i class="fas fa-edit"></i>
                                            </a>
                                            <a data-toggle="tooltip" data-placement="top" title="View" href=""
                                                type="button" class="btn btn-success btn-sm mb-1">
                                                <i class="fa fa-eye"></i>

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
                                @endforeach

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
    </section>
@endsection

@section('custom_js')
    <script>
        $(document).ready(function() {
            $('#myTable').DataTable({
                "paging": true,
                "lengthChange": true,
                "searching": true,
                "ordering": true,
                "info": true,
                "autoWidth": true,
                "responsive": true,
            });
            $('[data-toggle="tooltip"]').tooltip()
        });
    </script>
    @if (Session::has('message'))
        <script>
            var message = {!! json_encode(Session::get('message')) !!};
            toastr.success(message, {
                timeOut: 5000
            });
        </script>
    @endif
@endsection
