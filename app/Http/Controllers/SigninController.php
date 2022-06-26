<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class SigninController extends Controller
{
    public function index(){
        return view('signin.index', [
            "title" => "Sign In"
        ]);
    }

    public function autentikasi(Request $request){
        $kredensial = $request->validate([
            'email' => 'required|email',
            'password' => 'required'
        ]);

        if(Auth::attempt($kredensial)){
            $request->session()->regenerate();
            return redirect()->intended('/home');
        }

        return back()->with('SigninError', 'Sign In Gagal');
    }
}
