<?php

$host_name="localhost";

$user_name="root";
$password="";
$db_name="bit_db";

					$ket_noi=mysqli_connect($host_name, $user_name, $password, $db_name);



                    $ho_ten= $_POST['txthoten'] ;

                    $vai_tro=$_POST['txtvaitro'] ;

					$id=$_POST['txtidnhasanglap'];



                    $file_luu_tam=$_FILES['txtanh']['tmp_name'];

                    $ten_file_anh=basename($_FILES['txtanh']['name']);

                    $luu_file=move_uploaded_file($file_luu_tam,"../../img/nha_sang_lap/".$ten_file_anh);

					if($ten_file_anh==null)

					{

						$query="UPDATE tbl_nha_sang_lap SET ho_ten='".$ho_ten."', vai_tro='".$vai_tro."' WHERE id='".$id."'";

					}

					else

					{

						$query="UPDATE tbl_nha_sang_lap SET ho_ten='".$ho_ten."', vai_tro='".$vai_tro."', anh='".$ten_file_anh."' WHERE id='".$id."'";

					}

					

					



                    $noi_dung=mysqli_query($ket_noi, $query);



                    echo 

		"

			<script type='text/javascript'>

				window.alert('Bạn đã sửa nhà sáng lập thành công.');

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