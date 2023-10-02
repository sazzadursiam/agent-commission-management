<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;

class AgentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $agents = User::where('user_type', 0)->latest()->get();
        return view('admin.agent.index', compact(['agents']));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.agent.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // return $request->all();
        $request->validate([
            'name' => 'required',
        ]);
        $model = new User();
        $model->name = $request->name;
        $model->gender = $request->gender;
        $model->dob = Carbon::parse($request->dob)->format('Y-m-d');
        $model->ic_number = $request->ic_number;
        $model->level = $request->level;
        $model->downline = $request->downline;
        if ($request->hasFile('attachment')) {
            $img = $request->file('attachment');
            $new_name = rand() . '.' . $request->attachment->getClientOriginalExtension();
            $path = '/common/agent/attachment/';
            $img->move(public_path($path), $new_name);
            $model->attachment = $path . $new_name;
        }
        if ($request->hasFile('profile_photo')) {
            $img = $request->file('profile_photo');
            $new_name = rand() . '.' . $request->profile_photo->getClientOriginalExtension();
            $path = '/common/agent/profile_photo/';
            $img->move(public_path($path), $new_name);
            $model->profile_photo = $path . $new_name;
        }
        $model->save();
        return redirect()->route('admin.agents.index')->with('message', 'Added Successful.');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $agent = User::where('user_type', 0)->where('id', $id)->first();
        if ($agent) {
            return view('admin.agent.info', compact(['agent']));
        }
        abort(404);
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
        $model = User::where('user_type', 0)->where('id', $id)->first();
        if ($model) {
            //remove old image form folder if new image comes
            if ($model->profile_photo != null || $model->profile_photo != "") {
                $profile_photo_file = public_path($model->profile_photo);
                if (file_exists($profile_photo_file)) {
                    unlink($profile_photo_file);
                }
            }
            if ($model->attachment != null || $model->attachment != "") {
                $attachment_file = public_path($model->attachment);
                if (file_exists($attachment_file)) {
                    unlink($attachment_file);
                }
            }
            $model->delete();
            return back()->with('error_message', 'Delete Successful');
        }
        abort(404);
    }
}
