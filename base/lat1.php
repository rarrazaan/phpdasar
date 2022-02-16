<!-- <?php 
/*
$hari = ["Senin","Selasa", "Rabu"];
var_dump($hari);
echo "<br>";
print_r($hari);
echo "<br>";
echo $hari[0];
*/
$arr = [3,45,64,6,54,9,7,564,54,32];
$mahasiswa = [
    [
        "nama" => "ABC",
        "nim" => "123",
        "jurusan" => "Informatika",
        "email" => "abc@qw.com",
        "gambar" => "748864.jpg"
    ],
    [
        "nama" => "QWE",
        "nim" => "456",
        "jurusan" => "Kedokteran",
        "email" => "qwe@qw.com",
        "gambar" => "749909.jpg"
    ]

];
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Latihan 1</title>
    <style>
        .kotak {
            width: 50px;
            height: 50px;
            background-color: salmon;
            text-align: center;
            line-height: 50px;
            margin: 3px;
            float: left;
        }
        .clear {clear: both;}
    </style>
</head>
<body>
    <?php //for($i = 0; $i < count($arr); $i++) :?>
        <div  class="kotak"> <?php //echo $arr[$i] ?> </div>
    <?php //endfor ?>

    <div class="clear"></div>

    <?php //foreach( $arr as $a) :?>
        <div class="kotak"><?php //echo $a ?></div>
    <?php //endforeach ?>
</body>
</html> -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Latihan 1</title>
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
    <?php foreach ($mahasiswa as $value) :?>
    <div>
        <ul>
            <li>
                <a href="lat3.php?nama=<?=$value["nama"]?>
                &nim=<?=$value["nim"]?>
                &jurusan=<?=$value["jurusan"]?>
                &email=<?=$value["email"]?>
                &gambar=<?=$value["gambar"]?>
                "><?=$value["nama"]?></a>
            </li>
        </ul>
    </div>
    <?php endforeach?>
</body>
</html>