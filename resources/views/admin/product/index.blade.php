@extends('admin.layout.master')
@section('page_title')
Products
@endsection
@section('product_menu_active')
active
@endsection
@section('content')
<section class="content py-4">
    <div class="container-fluid">


        <div class="row">

            <section class="col-lg-12">

                <div class="card">
                    <div class="card-header d-flex align-items-center justify-content-between">
                        <h3 class="card-title mb-0">
                            Products Management
                        </h3>
                        <a href="{{ route('admin.products.create') }}" class="btn btn-sm btn-info float-right"><i
                                class="fas fa-plus-circle me-1"></i>Add New</a>
                    </div>

                    <div class="card-body">
                        <table id="example1" class="table table-striped">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Image</th>
                                    <th>Name</th>
                                    <th>SKU</th>
                                    <th>Options</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($data as $item)
                                <tr>
                                    <td>{{ $loop->index + 1 }}</td>
                                    <td>
                                        <img src="{{ $item->stockPicture }}" alt="" width="50">
                                    </td>
                                    <td>{{ $item->name }}</td>
                                    <td>{{ $item->sku }}</td>
                                    {{-- <td>
                                        <a data-toggle="tooltip" data-placement="top" title="View"
                                            href="{{ route('admin.products.show', $product->id) }}" type="button"
                                            class="btn btn-primary btn-sm mb-1">
                                            <i class="fa fa-eye"></i>

                                        </a>

                                        <a data-toggle="tooltip" data-placement="top" title="Edit"
                                            href="{{ route('admin.products.edit', $product->id) }}" type="button"
                                            class="btn btn-warning btn-sm mb-1">
                                            <i class="fas fa-edit"></i>
                                        </a>

                                        <form class="d-inline" action="" method="POST">
                                            @csrf
                                            @method('DELETE')
                                            <button data-toggle="tooltip" data-placement="top" title="Delete"
                                                type="submit"
                                                onclick="return confirm('Are you sure you want to delete?');"
                                                type="button" class="btn btn-danger btn-sm mb-1">
                                                <i class="fa fa-trash"></i>
                                            </button>
                                        </form>
                                    </td> --}}
                                    <td></td>
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