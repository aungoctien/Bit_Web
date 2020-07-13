<?php

$host_name="localhost";

$user_name="root";
$password="";
$db_name="bit_db";

					$ket_noi=mysqli_connect($host_name, $user_name, $password, $db_name);



                    $ten_album= $_POST['txttenalbum'] ;

					$mo_ta=$_POST['txtmota'] ;

					$id=$_POST['txtidloaialbum'];



                    $file_luu_tam=$_FILES['txtanh']['tmp_name'];

                    $ten_file_anh=basename($_FILES['txtanh']['name']);

                    $luu_file=move_uploaded_file($file_luu_tam,"../../img/loai_album/".$ten_file_anh);



					if($ten_file_anh==null)

					{

						$query="UPDATE tbl_loai_album SET ten_album='".$ten_album."', mo_ta='".$mo_ta."' WHERE id_loai_album='".$id."'";	

					}

					else{

						$query="UPDATE tbl_loai_album SET ten_album='".$ten_album."', mo_ta='".$mo_ta."', anh='".$ten_file_anh."' WHERE id_loai_album='".$id."'";	

					}

                   

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

				window.location.href = '../quan_tri_loai_album.php'

			</script>

		";

?>