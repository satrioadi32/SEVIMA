@extends('layouts.main')

@section('container')
    <article>
        <h2>{{ $value["title"] }}</h2>
        <h5>{{ $value["author"] }}</h5>
        <p>{{ $value["body"] }}</p>
    </article>

    <a href="/materi-belajar">Halaman Sebelumnya</a>
@endsection