<?php

					$host_name="localhost";

							$user_name="root";
$password="";
$db_name="bit_db";

					$ket_noi=mysqli_connect($host_name, $user_name, $password, $db_name);



                    $tieu_de= $_POST['txttieude'] ;

                    $id_loai_album=$_POST['txtidloaialbum'] ;

                    $ngay=$_POST['txtngaydang'] ;

                    $ghi_chu=$_POST['txtghichu'] ;



                    $file_luu_tam=$_FILES['txtanh']['tmp_name'];

                    $ten_file_anh=basename($_FILES['txtanh']['name']);

                    $luu_file=move_uploaded_file($file_luu_tam,"../../img/album_anh/".$ten_file_anh);



					$query="INSERT INTO tbl_album

                    VALUES (NULL,'".$id_loai_album."', '".$tieu_de."', '".$ngay."', '".$ten_file_anh."', '".$ghi_chu."')";

					

                    $noi_dung=mysqli_query($ket_noi, $query);



                    echo 

		"

			<script type='text/javascript'>

				window.alert('Bạn đã thêm ảnh mới thành công.');

			</script>

		";



		// Chuyển người dùng vào trang quản trị tin tức



		echo 

		"

			<script type='text/javascript'>

				window.location.href = '../quan_tri_album_anh.php'

			</script>

		";

?>