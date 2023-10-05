@extends('admin.layout.master')
@section('page_title')
Sales Report
@endsection
@section('sales_report_menu_active')
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
                            <i class="fa-solid fa-chart-simple"></i> Sales Report
                        </h3>
                    </div>

                    <div class="card-body">

                        <div class="row">
                            <div class="col-lg-12 col-md-12 order-1">
                                <div class="row">
                                    <div class="col-lg-3 col-md-6 col-6 mb-4">
                                        <div class="card">
                                            <div class="card-body">
                                                <h3 class="card-title mb-2">0</h3>
                                                <span class="fw-semibold d-block mb-1">Orders</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-6 col-6 mb-4">
                                        <div class="card">
                                            <div class="card-body">

                                                <h3 class="card-title mb-2"><small>MYR</small> 0.00</h3>
                                                <span class="fw-semibold d-block mb-1">Grand Total</span>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-6 col-6 mb-4">
                                        <div class="card">
                                            <div class="card-body">
                                                <h3 class="card-title mb-2"><small>MYR</small> 0.00</h3>
                                                <span class="fw-semibold d-block mb-1">Product Sales</span>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-6 col-6 mb-4">
                                        <div class="card">
                                            <div class="card-body">
                                                <h3 class="card-title mb-2"><small>MYR</small> 0.00</h3>
                                                <span class="fw-semibold d-block mb-1">Average Order Value</span>

                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <!-- Total Revenue -->
                            <div class="col-12 col-lg-12 order-2 order-md-3 order-lg-2 mb-4">
                                <div class="card">
                                    <div class="row row-bordered g-0">
                                        <div class="col-md-12">
                                            <div id="totalRevenueChart" class="px-2"></div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <!--/ Total Revenue -->

                        </div>

                        <table class="table" id="example1">
                            <thead>
                                <tr>

                                    <th>Order ID</th>
                                    <th>Total (MYR)</th>
                                    <th>Stocks</th>
                                    <th>Agent</th>
                                    <th>Status</th>
                                    <th>Track</th>
                                    <th>Created At</th>
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