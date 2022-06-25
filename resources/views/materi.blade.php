@extends('layouts.main')

@section('container')
    @foreach ($materi as $value)
        <article class="mb-5">
            <h2>
                <a href="/materi-belajar/{{ $value["slug"] }}">{{ $value["title"] }}</a>
            </h2>
            <h5>Oleh : {{ $value["author"] }}</h5>
            <p>{{ $value["body"] }}</p>
        </article>       
    @endforeach
@endsection