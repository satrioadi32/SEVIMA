@extends('layouts.main')

@section('container')
    @foreach ($materi as $value)
        <article class="mb-5">
            <h2>
                <a href="/materi-belajar/{{ $value->id }}">{{ $value->title }}</a>
            </h2>
            <p>{{ $value->body }}</p>
        </article>       
    @endforeach
@endsection