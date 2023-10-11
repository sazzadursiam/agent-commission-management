@extends('admin.layout.master')
@section('page_title', 'Role Information')
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
                    <h5 class="card-title">Role Information</h5>
                    <div class="ms-auto">
                        <a class="btn btn-sm custom_btn" href="{{ route('admin.roles.index') }}" role="button"><i
                                class="fa-solid fa-circle-chevron-left me-1"></i>View All</a>
                    </div>
                </div>
                <div class="card-body">

                    <div class="form-group mb-2">
                        <strong>Name:</strong>

                        {{ $role->name }}

                    </div>

                    <div class="form-group mb-2">

                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>Permission Name</th>

                                </tr>
                            </thead>
                            <tbody>

                                @if (!empty($rolePermissions))

                                    @foreach ($rolePermissions as $v)
                                        <tr>
                                            <td>
                                                {{ $v->name }}
                                            </td>

                                        </tr>
                                    @endforeach

                                @endif

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
        $("#checkAll").click(function() {
            $('input:checkbox').not(this).prop('checked', this.checked);
        });
    </script>
@endsection
