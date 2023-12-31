@extends('admin.layout.master')
@section('page_title')
Add New Agent
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
                            Add New Agent
                        </h3>
                        <a href="{{route('admin.agents.index')}}" class="btn btn-sm btn-info"><i
                                class="fas fa-folder-open me-1"></i>Agent List</a>
                    </div>

                    <div class="card-body">
                        <form action="{{route('admin.agents.store')}}" method="POST" enctype="multipart/form-data">
                            @csrf
                            <div class="row">
                                <div class="form-group col-lg-6 mb-1">
                                    <label for="name">Name <span class="text-danger">*</span></label>
                                    <input type="text" id="name" name="name" class="form-control" required>
                                    @error('name')
                                    <p class="text-danger">{{ $message }}</p>
                                    @enderror
                                </div>
                                <div class="form-group col-lg-6 mb-1">
                                    <label for="gender">Gender</label>
                                    <select name="gender" id="gender" class="form-control">
                                        <option value="">---</option>
                                        <option value="m">Male</option>
                                        <option value="f">Female</option>
                                    </select>
                                    @error('gender')
                                    <p class="text-danger">{{ $message }}</p>
                                    @enderror
                                </div>
                                <div class="form-group col-lg-6 mb-1">
                                    <label for="dob">Date Of Birth</label>
                                    <input type="date" name="dob" id="dob" class="form-control">
                                    @error('dob')
                                    <p class="text-danger">{{ $message }}</p>
                                    @enderror
                                </div>
                                <div class="form-group col-lg-6 mb-1">
                                    <label for="ic_number">IC Number</label>
                                    <input type="text" name="ic_number" id="ic_number" class="form-control">
                                    @error('ic_number')
                                    <p class="text-danger">{{ $message }}</p>
                                    @enderror
                                </div>
                                <div class="form-group col-lg-6 mb-1">
                                    <label for="level">Level</label>
                                    <select name="level" id="level" class="form-select">
                                        <option value="">Select Level</option>
                                        @foreach ($levels as $level)
                                        <option value="{{$level->id}}">{{$level->name}}</option>
                                        @endforeach
                                    </select>
                                    {{-- <input type="text" name="level" id="level" class="form-control"> --}}
                                    @error('level')
                                    <p class="text-danger">{{ $message }}</p>
                                    @enderror
                                </div>
                                <div class="form-group col-lg-6 mb-1">
                                    <label for="downline">Downline</label>
                                    <input type="text" name="downline" id="downline" class="form-control">
                                    @error('downline')
                                    <p class="text-danger">{{ $message }}</p>
                                    @enderror
                                </div>
                                <div class="form-group col-lg-6 mb-1">
                                    <label for="profile_photo">Profile Photo</label>
                                    <input type="file" name="profile_photo" id="profile_photo" class="form-control">
                                    @error('profile_photo')
                                    <p class="text-danger">{{ $message }}</p>
                                    @enderror
                                </div>
                                <div class="form-group col-lg-6 mb-1">
                                    <label for="attachment">Attachment</label>
                                    <input type="file" name="attachment" id="attachment" class="form-control">
                                    @error('attachment')
                                    <p class="text-danger">{{ $message }}</p>
                                    @enderror
                                </div>
                            </div>
                            <div class="row pt-3">
                                <div class="col-lg-12">
                                    <button type="submit" class="btn btn-primary"><i
                                            class="fas fa-save me-2"></i>Create</button>
                                </div>
                            </div>

                        </form>
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