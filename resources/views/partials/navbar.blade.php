<nav class="navbar navbar-expand-lg navbar-dark bg-secondary">
    <div class="container-fluid">
      <a class="navbar-brand" href="/home"><i class="bi bi-book-half"></i> e-Learning</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link {{ ($title === "Home") ? 'active' : '' }}" aria-current="page" href="/home">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link {{ ($title === "Materi Belajar") ? 'active' : '' }}" href="/materi-belajar">Materi Belajar</a>
          </li>
          <li class="nav-item">
            <a class="nav-link {{ ($title === "About") ? 'active' : '' }}" href="/about">About</a>
          </li>
        </ul>
        <ul class="navbar-nav ms-auto">
            <li class="nav-item">
                <a class="nav-link {{ ($title === "Sign In") ? 'active' : '' }}" href="/sign-in"><i class="bi bi-box-arrow-in-right"></i> Sign In</a>
              </li>
        </ul>
      </div>
    </div>
  </nav>