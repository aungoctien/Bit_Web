<?php

$host_name="localhost";

$user_name="root";
$password="";
$db_name="bit_db";

					$ket_noi=mysqli_connect($host_name, $user_name, $password, $db_name);



                    $tieu_de= $_POST['txttieude'] ;

					$mo_ta=$_POST['txtmota'] ;

					$link=$_POST['txtlink'];

                    $id=$_POST['txtidgochoctap'];



                    $file_luu_tam=$_FILES['txtanh']['tmp_name'];

                    $ten_file_anh=basename($_FILES['txtanh']['name']);

                    $luu_file=move_uploaded_file($file_luu_tam,"../../img/goc_hoc_tap/".$ten_file_anh);

					if($ten_file_anh==null)

					{

						$query="UPDATE tbl_goc_hoc_tap SET tieu_de='".$tieu_de."', mo_ta='".$mo_ta."', link='".$link."' WHERE id_goc_hoc_tap='".$id."'";

					}

					else

					{

						$query="UPDATE tbl_goc_hoc_tap SET tieu_de='".$tieu_de."', mo_ta='".$mo_ta."', anh='".$ten_file_anh."', link='".$link."' WHERE id_goc_hoc_tap='".$id."'";

					}

                    

					mysqli_query($ket_noi, $query);



                    echo 

		"

			<script type='text/javascript'>

				window.alert('Bạn đã sửa thành công.');

			</script>

		";



		// Chuyển người dùng vào trang quản trị tin tức



		echo 

		"

			<script type='text/javascript'>

				window.location.href = '../quan_tri_goc_hoc_tap.php'

			</script>

		";

?>