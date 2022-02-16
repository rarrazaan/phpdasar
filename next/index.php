<?php 
require 'functions.php';
$mhs = query("SELECT * FROM test1 ORDER BY id ASC");

if (isset($_POST["cari"])){
    $mhs = cari($_POST["keyword"]);
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Halaman Admin</title>
</head>
<body>
    
    <h1>Daftar Mahasiswa</h1>
    <a href="tambah.php">Tambah data mahasiswa</a>

    <form action="" method="post">
        <input type="text" name="keyword" size="40" autofocus 
        placeholder="Masukkan keyword pencarian.." autocomplete="off">
        <button type="submit" name="cari">search</button>
    </form>
    <br>
    <table border="1" cellpadding="10" cellspacing="0">

    <tr>
        <th>No.</th>
        <th>Aksi</th>
        <th>Gambar</th>
        <th>NIM</th>
        <th>Nama</th>
        <th>Email</th>
        <th>Jurusan</th>
    </tr>

    <?php 
        $i = 1;
        foreach ($mhs as $row) :
    ?>
        <tr>
            <td><?= $i ?></td>
            <td>
                <a href="ubah.php?id=<?= $row["id"];?>" onclick="
                return confirm('Update data?')">ubah</a> |
                <a href="hapus.php?id=<?= $row["id"];?>" onclick="
                return confirm('Delete data?')">hapus</a>
            </td>
            <td>
                <img src="img/<?= $row["gambar"];?>" 
                width="50">
            </td>
            <td><?= $row["nim"]?></td>
            <td><?= $row["nama"] ?></td>
            <td><?= $row["email"] ?></td>
            <td><?= $row["jurusan"] ?></td>
        </tr>
    <?php 
            $i++;
        endforeach;
    ?>

    </table>


</body>
</html>