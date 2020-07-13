<?php 

    	$host_name="localhost";

							$user_name="root";
$password="";
$db_name="bit_db";



        //Lấy data vào biến

        $name=$_POST['txtname'];

        $email=$_POST['txtemail'];

        $comment=$_POST['txtcmt'];

        $id_tin_tuc=$_POST['txtidtintuc'];

        //

		$ket_noi=mysqli_connect($host_name, $user_name, $password, $db_name);

		$query="INSERT INTO tbl_comment VALUES (NULL,'".$name."' , '".$email."' , '".$comment."' , '".$id_tin_tuc."')";

		$luu_du_lieu=mysqli_query($ket_noi, $query);

		

		echo 

		"

			<script type='text/javascript'>

				window.alert('Bạn đã thêm bình luận mới thành công.');

			</script>

		";



		// Chuyển người dùng vào trang quản trị tin tức



		echo 

		"

			<script type='text/javascript'>

				window.location.href = './index.php'

			</script>

		";
