<?php
require 'koneksi.php';
if(isset($_POST["submit"])){
  $name = $_POST["name"];
  $kota = $_POST["kota"];
  $alamat = $_POST["alamat"];
  $lokasi = $_POST["lokasi"];
  $harga = $_POST["harga"];
  $contact = $_POST["contact"];
  $deskripsi = $_POST["deskripsi"];
  $jenisWisata = $_POST["jenisWisata"];

  
  if($_FILES["image"]["error"] == 4){
    echo
    "<script> alert('Image Does Not Exist'); </script>"
    ;
  }
  else{
    $fileName = $_FILES["image"]["name"];
    $fileSize = $_FILES["image"]["size"];
    $tmpName = $_FILES["image"]["tmp_name"];

    $validImageExtension = ['jpg', 'jpeg', 'png'];
    $imageExtension = explode('.', $fileName);
    $imageExtension = strtolower(end($imageExtension));
    if ( !in_array($imageExtension, $validImageExtension) ){
      echo
      "
      <script>
        alert('Invalid Image Extension');
      </script>
      ";
    }
    else if($fileSize > 1000000){
      echo
      "
      <script>
        alert('Image Size Is Too Large');
      </script>
      ";
    }
    else{
      $newImageName = uniqid();
      $newImageName .= '.' . $imageExtension;

      move_uploaded_file($tmpName, 'src/public/wisata/' . $newImageName);
      $query = "INSERT INTO wisata VALUES('', '$name', '$kota', '$alamat', '$lokasi', '$harga', '$contact', '$newImageName','$deskripsi', '$jenisWisata')";
      mysqli_query($koneksi, $query);
      echo
      "
      <script>
        alert('Successfully Added');
        document.location.href = 'discover.php';
      </script>
      ";
    }
  }
}
?>