<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{
    public function loginPage()
    {
        return view('admin.login');
    }
    public function login(Request $request)
    {
        $request->validate([
            'email' => 'required|email',
            'password' => 'required',
        ]);
        if (Auth::attempt($request->only(['email', 'password']))) {
            // if ($user->user_type != 1) {
            //     return redirect()->route('admin.dashboard')->with('message', 'Admin Login Succcessful.');
            // }
            return redirect()->route('admin.dashboard')->with('message', 'Login Successful!!');
        }
    }
    public function logout()
    {
        Auth::logout();
        return redirect()->route('admin.login')->with('error_message', 'Logout!!');
    }
}
