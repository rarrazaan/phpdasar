<?php 
function fibonacci($v){
    if ($v <= 1)
        return $v;
    return fibonacci($v-1) + fibonacci($v -2);
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Latihan</title>
</head>
<body>
    <h1>fibonacci of 8 is <?= fibonacci(8);?></h1>
    <table border="1" cellpadding="10" cellspacing="0">
        <?php for ($i = 1; $i <= 3; $i++) :?>
            <tr>
                <?php for ($j = 1; $j <= 3 ; $j++) : ?>
                        <td><?= "$i, $j" ?></td>
                <?php endfor;?>
            </tr>
        <?php endfor;?>
        
    </table>
</body>
</html>