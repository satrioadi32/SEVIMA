<?php

use App\Http\Controllers\RegisterController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\SigninController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('landing', [
        "title" => "Landing Page"
    ]);
});

Route::get('/home', function(){
    return view('home', [
        "title" => "Home"
    ]);
});

Route::get('/materi-belajar', function(){
    return view('materi', [
        "title" => "Materi Belajar"
    ]);
});

Route::get('/about', function(){
    return view('about', [
        "title" => "About"
    ]);
});

Route::get('/sign-in', [SigninController::class, 'index']);

Route::get('/register', [RegisterController::class, 'index']);