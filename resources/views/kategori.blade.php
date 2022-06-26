@extends('layouts.main')

@section('container')
    <h1 class="mb-5">Kategori Materi Belajar : {{ $kategori }}</h1>

    @foreach ($materi as $value)
        <article class="mb-5">
            <h2>
                <a href="/materi-belajar/{{ $value->id }}">{{ $value->title }}</a>
            </h2>
            <p>{{ $value->excerpt }}</p>
        </article>       
    @endforeach
@endsection