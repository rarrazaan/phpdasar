<?php
// koneksi db
$conn  = mysqli_connect("localhost", "root", "", "test", "3306");

function query($query){
    global $conn;
    $result = mysqli_query($conn, $query);
    $rows = [];
    while ($row = mysqli_fetch_assoc($result)) {
        $rows[] = $row;
    }
    return $rows;
}

function tambah($data){
    global $conn;
    $nim = htmlspecialchars($data["nim"]);
    $nama = htmlspecialchars($data["nama"]);
    $email = htmlspecialchars($data["email"]);
    $jurusan = htmlspecialchars($data["jurusan"]);
    $gambar = upload();

    if (!$gambar){
        return false;
    }

    $query = "INSERT INTO `test1` 
    (`id`, `nim`, `nama`, `email`, `jurusan`, `gambar`) 
    VALUES 
    (NULL, '$nim', '$nama', '$email', '$jurusan', '$gambar')";
    mysqli_query($conn, $query);

    return mysqli_affected_rows($conn);
}

function upload(){
    $namafile = $_FILES['gambar']['name'];
    $filesize = $_FILES['gambar']['size'];
    $error = $_FILES['gambar']['error'];
    $tmpname = $_FILES['gambar']['tmp_name'];

    // cek user sudah upload
    if ($error === 4){
        echo "
        <script>
            alert('Tambahkan gambar!');
        </script>
        ";
        return false;
    }

    // cek ext file
    $validext = ['jpg', 'jpeg', 'png'];
    $fileext = explode('.', $namafile);
    $fileext = strtolower(end($fileext));
    if (!in_array($fileext, $validext)){
        echo "
        <script>
            alert('upload harus gambar!');
        </script>
        ";
        return false;
    }

    // cek size file
    if ($filesize>5000000){
        echo "
        <script>
            alert('file terlalu besar!');
        </script>
        ";
        return false;
    }

    // generate nama gambar baru in case ada yg sama
    $newname = uniqid();
    $newname .= ".";
    $newname .= $fileext;

    // up file
    move_uploaded_file($tmpname, 'img/' . $newname);

    return $newname;
}

function hapus($id){
    global $conn;
    mysqli_query($conn, "DELETE FROM test1 WHERE id = $id");
    return mysqli_affected_rows($conn);
}

function ubah($data, $id){
    global $conn;
    $nim = htmlspecialchars($data["nim"]);
    $nama = htmlspecialchars($data["nama"]);
    $email = htmlspecialchars($data["email"]);
    $jurusan = htmlspecialchars($data["jurusan"]);
    $gambarlama = htmlspecialchars($data["gambarlama"]);

    //cek user up gambar baru
    if ($_FILES['gambar']['error'] === 4){
        $gambar = $gambarlama;
    } else {
        $gambar = upload();
    }

    $query = "UPDATE `test1` SET 
                nim = '$nim',
                nama = '$nama',
                email = '$email',
                jurusan = '$jurusan',
                gambar = '$gambar'
                WHERE id = $id
            ";
    mysqli_query($conn, $query);

    return mysqli_affected_rows($conn);
}

function cari($keyword){
    $query = "SELECT * FROM test1
            WHERE
            nama LIKE '%$keyword%' OR
            nim LIKE '%$keyword%' OR
            email LIKE '%$keyword%' OR
            jurusan LIKE '%$keyword%'";
    return query($query);
}
?>