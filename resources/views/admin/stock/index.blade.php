@extends('admin.layout.master')
@section('page_title')
Stock
@endsection
@section('stock_menu_active')
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
                            Stock
                        </h3>
                    </div>

                    <div class="card-body">
                        <table class="table" id="example1">
                            <thead>
                                <tr>

                                    <th>Image</th>
                                    <th>Name</th>
                                    <th>SKU</th>
                                    <th>Company Stock</th>
                                    <th>Processing</th>
                                    <th>Total Dealer Stock Balance</th>
                                    <th>Total Warehouse</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
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
                                </tr>
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