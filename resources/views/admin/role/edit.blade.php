@extends('admin.layout.master')
@section('page_title', 'Role Edit')
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
                    <h5 class="card-title">Edit Role</h5>
                    <div class="ms-auto">
                        <a class="btn btn-sm custom_btn" href="{{ route('admin.roles.index') }}" role="button"><i
                                class="fa-solid fa-circle-chevron-left me-1"></i>View All</a>
                    </div>
                </div>
                <div class="card-body">

                    <form action="{{ route('admin.roles.update', $role->id) }}" method="POST">
                        @csrf
                        @method('PATCH')
                        <div class="form-group mb-2">
                            <label for="name">Name <span class="text-danger">*</span></label>
                            <input type="text" name="name" id="name" class="form-control" placeholder="Role Name"
                                value="{{ $role->name }}" required>

                        </div>
                        @error('name')
                            <p class="text-danger">{{ $message }}</p>
                        @enderror
                        <div class="form-group mb-2">
                            <label for="permission" class="mb-2">Permissions <span class="text-danger">*</span></label>

                            <div class="col-md-12">
                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th>Permission Name</th>
                                            <th>
                                                Action
                                                {{-- <div class="form-check">
                                                <input class="form-check-input" type="checkbox" value="" id="checkAll">
                                                <label class="form-check-label" for="checkAll">
                                                    All
                                                </label>
                                            </div> --}}
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($permission as $permission)
                                            <tr>
                                                <td>
                                                    <label class="form-check-label" for="{{ $permission->id }}">
                                                        {{ $permission->name }}
                                                    </label>
                                                </td>
                                                <td>
                                                    <input class="form-check-input si" type="checkbox"
                                                        value="{{ $permission->id }}" id="{{ $permission->id }}"
                                                        name="permission[]"
                                                        @if (in_array($permission->id, $rolePermissions)) checked @endif>
                                                    {{-- @php in_array($permission->id, $rolePermissions) ? 'checked' : ''
                                            @endphp --}}
                                                </td>
                                            </tr>
                                        @endforeach
                                    </tbody>
                                </table>

                            </div>
                        </div>
                        @error('permission')
                            <p class="text-danger">{{ $message }}</p>
                        @enderror
                        <div class="mb-2">
                            <button type="submit" class="btn btn-success btn-sm"><i
                                    class="fa-solid fa-floppy-disk me-2"></i>Save</button>
                        </div>
                    </form>

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
