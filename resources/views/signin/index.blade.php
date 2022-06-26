@extends('layouts.main')

@section('container')

<div class="row justify-content-center">
    <div class="col-md-4 mt-5">

      @if (session()->has('success'))
          <div class="alert alert-success alter-dismissible fade show" role="alert">
              {{ session('success') }}
          </div>
      @endif
      @if (session()->has('SignError'))
          <div class="alert alert-danger alter-dismissible fade show" role="alert">
              {{ session('SignError') }}
          </div>
      @endif

        <main class="form-signin">
            <form action="/sign-in" method="post">
              @csrf
              <h1 class="h3 mb-3 fw-normal text-center"> Sign In</h1>
          
              <div class="form-floating">
                <input type="email" name="email" class="form-control @error('email') is-invalid @enderror" id="email" placeholder="name@example.com" autofocus>
                <label for="email">Alamat Email</label>
                @error('email')
                      <div class="invalid-feedback">{{ $message }}</div>
                    @enderror
              </div>
              <div class="form-floating">
                <input type="password" name="password" class="form-control @error('password') is-invalid @enderror" id="password" placeholder="Password">
                <label for="password">Password</label>
                @error('password')
                      <div class="invalid-feedback">{{ $message }}</div>
                    @enderror
              </div>

              <button class="w-100 btn btn-lg btn-primary" type="submit">Sign in</button>
            </form>

            <small class="d-block text-center mt-3">Belum Registrasi? <a href="/register">Daftar Sekarang</a></small>
        </main>
    </div>
</div>
@endsection