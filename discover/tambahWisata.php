<?php require './src/component/head.php' ?>

  <body>
    <?php require './src/component/heroHeaderAdmin.php' ?>

    <div class="container pt-4">
        <form class="" action="tambahWisataAction.php" method="post" autocomplete="off" enctype="multipart/form-data">
          <div class="row p-2 border rounded-2 m-2">
            <label for="name" class="form-label">Nama Destinasi : </label>
            <input type="text" name="name" id = "name" required value="" class="form-control">
          </div>
          <div class="row p-2 border rounded-2 m-2">
            <label for="kota" class="form-label">Kota : </label>
            <input type="text" name="kota" id = "kota" required value="" class="form-control">
          </div>

          <div class="row p-2 border rounded-2 m-2">
            <label for="alamt" class="form-label">Alamat : </label>
            <input type="text" name="alamat" id = "alamat" required value="" class="form-control">
          </div>

          <div class="row p-2 border rounded-2 m-2">
            <label for="lokasi" class="form-label">Lokasi : </label>
            <input type="text" name="lokasi" id = "lokasi" required value="" class="form-control">
          </div>
        
          <div class="row p-2 border rounded-2 m-2">
            <label for="harga" class="form-label">Harga Masuk : </label>
            <input type="text" name="harga" id = "harga" required value="" class="form-control">
          </div>

          <div class="row p-2 border rounded-2 m-2">
            <label for="contantPerson" class="form-label">Contact Person : </label>
            <input type="text" name="contact" id = "contact" required value="" class="form-control">
          </div>

          <div class="row p-2 border rounded-2 m-2">
            <label for="image" class="form-label">Image : </label>
            <input type="file" name="image" id = "image" accept=".jpg, .jpeg, .png" value="" class="form-control"> 
          </div>

          <div class="row p-2 border rounded-2 m-2">
            <label for="jenisWisata" class="form-label">Jenis Wisata : </label>
            <select name="jenisWisata" id="jenisWisata"  class="form-select">
              <option value="0" disabled>Pilih Jenis Wisata</option>
              <?php 
                require 'koneksi.php';
                $rows = mysqli_query($koneksi, "SELECT * FROM jenis_wisata");   
              ?>
              <?php foreach ($rows as $row) : ?>
                <option value="<?= $row['id_jenis_wisata'],['nama_jenis_wisata']; ?>"><?=$row['nama_jenis_wisata'];?></option>
              <?php endforeach; ?>
            </select>
          </div>        

          <div class="row p-2 border rounded-2 m-2"> 
            <label for="deskripsi" class="form-label">Deskripsi : </label>
            <textarea name="deskripsi" id="deskripsi" class="form-control">
            </textarea>
          </div>

          <div class="row p-2 border rounded-2 m-2">
            <button type = "submit" name = "submit" class="btn btn-primary">Submit</button>
          </div>
        
      
      </form>    
    </div>
  </body>
</html>

