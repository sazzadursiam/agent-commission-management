@extends('admin.layout.master')
@section('page_title')
Withdraw Request
@endsection
@section('withdraw_request_menu_active')
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
                            Withdraw Request
                        </h3>
                    </div>

                    <div class="card-body">
                        <table class="table" id="example1">
                            <thead>
                                <tr>

                                    <th>ID #</th>
                                    <th>Date / Time</th>
                                    <th>Fullname, Nickname</th>
                                    <th>Withdrawal Amount (MYR)</th>
                                    <th>Status</th>
                                    <th>Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                {{-- <tr>
                                    <td>
                                        <i class="fa-solid fa-image"></i>
                                    </td>
                                    <td>
                                        Product
                                    </td>
                                    <td>
                                        SKU-123
                                    </td>
                                    <td>
                                        10
                                    </td>
                                    <td>
                                        2
                                    </td>
                                    <td>
                                        5
                                    </td>
                                    <td>
                                        1
                                    </td>
                                </tr> --}}
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