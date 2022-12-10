<?php

$server = 'localhost';
$username = 'root';
$password = '';
$db = 'wilo_apps';

$koneksi = mysqli_connect($server, $username, $password, $db);

if (mysqli_connect_errno()) {
	echo "KONEKSI GAGAL : " . mysqli_connect_error();
}
