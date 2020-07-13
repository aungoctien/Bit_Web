<?php

					$host_name="localhost";

							$user_name="root";
$password="";
$db_name="bit_db";



                    $ho_ten= $_POST['txthoten'] ;

                    $vai_tro=$_POST['txtvaitro'] ;

                    



                    $file_luu_tam=$_FILES['txtanh']['tmp_name'];

                    $ten_file_anh=basename($_FILES['txtanh']['name']);

                    $luu_file=move_uploaded_file($file_luu_tam,"../../img/nha_sang_lap/".$ten_file_anh);



					$ket_noi=mysqli_connect($host_name, $user_name, $password, $db_name);

                    $query="INSERT INTO tbl_nha_sang_lap

                    VALUES (NULL,'".$ho_ten."', '".$vai_tro."', '".$ten_file_anh."')";

                    $noi_dung=mysqli_query($ket_noi, $query);



                    echo 

		"

			<script type='text/javascript'>

				window.alert('Bạn đã thêm nhà sáng lập mới thành công.');

			</script>

		";



		// Chuyển người dùng vào trang quản trị tin tức



		echo 

		"

			<script type='text/javascript'>

				window.location.href = '../quan_tri_nha_sang_lap.php'

			</script>

		";

?>