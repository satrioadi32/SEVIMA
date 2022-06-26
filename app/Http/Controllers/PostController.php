<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Post;

class PostController extends Controller
{
    public function index(){
        return view('materi', [
            "title" => "Post",
            "materi" => Post::all()

        ]);
    }

    public function show(Post $post){
        return view('value', [
            "title" => "Penjelasan",
            "value" => $post
        ]);
    }
}
