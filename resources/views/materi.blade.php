@extends('layouts.main')

@section('container')
    @foreach ($materi as $value)
        <article class="mb-5 border-bottom pb-4">
            <h2>
                <a href="/materi-belajar/{{ $value->id }}" class="text-decoration-none">{{ $value->title }}</a>
            </h2>
            <p>{{ $value->excerpt }}</p>
        </article>       
    @endforeach
@endsection