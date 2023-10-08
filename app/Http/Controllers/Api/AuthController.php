<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class AuthController extends Controller
{
    public function register(Request $request)
    {
        $validator = Validator::make(
            $request->all(),
            [
                'name' => 'required',
                'user_name' => 'required|unique:users,user_name',
                'password' => 'required|min:4',
            ]
        );

        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'errors' => $validator->errors(),
            ], 403);
        }

        $model = new User();
        $model->name = $request->name;
        $model->user_name = $request->user_name;
        if ($request->has('dob')) {
            $model->gender = $request->gender;
        }
        if ($request->has('ic_number')) {
            $model->ic_number = $request->ic_number;
        }
        if ($request->has('level')) {
            $model->level = $request->level;
        }
        if ($request->has('downline')) {
            $model->downline = $request->downline;
        }
        if ($request->has('role')) {
            $model->role = $request->role;
        }
        if ($request->has('up_line_name')) {
            $model->up_line_name = $request->up_line_name;
        }

        $model->dob = Carbon::parse($request->dob)->format('Y-m-d');

        $model->password = Hash::make($request->password);


        if ($request->hasFile('profile_photo')) {
            $profile_photo = $request->file('profile_photo');
            $new_name = time() . '.' . $request->profile_photo->getClientOriginalExtension();
            $path = '/common/agent/profile_photo/';
            $profile_photo->move(public_path($path), $new_name);
            $model->profile_photo = $path . $new_name;
        }
        $model->save();
        // if ($model->save()) {

        //     $user_access_token = $model->createToken('acmfc03hfgufwevcxy3523jjhvcx')->plainTextToken;
        // }
        return response()->json([
            'success' => true,
            // 'user_access_token' => $user_access_token,
            'user_info' => $model,
        ], 201);
    }
    public function login(Request $request)
    {
        $validator = Validator::make(
            $request->all(),
            [
                'user_name' => 'required',
                'password' => 'required',
            ],
        );

        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'errors' => $validator->errors(),
            ], 403);
        }
        $agent = User::where('user_type', 0)->where('user_name', $request->user_name)->first();
        if (!$agent) {
            return response()->json([
                'success' => false,
                'user_name_error' => "Invalid Username",
            ], 401);
        }
        //check password
        if (!Hash::check($request->password, $agent->password)) {
            return response([
                "success" => false,
                'message' => 'Wrong Password..!'
            ], 401);
        }
        if ($agent->status == 1) {
            $access_token = $agent->createToken('acmfc03etuyndvsgtr7635sdfhfds')->plainTextToken;
            return response()->json([
                "status" => 200,
                "success" => true,
                'user_info' => $agent,
                'access_token' => $access_token,
                'message' => 'logged in successful'
            ]);
        } else {
            return response([
                "success" => false,
                'message' => 'You are not approved by admin yet..!'
            ], 401);
        }
    }
}
