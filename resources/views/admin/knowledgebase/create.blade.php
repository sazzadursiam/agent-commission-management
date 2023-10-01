@extends('admin.layout.master')
@section('page_title')
Add New Knowledgebase
@endsection
@section('knowledgebase_menu_active')
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
                            Add New Knowledgebase
                        </h3>
                        <a href="{{route('admin.knowledge-base.index')}}" class="btn btn-sm btn-info"><i
                                class="fas fa-folder-open me-1"></i>Knowledgebase List</a>
                    </div>

                    <div class="card-body">
                        <form action="{{route('admin.knowledge-base.store')}}" method="POST"
                            enctype="multipart/form-data">
                            @csrf
                            <div class="row">
                                <div class="form-group col-lg-6 mb-1">
                                    <label for="k_video">Video</label>
                                    <input type="file" name="k_video" id="k_video" class="form-control"
                                        accept="video/*">
                                    @error('k_video')
                                    <p class="text-danger">{{ $message }}</p>
                                    @enderror
                                </div>
                                <div class="form-group col-lg-6 mb-1">
                                    <label for="k_file">File</label>
                                    <input type="file" name="k_file" id="k_file" class="form-control"
                                        accept="application/msword, application/vnd.ms-excel, application/vnd.ms-powerpoint, text/plain, application/pdf" />
                                    @error('k_file')
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