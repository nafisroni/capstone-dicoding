<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Wilo Apps</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="src/styles/discover.css">
    <link rel="stylesheet" href="src/styles/responsive.css">
    <link href="./src/public/icon/favicon.png" rel="icon">
</head>
  <body>
  <!-- Hero + Navbar -->
    <div class="hero">
        <nav class="navbar navbar-expand-lg bg-transparent pt-2">
            <div class="container-fluid">
              <a class="navbar-brand fw-bold" href="#">WILO APPS</a>
              <button class="navbar-toggler bg-white" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon "></span>
              </button>
              <div class="collapse navbar-collapse offset-7" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                  <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="#">Home</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">Explore</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">Contact</a>
                  </li>
                  <li class="nav-item">
                    <button class="btn btn-primary nav-link fw-bold text-white" href="#">LOGIN</button>
                  </li>
                </ul>
              </div>
            </div>
          </nav>

        <div class="hero-text row">
                <h1 class="hero-title">Temukan Wisatamu</h1>
                  
                <p class="hero-subtitle">
                  Ribuan tempat wisata sedang menanti kehadiran anda
                </p>
        </div>
    </div>

    <main id="main-content" class=" container-fluid my-5">
      <!-- Search Content -->
      <div id="search-content" class="search-content my-5">
            <div class="row pt-3">
                <h2 class="h2 text-center">
                    Temukan Wisata di Kota Mu
                </h2>
            </div>

        <!-- Search Bar -->
            <div class="row mt-3" id="search-bar">
                <div class="search-content my-5">
        <!-- Search bar title -->
        
        <!-- search bar -->
                    <div class="row mt-3">
                        <div class="col-8 offset-2">
                            <div class="row">
                                <form class="d-flex p-1" role="search">
                                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                                    <button class="btn orange btn-search" type="submit">Search</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
      </div>

      <div id="category" class="category my-5">
        <div class="row pt-3">
          <h2 class="h2 text-center">
            Cari Berdasarkan Ketegori
          </h2>
        </div>

        <!-- Category -->
        <div class="grid-cate">
          <?php
						include 'koneksi.php';

						$jeniswisata = mysqli_query($koneksi, "SELECT * FROM jenis_wisata");
            
					?>
          <?php foreach ($jeniswisata as $row) : ?>
          <div class="col">
            <div class="card">
              <img src="src/public/jenisWisata/<?php echo $row["image"]; ?>" class="card-img-top img-cate" title="<?php echo $row['image']; ?>"> 
              <div class="card-body">
                <div class="row">
                  <h5 class="card-title"><?= $row['nama_jenis_wisata']; ?></h5>
                </div>
                <div class="row">
                  <button type="submit" class="btn orange">Jelajahi</button>
                </div>
              </div>
            </div>
          </div>
          <?php endforeach; ?>
        </div>
      </div>
      
      <div id="result" class="result my-5">
        <div class="row py-3">
          <h2 class="text-center h2">
            Rekomendasi Wisata yang Kami Punya
          </h2>
        </div>

        <div class="grid-result">
        <?php
						$wisata = mysqli_query($koneksi, "SELECT * FROM wisata, jenis_wisata WHERE jenis_wisata_id_jenis_wisata = id_jenis_wisata");            
					?>
        <?php foreach ($wisata as $row) : ?>
        <div class="col">
            <div class="card">
              <img src="src/public/wisata/<?php echo $row["image_wisata"]; ?>" class="card-img-top img-result" title="<?php echo $row['image_wisata']; ?>">
              <dv class="card-body row">
                <div class="col">
                  <h6 class="card-title text-center"><?= $row['nama_jenis_wisata']; ?></h6>
                </div>
                <div class="col">
                  <h6 class="card-title text-center"><?= $row['nama_wisata']; ?></h6>
                </div>

              </dv>
            </div>
          </div>
          <?php endforeach; ?>
        </div>
        <hr>  
      </div>

      <div class="contact">
        <custom-contact></custom-contact>
      </div>

    </main>

    <footer>
      <p class="h2">Wilo Apps</p>
    </footer>    
    

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
    <script src="src/scripts/app.js" type="module"></script>
  </body>
</html>

