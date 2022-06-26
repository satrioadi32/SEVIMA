@extends('layouts.main')

@section('container')
        <h1>{{ $value->title }}</h1>

        <h5 class="mt-4">Oleh : Satrio Adi N</h5>
        
            <p>Kategori :
                <a href="/kategoris/{{ $value->kategori->slug }}" class="text-decoration-none">
                    {{ $value->kategori->name }}
                </a>
            </p>
        

        {!! $value->body !!} <br>

    <a href="/materi-belajar" class="text-decoration-none">Halaman Sebelumnya</a>
@endsection