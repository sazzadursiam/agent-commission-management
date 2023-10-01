@extends('admin.layout.master')
@section('page_title')
Add New Product
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
                            Add New Product
                        </h3>
                        <a href="{{route('admin.products.index')}}" class="btn btn-sm btn-info"><i
                                class="fas fa-folder-open me-1"></i>Product List</a>
                    </div>

                    <div class="card-body">
                        <form action="{{route('admin.products.store')}}" method="POST">
                            @csrf
                            <!-- Basic Information -->
                            <div class="card">
                                <div class="card-header">
                                    <h3 class="card-title">
                                        Basic Information
                                    </h3>
                                </div>
                                <div class="card-body">
                                    <div class="row">
                                        <div class="form-group col-lg-4 mb-1">
                                            <label for="featured_image">Featured Image</label>
                                            <input type="file" name="featured_image" id="featured_image"
                                                class="form-control">
                                            @error('featured_image')
                                            <p class="text-danger">{{ $message }}</p>
                                            @enderror
                                        </div>
                                        <div class="form-group col-lg-4 mb-1">
                                            <label for="name">Name <span class="text-danger">*</span></label>
                                            <input type="text" id="name" name="name" class="form-control" required
                                                placeholder="Product Name">
                                            @error('name')
                                            <p class="text-danger">{{ $message }}</p>
                                            @enderror
                                        </div>
                                        <div class="form-group col-lg-4 mb-1">
                                            <label for="sku">SKU <span class="text-danger">*</span></label>
                                            <input type="text" id="sku" name="sku" class="form-control" required
                                                placeholder="Product SKU">
                                            @error('sku')
                                            <p class="text-danger">{{ $message }}</p>
                                            @enderror
                                        </div>
                                        <div class="form-group col-lg-12 mb-1">
                                            <label for="description">Description</label>
                                            <textarea name="description" id="description" rows="3" class="form-control"
                                                placeholder="Enter Description"></textarea>
                                            @error('description')
                                            <p class="text-danger">{{ $message }}</p>
                                            @enderror
                                        </div>
                                        <div class="form-group col-lg-12 mb-1">
                                            <label for="long_description">Long Description</label>
                                            <textarea name="long_description" id="long_description" rows="3"
                                                class="form-control" placeholder="Enter Long Description"></textarea>
                                            @error('long_description')
                                            <p class="text-danger">{{ $message }}</p>
                                            @enderror
                                        </div>


                                    </div>
                                </div>
                            </div>
                            <!-- Basic Information -->
                            <div class="card">
                                <div class="card-header">
                                    <h3 class="card-title">
                                        Specification
                                    </h3>
                                </div>
                                <div class="card-body">
                                    <div class="row">
                                        <div class="form-group col-lg-4">
                                            <label for="weight">Weight (Put 0 if this product is free shipping)</label>
                                            <input type="text" class="form-control" name="weight" id="weight"
                                                placeholder="in Kg">
                                            @error('weight')
                                            <p class="text-danger">{{ $message }}</p>
                                            @enderror
                                        </div>
                                        <div class="form-group col-lg-4">
                                            <label for="buying_price">Buying Price (MYR)</label>
                                            <input type="text" class="form-control" name="buying_price"
                                                id="buying_price" placeholder="Optional">
                                            @error('buying_price')
                                            <p class="text-danger">{{ $message }}</p>
                                            @enderror
                                        </div>
                                        <div class="form-group col-lg-4">
                                            <label for="stock_quantity">Stock Quantity</label>
                                            <input type="text" class="form-control" name="stock_quantity"
                                                id="stock_quantity" placeholder="0">
                                            <small id="emailHelp" class="form-text text-muted">Ignore if Variation
                                                Product</small>
                                            @error('stock_quantity')
                                            <p class="text-danger">{{ $message }}</p>
                                            @enderror
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="card">
                                <div class="card-header">
                                    <h3 class="card-title">
                                        Sales Information
                                    </h3>
                                </div>
                                <div class="card-body">
                                    <p>
                                        This Section Will Be Opened After Product Created
                                    </p>
                                </div>
                            </div>

                            <div class="row pt-3">
                                <div class="col-lg-12">
                                    <button type="submit" class="btn btn-primary"><i class="fas fa-save mr-2"></i>Create
                                        & Continue</button>
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
    $('#long_description').summernote({
        placeholder: 'Enter Long Description',
        tabsize: 2,
        height: 180
    });
</script>
@endsection