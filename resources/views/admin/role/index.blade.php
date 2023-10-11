@extends('admin.layout.master')
@section('page_title', 'Roles')
@section('roles_menu_active', 'active')
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
                        <h5 class="card-title">All Roles</h5>
                        <div class="ms-auto">
                            {{-- @can('role-create') --}}
                            <a class="btn btn-sm text-white" href="{{ route('admin.roles.create') }}" role="button"
                                style="background-color: #3f6791;"><i class="fa-solid fa-circle-plus me-1"></i>Add
                                new</a>
                            {{-- @endcan --}}
                        </div>
                    </div>
                    <div class="card-body">
                        <div style="overflow-x: auto">
                            <table id="myTable" class="table table-bordered table-striped display">
                                <thead>
                                    <tr>
                                        <th>Sl.</th>
                                        <th>Name</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($roles as $role)
                                    <tr>
                                        <td>
                                            {{ $loop->iteration }}
                                        </td>
                                        <td>{{ $role->name }}</td>
                                        <td>
                                            <a data-toggle="tooltip" data-placement="top" title="View"
                                                href="{{ route('admin.roles.show', $role->id) }}" type="button"
                                                class="btn btn-info btn-sm mb-1">
                                                <i class="fa fa-eye"></i>
                                            </a>
                                            {{-- @can('role-edit') --}}
                                            <a data-toggle="tooltip" data-placement="top" title="Edit"
                                                href="{{ route('admin.roles.edit', $role->id) }}" type="button"
                                                class="btn btn-warning btn-sm mb-1">
                                                <i class="fas fa-edit"></i>
                                            </a>
                                            {{-- @endcan --}}
                                            {{-- @can('role-delete') --}}
                                            <form class="d-inline"
                                                action="{{ route('admin.roles.destroy', $role->id) }}" method="POST">
                                                @csrf
                                                @method('DELETE')
                                                <button data-toggle="tooltip" data-placement="top" title="Delete"
                                                    type="submit"
                                                    onclick="return confirm('Are you sure you want to delete?');"
                                                    type="button" class="btn btn-danger btn-sm mb-1">
                                                    <i class="fa fa-trash"></i>
                                                </button>
                                            </form>
                                            {{-- @endcan --}}
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
                "autoWidth": false,
                "responsive": false,
            });
            $('[data-toggle="tooltip"]').tooltip()
        });
</script>

@endsection