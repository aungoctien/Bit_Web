<?php 



$host_name="localhost";

							$user_name="root";
$password="";
$db_name="bit_db";

$ket_noi=mysqli_connect($host_name, $user_name, $password, $db_name);



$ten= $_POST['txtten'] ;

$mat_khau=$_POST['txtmatkhau'] ;





	$sql = "

		SELECT *

		FROM tbl_admin

		WHERE ten = '".$ten."' AND mat_khau = '".md5($mat_khau)."'

	";

	$kiem_tra_dang_nhap = mysqli_query($ket_noi, $sql);

	$so_ban_ghi = mysqli_num_rows($kiem_tra_dang_nhap);





	if ($so_ban_ghi == 0) {

		echo 

		"

			<script type='text/javascript'>

				window.alert('Đăng nhập thất bại.');

			</script>

		";



		// Chuyển người dùng vào trang quản trị tin tức

		echo 

		"

			<script type='text/javascript'>

				window.location.href = './login.html'

			</script>

		";

	} else {

		session_start();



		$_SESSION['ten'] = $ten;

		$_SESSION['quyen_han'] = 1;



		echo 

		"

			<script type='text/javascript'>

				window.alert('Bạn đã đăng nhập thành công.');

			</script>

		";



		// Chuyển người dùng vào trang quản trị tin tức

		echo 

		"

			<script type='text/javascript'>

				window.location.href = './index.php'

			</script>

		";

	}

;?>