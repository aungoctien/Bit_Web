<?php

$host_name="localhost";

$user_name="root";
$password="";
$db_name="bit_db";



                    $tieu_de= $_POST['txttieude'] ;

                    $id_loai_album=$_POST['txtidloaialbum'] ;

                    $ngay=$_POST['txtngaydang'] ;

                    $ghi_chu=$_POST['txtghichu'] ;

					$id=$_POST['txtid'];

                    $file_luu_tam=$_FILES['txtanh']['tmp_name'];

                    $ten_file_anh=basename($_FILES['txtanh']['name']);

                    $luu_file=move_uploaded_file($file_luu_tam,"../../img/album_anh/".$ten_file_anh);



					$ket_noi=mysqli_connect($host_name, $user_name, $password, $db_name);

					if($ten_file_anh==null)

					{

						$query="UPDATE tbl_album SET id_loai_album='".$id_loai_album."', tieu_de='".$tieu_de."', ngay='".$ngay."', ghi_chu='".$ghi_chu."' WHERE id='".$id."'";

					}

					else{

						$query="UPDATE tbl_album SET id_loai_album='".$id_loai_album."', tieu_de='".$tieu_de."', ngay='".$ngay."', anh='".$ten_file_anh."', ghi_chu='".$ghi_chu."' WHERE id='".$id."'";

					}

                   

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