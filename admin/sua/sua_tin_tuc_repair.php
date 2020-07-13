<?php

$host_name="localhost";

$user_name="root";
$password="";
$db_name="bit_db";

					$ket_noi=mysqli_connect($host_name, $user_name, $password, $db_name);



                    $tieu_de= $_POST['txttieude'] ;

                    $noi_dung=$_POST['txtnoidung'] ;

                    $ngay=$_POST['txtngay'] ;

                    $id_loai_tin=$_POST['txtidloaitin'] ;

					$id_tin_tuc= $_POST['txtidtintuc'];



                    $file_luu_tam=$_FILES['txtanh']['tmp_name'];

                    $ten_file_anh=basename($_FILES['txtanh']['name']);

                    $luu_file=move_uploaded_file($file_luu_tam,"../../img/tin_tuc/".$ten_file_anh);



					if($ten_file_anh == NULL)

					{

						$query="UPDATE tbl_tin_tuc

						SET 

							id_loai_tin_tuc = '".$id_loai_tin."',

							tieu_de = '".$tieu_de."', 

							ngay = '".$ngay."', 

							noi_dung = '".$noi_dung."'

							

						WHERE id_tin_tuc = '".$id_tin_tuc."'";

					}

					else

					{

						$query="UPDATE tbl_tin_tuc

						SET 

							id_loai_tin_tuc = '".$id_loai_tin."',

							tieu_de = '".$tieu_de."', 

							ngay = '".$ngay."', 

							noi_dung = '".$noi_dung."', 

							anh = '".$ten_file_anh."'

						WHERE id_tin_tuc = '".$id_tin_tuc."'";

					}

                   



                    $noi_dung=mysqli_query($ket_noi, $query);



                    echo 

		"

			<script type='text/javascript'>

				window.alert('Bạn đã sửa tin tức mới thành công.');

			</script>

		";



		// Chuyển người dùng vào trang quản trị tin tức



		echo 

		"

			<script type='text/javascript'>

				window.location.href = '../quan_tri_tin_tuc.php'

			</script>

		";

?>