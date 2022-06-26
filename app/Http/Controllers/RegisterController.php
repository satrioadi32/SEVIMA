<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class RegisterController extends Controller
{
    public function index(){
        return view('register.index', [
            'title' => 'Register',

        ]);
    }

    public function store(Request $request){
        $validasiData = $request->validate([
            'name' => 'required|max:191',
            'username' => ['required','min:3','unique:users'],
            'email' => 'required|email|unique:users',
            'password' => 'required|min:8|max:191'
        ]);

        $validasiData['password'] = Hash::make($validasiData['password']);

        User::create($validasiData);
        
        return redirect('/sign-in')->with('success', 'Registrasi Berhasil, Silakan Sign In');
    }
}
