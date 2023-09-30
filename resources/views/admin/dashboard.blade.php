@extends('admin.layout.master')
@section('page_title')
Dashboard
@endsection
@section('dashboard_menu_active')
active
@endsection
@section('content')
<section class="content py-4">
    <div class="container-fluid">
        <!-- Small boxes (Stat box) -->
        <div class="row">
            <div class="col-lg-3 col-6">
                <!-- small box -->
                <div class="small-box bg-info">
                    <div class="inner">
                        <h3>150</h3>

                        <p>Products</p>
                    </div>
                    <div class="icon">
                        <i class="ion ion-bag"></i>
                    </div>
                    <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                </div>
            </div>

            <div class="col-lg-3 col-6">
                <!-- small box -->
                <div class="small-box bg-warning">
                    <div class="inner">
                        <h3>44</h3>

                        <p>Agents</p>
                    </div>
                    <div class="icon">
                        <i class="ion ion-person-add"></i>
                    </div>
                    <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                </div>
            </div>

        </div>
        <!-- /.row -->
        <!-- Main row -->
        <div class="row">
            <!-- Left col -->
            <section class="col-lg-6">
                <!-- Custom tabs (Charts with tabs)-->



                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">
                            <i class="fa fa-users mr-2"></i>
                            Recent Agents
                        </h3>

                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Name</th>
                                    <th>IC Number</th>
                                    <th>Created At</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>Alex</td>
                                    <td>1111</td>
                                    <td>10 Sep 2023</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Sam</td>
                                    <td>1112</td>
                                    <td>10 Sep 2023</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                </div>

            </section>
            <!-- /.Left col -->
            <!-- right col (We are only adding the ID to make the widgets sortable)-->
            <section class="col-lg-6">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">
                            <i class="fab fa-product-hunt mr-2"></i>
                            Recent Products
                        </h3>

                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Name</th>
                                    <th>SKU</th>
                                    <th>Status</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>Product 1</td>
                                    <td>1111</td>
                                    <td>
                                        <span class="badge bg-success">Active</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Product 2</td>
                                    <td>2222</td>
                                    <td>
                                        <span class="badge bg-danger">In-active</span>
                                    </td>
                                </tr>

                            </tbody>
                        </table>
                    </div>

                </div>
            </section>
            <!-- right col -->
        </div>
        <!-- /.row (main row) -->
    </div><!-- /.container-fluid -->
</section>
@endsection