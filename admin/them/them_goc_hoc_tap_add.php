<?php

					$host_name="localhost";

							$user_name="root";
$password="";
$db_name="bit_db";



                    $tieu_de= $_POST['txttieude'] ;

					$mo_ta=$_POST['txtmota'] ;

					$link=$_POST['txtlink'];

					

                    



                    $file_luu_tam=$_FILES['txtanh']['tmp_name'];

                    $ten_file_anh=basename($_FILES['txtanh']['name']);

                    $luu_file=move_uploaded_file($file_luu_tam,"../../img/goc_hoc_tap/".$ten_file_anh);



					$ket_noi=mysqli_connect($host_name, $user_name, $password, $db_name);

                    $query="INSERT INTO tbl_goc_hoc_tap

                    VALUES (NULL,'".$tieu_de."', '".$mo_ta."', '".$ten_file_anh."', '".$link."')";

                    $noi_dung=mysqli_query($ket_noi, $query);



                    echo 

		"

			<script type='text/javascript'>

				window.alert('Bạn đã thêm khóa học mới thành công.');

			</script>

		";

		echo 

		"

			<script type='text/javascript'>

				window.location.href = '../quan_tri_goc_hoc_tap.php'

			</script>

		";

		// Chuyển người dùng vào trang quản trị tin tức



?>