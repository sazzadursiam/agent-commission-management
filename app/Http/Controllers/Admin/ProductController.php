<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Product;
use Illuminate\Support\Facades\Http;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $url = "https://tms-api.mabangerp.com/api/getSku";
        // post request
        $data = array(
            "client_id" => 15342,
            "client_secret" => "5ee024943013d14b86885475998fc432",
            "data" => array(
                "warehouseCode" => "10582"
            )
        );
        $response = Http::post($url, $data);
        $response = json_decode($response, true);
        $data = $response['data'];
        $data = json_encode($data);
        $data = json_decode($data);

        // if data is null
        if ($data == null) {
            $data = Product::latest()->first();
            if ($data == null) {
                $data = [];
            }
            if ($data->data == null) {
                $data = [];
            } else {
                $data = json_decode($data->data);
            }
        } else {
            $product = new Product();
            $product->data = json_encode($data);
            $product->save();
        }
        return response()->json([
            'data' => $data
        ]);
        // return with $products
        return view('admin.product.index',  ['data' => $data]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.product.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            // image, name, sku, description, long description,
            // weight, price, stock
            'featured_image' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'name' => 'required|string|max:255',
            'sku' => 'required|string|max:255',
            'description' => 'string|max:255|nullable',
            'long_description' => 'string|max:255|nullable',
            'weight' => 'numeric|nullable',
            'buying_price' => 'numeric|nullable',
            'stock_quantity' => 'numeric|nullable',
        ]);

        $imageName = null;
        if ($request->hasFile('featured_image')) {
            $imageName = time() . '.' . $request->featured_image->extension();
            $request->featured_image->move(public_path('images'), $imageName);
        }

        $product = new Product();
        $product->image = $imageName;
        $product->name = $request->name;
        $product->sku = $request->sku;
        $product->description = $request->description;
        $product->long_description = $request->long_description;
        $product->weight = $request->weight;
        $product->price = $request->buying_price;
        $product->stock = $request->stock_quantity;
        $product->save();

        return redirect()->route('admin.products.index')
            ->with('success', 'Product created successfully.');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
