<?php

					

                    $host_name="localhost";

							$user_name="root";
$password="";
$db_name="bit_db";

							

                     $tieu_de= $_POST['txttieude'] ;

                    $noi_dung=$_POST['txtnoidung'] ;

                    $ngay=$_POST['txtngay'] ;

                    $id_loai_tin=$_POST['txtidloaitin'] ;



                    $file_luu_tam=$_FILES['txtanh']['tmp_name'];

                    $ten_file_anh=basename($_FILES['txtanh']['name']);

                    $luu_file=move_uploaded_file($file_luu_tam,"../../img/tin_tuc/".$ten_file_anh);



					$ket_noi=mysqli_connect($host_name, $user_name, $password, $db_name);

                    $query="INSERT INTO tbl_tin_tuc

                 VALUES (NULL,'".$id_loai_tin."', '".$tieu_de."', '".$ngay."', '".$noi_dung."', '".$ten_file_anh."')";



                    $noi_dung=mysqli_query($ket_noi, $query);



                    echo 

		"

			<script type='text/javascript'>

				window.alert('Bạn đã thêm tin tức mới thành công.');

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