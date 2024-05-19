<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "Penggajian";

$connection = mysqli_connect($servername, $username, $password, $dbname);
if (!$connection) {
    die("Gagal KoneksiL: " . mysqli_connect_error());
}
