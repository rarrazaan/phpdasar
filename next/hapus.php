<?php 
require 'functions.php';
$id = $_GET["id"];

if (hapus($id) > 0){
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
}
?>