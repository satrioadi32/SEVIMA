<?php

namespace App\Models;

class Post
{
    private static $blog_posts = [
        [
            "title" => "Judul Pertama",
            "slug" => "judul-pertama",
            "author" => "Satrio Adi",
            "body" => "Some great placeholder content for the first featurette here.
            Imagine some exciting prose here.Some great placeholder content for the first featurette here.
             Imagine some exciting prose here."
        ],
        [
            "title" => "Judul Ke Dua",
            "slug" => "judul-ke-dua",
            "author" => "Moh Ibra",
            "body" => "Some great placeholder content for the first featurette here.
            Imagine some exciting prose here.Some great placeholder content for the first featurette here.
            Imagine some exciting prose here."
        ]
    ];

    public static function all(){
        return collect(self::$blog_posts);
    }

    public static function find($slug){
        $materi = static::all();
        // $value = [];
        // foreach($materi as $val){
        //     if($val["slug"] === $slug){
        //         $value = $val;
        //     }
        // }
        return $materi->firstWhere('slug', $slug);
    }
}
