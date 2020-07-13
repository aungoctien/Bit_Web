<?php

					$host_name="localhost";

							$user_name="root";
$password="";
$db_name="bit_db";



                    $ten_album= $_POST['txttenalbum'] ;

					$mo_ta=$_POST['txtmota'] ;

					$ghi_chu=$_POST['txtghichu'];

					

                    



                    $file_luu_tam=$_FILES['txtanh']['tmp_name'];

                    $ten_file_anh=basename($_FILES['txtanh']['name']);

                    $luu_file=move_uploaded_file($file_luu_tam,"../../img/loai_album/".$ten_file_anh);



					$ket_noi=mysqli_connect($host_name, $user_name, $password, $db_name);

                    $query="INSERT INTO tbl_loai_album

                    VALUES (NULL,'".$ten_album."', '".$mo_ta."', '".$ten_file_anh."')";

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

				window.location.href = '../quan_tri_loai_album.php'

			</script>

		";

?>