<?php

					$host_name="localhost";

							$user_name="root";
$password="";
$db_name="bit_db";



                    $ten= $_POST['txtten'] ;

					

					$ket_noi=mysqli_connect($host_name, $user_name, $password, $db_name);

                    $query="INSERT INTO tbl_loai_tin_tuc

                    VALUES (NULL,'".$ten."')";

                    $noi_dung=mysqli_query($ket_noi, $query);



                    echo 

		"

			<script type='text/javascript'>

				window.alert('Bạn đã thêm thể loại mới thành công.');

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