@extends('admin.layout.master')
@section('page_title')
Knowledgebase
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
                            Knowledgebase
                        </h3>
                        <a href="{{route('admin.knowledge-base.create')}}" class="btn btn-sm btn-info"><i
                                class="fas fa-plus-circle me-1"></i>Add New</a>
                    </div>

                    <div class="card-body">
                        <table class="table" id="example1">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>File</th>
                                    <th>Video</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($knowledgebase as $item)
                                <tr>
                                    <td>{{$loop->iteration}}</td>
                                    <td>
                                        @if($item->k_file)
                                        <a href="{{asset($item->k_file)}}" download>
                                            <i class="fa-solid fa-file fa-2x"></i>
                                        </a>
                                        @else
                                        N/A
                                        @endif
                                    </td>
                                    <td>
                                        @if($item->k_video)
                                        <a href="{{asset($item->k_video)}}" download>
                                            <i class="fa-solid fa-video fa-2x"></i>
                                        </a>
                                        @else
                                        N/A
                                        @endif
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