<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function allProduct()
    {
        $products = Product::latest()->get();
        return response()->json([
            'success' => true,
            'products' => $products
        ]);
    }
}
