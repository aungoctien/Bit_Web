<?php

					$host_name="localhost";

							$user_name="root";
$password="";
$db_name="bit_db";



                    $id=$_GET['id'];



					$ket_noi=mysqli_connect($host_name, $user_name, $password, $db_name);

                    $query="DELETE FROM tbl_goc_hoc_tap WHERE id_goc_hoc_tap='".$id."'";

					$noi_dung=mysqli_query($ket_noi, $query);



                    echo 

		"

			<script type='text/javascript'>

				window.alert('Bạn đã xóa thành công.');

			</script>

		";

		echo 

		"

			<script type='text/javascript'>

				window.location.href = '../quan_tri_goc_hoc_tap.php'

			</script>

		";

		



?>