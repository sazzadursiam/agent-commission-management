@extends('admin.layout.master')
@section('page_title', 'Add New User')
@section('hospital_menu_active', 'active')
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
                        <h5 class="card-title">Create New Staff</h5>
                        <div class="ms-auto">
                            <a class="btn btn-sm custom_btn" href="{{ route('admin.staff.index') }}" role="button"><i
                                    class="fa-solid fa-circle-chevron-left me-1"></i>Back</a>
                        </div>
                    </div>
                    <form action="{{ route('admin.staff.store') }}" method="POST">
                        <div class="card-body">

                            @csrf
                            <div class="row">
                                <div class="form-group mb-2 col-md-4">
                                    <label for="name" class="mb-1">Name <span class="text-danger">*</span></label>
                                    <input type="text" name="name" id="name" class="form-control"
                                        placeholder="Full Name" required>
                                </div>
                                @error('name')
                                <p class="text-danger">{{ $message }}</p>
                                @enderror
                                <div class="form-group mb-2 col-md-4">
                                    <label for="email" class="mb-1">Email <span class="text-danger">*</span></label>
                                    <input type="email" name="email" id="email" class="form-control"
                                        placeholder="example@example.com" required>
                                </div>
                                @error('email')
                                <p class="text-danger">{{ $message }}</p>
                                @enderror
                                <div class="form-group mb-2 col-md-4">
                                    <label for="phone" class="mb-1">Phone</label>
                                    <input type="text" name="phone" id="phone" class="form-control"
                                        placeholder="01xxxxxxxxx">
                                </div>
                                @error('phone')
                                <p class="text-danger">{{ $message }}</p>
                                @enderror
                                <div class="form-group mb-2 col-md-4">
                                    <label for="password" class="mb-1">Password <span
                                            class="text-danger">*</span></label>
                                    <input type="password" name="password" id="password" class="form-control"
                                        placeholder="Password" required>
                                </div>
                                @error('password')
                                <p class="text-danger">{{ $message }}</p>
                                @enderror
                                {{-- <div class="form-group mb-2 col-md-4">
                                    <label for="roles" class="mb-1">Role <span class="text-danger">*</span></label>
                                    <select name="roles[]" id="roles" class="form-control js-example-basic-multiple"
                                        required multiple>
                                        @foreach ($roles as $role)
                                        <option value="{{ $role->id }}">{{ $role->name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                                @error('roles')
                                <p class="text-danger">{{ $message }}</p>
                                @enderror --}}

                                <div class="form-group mb-2 py-2" style="border:1px solid rgb(187, 187, 187)">

                                    <div class="col-md-12">
                                        <label for="permission" class="mb-2">Permissions <span
                                                class="text-danger">*</span></label>
                                        <table class="table table-striped">
                                            <thead>
                                                <tr>
                                                    <th>Permission Name</th>
                                                    <th>
                                                        Action
                                                        {{-- <div class="form-check">
                                                            <input class="form-check-input" type="checkbox" value=""
                                                                id="checkAll">
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
                                                            name="permission[]">
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
                            </div>

                        </div>
                        <div class="card-footer">
                            <button type="submit" class="btn btn-success btn-sm"><i
                                    class="fa-solid fa-floppy-disk me-2"></i>Save</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection

@section('custom_js')

@if (Session::has('message'))
<script>
    var message = {!! json_encode(Session::get('message')) !!};
            toastr.success(message, {
                timeOut: 5000
            });
</script>
@endif
<script>
    $(document).ready(function() {
            $('.js-example-basic-multiple').select2();
        });
</script>
@endsection