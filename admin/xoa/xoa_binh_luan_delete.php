<?php

					$host_name="localhost";

							$user_name="root";
$password="";
$db_name="bit_db";



                    $id=$_GET['id'];

					$ket_noi=mysqli_connect($host_name, $user_name, $password, $db_name);

                    $query="DELETE FROM tbl_comment WHERE id_comment='".$id."'";

                    $noi_dung=mysqli_query($ket_noi, $query);



                    echo 

		"

			<script type='text/javascript'>

				window.alert('Bạn đã xóa bình luận thành công');

			</script>

		";





		echo 

		"

			<script type='text/javascript'>

				window.location.href = '../quan_tri_binh_luan.php'

			</script>

		";

?>