<!DOCTYPE html>

<html class="no-js">





<head>

    <meta charset="utf-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>Album</title>

    <meta name="description" content="">

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="./css/chi_tiet.css">

</head>



<body class="body">



<?php 

                            $id=$_GET['id'];



                            $host_name="localhost";

							$user_name="root";
$password="";
$db_name="bit_db";

                            $ket_noi=mysqli_connect($host_name, $user_name, $password, $db_name);

							$query="SELECT * FROM tbl_album WHERE id = '".$id."'";

							$noi_dung=mysqli_query($ket_noi, $query);

							$row=mysqli_fetch_array($noi_dung);



                         ?>

    <div class="u-center-text">

        <img style="width:800px;" src="../img/album_anh/<?php echo $row['anh']?>" alt="no_photo">

    </div>

</body>

</html>

