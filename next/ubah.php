<?php 
require 'functions.php';

$id = $_GET["id"];
$mhs = query("SELECT * FROM test1 WHERE id = $id")[0];

if(isset($_POST["submit"])){
    // Query check
    if (ubah($_POST, $id) > 0){
        echo "
        <script>
            alert('Query Berhasil!')
            document.location.href = 'index.php'
        </script>
        ";
        
    } else {
        echo "
        <script>
            alert('Query Gagal!')
            document.location.href = 'index.php'
        </script>
        ";
        echo mysqli_error($conn);
    }
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ubah Data Mahasiswa</title>
</head>
<body>
    <h1>Ubah Data Mahasiswa</h1>

    <form action="" method="post" enctype="multipart/form-data">
        
        <input type="hidden" name="gambarlama" value="<?= $mhs["gambar"]; ?>">
        <ul>
            <li>
                <label for="nim">NIM :</label>
                <input type="text" name="nim" id="nim" required value="<?= $mhs["nim"];?>">
            </li>
            <li>
                <label for="nama">Nama :</label>
                <input type="text" name="nama" id="nama" required value="<?= $mhs["nama"];?>">
            </li>
            <li>
                <label for="email">Email :</label>
                <input type="text" name="email" id="email" required value="<?= $mhs["email"];?>">
            </li>
            <li>
                <label for="jurusan">Jurusan :</label>
                <input type="text" name="jurusan" id="jurusan" required value="<?= $mhs["jurusan"];?>">
            </li>
            <li>
                <label for="gambar">Gambar :</label>
                <img src="img/<?= $mhs["gambar"]; ?>" width="40"> <br>
                <input type="file" name="gambar" id="gambar">
            </li>
            <li>
                <button type="submit" name="submit">Ubah</button>
            </li>
        </ul>

    </form>
</body>
</html>