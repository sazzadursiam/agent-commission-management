<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\KnowledgeBase;
use Illuminate\Http\Request;

class KnowledgeBaseController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $knowledgebase = KnowledgeBase::latest()->get();
        return view('admin.knowledgebase.index', compact(['knowledgebase']));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.knowledgebase.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $model = new KnowledgeBase();
        if ($request->hasFile('k_video')) {
            $img = $request->file('k_video');
            $new_name = rand() . '.' . $request->k_video->getClientOriginalExtension();
            $path = '/common/knowledgebase/video/';
            $img->move(public_path($path), $new_name);
            $model->k_video = $path . $new_name;
        }
        if ($request->hasFile('k_file')) {
            $img = $request->file('k_file');
            $new_name = rand() . '.' . $request->k_file->getClientOriginalExtension();
            $path = '/common/knowledgebase/k_file/';
            $img->move(public_path($path), $new_name);
            $model->k_file = $path . $new_name;
        }
        $model->save();
        return back()->with('message', 'Added Successful');
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
