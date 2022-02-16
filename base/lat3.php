<?php 
if (!isset($_GET["nama"]) || 
    !isset($_GET["nim"]) || 
    !isset($_GET["email"]) ||
    !isset($_GET["jurusan"]) ||
    !isset($_GET["gambar"])){
    header("Location: lat1.php");
    exit;
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Latihan 3</title>
    <style>
        .tab {
            display: inline-block;
            margin-left: 40px;
        }
        img {
            width: 200px;
            height: auto;
        }
    </style>
</head>
<body>
    <h1>Daftar Mahasiswa</h1>
    <div>
        <ul>
            <li>
                <img src="img/<?= $_GET["gambar"]?>">
            </li>
            <li>Nama<span class="tab"></span>:<?=$_GET["nama"]?></li>
            <li>NIM<span class="tab"></span>:<?=$_GET["nim"]?></li>
            <li>Jurusan<span class="tab"></span>:<?=$_GET["jurusan"]?></li>
            <li>Email<span class="tab"></span>:<?=$_GET["email"]?></li>
        </ul>
        <a href="lat1.php">Kembali ke Daftar Mahasiswa</a>
    </div>
</body>
</html>