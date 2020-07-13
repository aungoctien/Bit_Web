<?php

					$host_name="localhost";

							$user_name="root";
$password="";
$db_name="bit_db";



                   $id=$_GET['id'];

                   



					$ket_noi=mysqli_connect($host_name, $user_name, $password, $db_name);

					$query="DELETE FROM tbl_loai_album WHERE id_loai_album='".$id."'";

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

				window.location.href = '../quan_tri_loai_album.php'

			</script>

		";

?>