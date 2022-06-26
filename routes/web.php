<?php

use App\Http\Controllers\PostController;
use App\Http\Controllers\RegisterController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\SigninController;
use App\Models\Post;
use App\Models\Kategori;

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


Route::get('/materi-belajar', [PostController::class, 'index']);

Route::get('materi-belajar/{post}', [PostController::class, 'show']);

Route::get('/about', function(){
    return view('about', [
        "title" => "About"
    ]);
});

Route::get('/sign-in', [SigninController::class, 'index']);
Route::post('/sign-in', [SigninController::class, 'autentikasi']);

Route::get('/register', [RegisterController::class, 'index']);
Route::post('/register', [RegisterController::class, 'store']);


Route::get('kategoris', function(){
    return view('kategoris', [
        'title' => 'Kategori Materi Pembelajaran',
        'kategoris' => Kategori::all()
    ]);
});

Route::get('/kategoris/{kategori:slug}', function(Kategori $kategori){
    return view('kategori', [
        'title' => $kategori->name,
        'materi' => $kategori->posts,
        'kategori' => $kategori->name
    ]);
});