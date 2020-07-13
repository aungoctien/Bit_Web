<?php

$host_name="localhost";

$user_name="root";
$password="";
$db_name="bit_db";

					$ket_noi=mysqli_connect($host_name, $user_name, $password, $db_name);



                    $ten= $_POST['txtten'] ;

					$id=$_POST['txtid'];

					



                    $query="UPDATE tbl_loai_tin_tuc SET ten_loai_tin_tuc='".$ten."' WHERE id_loai_tin_tuc='".$id."'";

                    mysqli_query($ket_noi, $query);



                    echo 

		"

			<script type='text/javascript'>

				window.alert('Bạn đã sửa thể loại thành công.');

			</script>

		";



		// Chuyển người dùng vào trang quản trị tin tức



		echo 

		"

			<script type='text/javascript'>

				window.location.href = '../quan_tri_loai_tin_tuc.php'

			</script>

		";

?>