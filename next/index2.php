<?php 
// koneksi db
$conn  = mysqli_connect("localhost", "root", "", "test", "3306");

// ambil data dari tabel mahasiswa
$result = mysqli_query($conn, "SELECT * FROM test1");

// ambil data (fetch) mahasiswa dari object result
//mysqli_fetch_row() recom (return array numeric)
//mysqli_fetch_assoc() recom (return array associative)
//mysqli_fetch_array() (return array numeric n assoc)
//mysqli_fetch_object()

// while ($mhs = mysqli_fetch_assoc($result)) {
//     var_dump($mhs);
// }

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
        while ($row = mysqli_fetch_assoc($result)):
    ?>
        <tr>
            <td><?= $i ?></td>
            <td>
                <a href="#">ubah</a> |
                <a href="#">hapus</a>
            </td>
            <td>
                <img src="img/<?= $row["Image"];?>" 
                width="50">
            </td>
            <td><?= $row["nim"]?></td>
            <td><?= $row["name"] ?></td>
            <td><?= $row["email"] ?></td>
            <td><?= $row["jurusan"] ?></td>
        </tr>
    <?php 
            $i++;
        endwhile;
    ?>

    </table>


</body>
</html>