@extends('admin.layout.master')
@section('page_title')
Edit Level
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
                            Edit Level
                        </h3>
                        <a href="{{route('admin.levels.index')}}" class="btn btn-sm btn-info"><i
                                class="fas fa-folder-open me-1"></i>Level List</a>
                    </div>

                    <div class="card-body">
                        <form action="{{route('admin.levels.update',$level->id)}}" method="POST" enctype="multipart/form-data">
                            @csrf
                            @method('PUT')
                            <div class="row">
                                <div class="form-group col-lg-4 mb-1">
                                    <label for="title">Title <span class="text-danger">*</span></label>
                                    <input type="text" id="title" name="title" class="form-control" placeholder="Level Title" required value="{{$level->title}}">
                                    @error('title')
                                    <p class="text-danger">{{ $message }}</p>
                                    @enderror
                                </div>
                                <div class="form-group col-lg-4 mb-1">
                                    <label for="name">Name <span class="text-danger">*</span></label>
                                    <input type="text" id="name" name="name" class="form-control" placeholder="Level Name" required value="{{$level->name}}">
                                    @error('name')
                                    <p class="text-danger">{{ $message }}</p>
                                    @enderror
                                </div>
                                
                                
                                <div class="form-group col-lg-4 mb-1">
                                    <label for="moq">MOQ</label>
                                    <input type="number" min="0" step="0.10" name="moq" id="moq" class="form-control" value="{{$level->moq}}">
                                    @error('moq')
                                    <p class="text-danger">{{ $message }}</p>
                                    @enderror
                                </div>
                                
                            </div>
                            <div class="row pt-3">
                                <div class="col-lg-12">
                                    <button type="submit" class="btn btn-primary"><i
                                            class="fas fa-save me-2"></i>Update</button>
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