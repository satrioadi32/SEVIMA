@extends('layouts.main')

@section('container')
    <h1 class="mb-5">Kategori Materi Belajar : {{ $kategori }}</h1>

    @foreach ($kategoris as $value)
        <ul>
            <li>
                <h2>
                    <a href="/kategoris/{{ $value->slug }}" class="text-decoration-none">{{ $value->name }}</a>
                </h2>
            </li>
        </ul>      
    @endforeach
@endsection