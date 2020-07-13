<?php

					$host_name="localhost";

							$user_name="root";
$password="";
$db_name="bit_db";

					$ket_noi=mysqli_connect($host_name, $user_name, $password, $db_name);



                    $ten=$_POST['txtten'];

                    $mat_khau=$_POST['txtmatkhau'];



					$query="INSERT INTO tbl_admin

                    VALUES (NULL,'".$ten."',  '".md5($mat_khau)."')";

					

                    $noi_dung=mysqli_query($ket_noi, $query);



        echo 

		"

			<script type='text/javascript'>

				window.alert('Bạn đã thêm admin mới thành công.');

			</script>

		";





		echo 

		"

			<script type='text/javascript'>

				window.location.href = '../quan_tri_admin.php'

			</script>

		";

?>