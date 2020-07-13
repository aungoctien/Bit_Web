<?php

                        //dat ten bien

                        $ho_ten=$_POST['txthoten'];

                        $sdt=$_POST['txtsdt'];       

                        $email=$_POST['txtemail']; 

                        $gioi_tinh=$_POST['txtgioitinh'];

                        $lop=$_POST['txtlop'];

                        $ngay_sinh=$_POST['txtngaysinh'];

                        $dia_chi=$_POST['txtdiachi'];

                        $phuong_tien=$_POST['txtphuongtien'];

                        $link_fb=$_POST['txtlinkfb'];

                        $hy_vong=$_POST['txthyvong'];

                        $ban_nganh=$_POST['txtbannganh'];  

                        

						$host_name="localhost";
$user_name="root";
$password="";
$db_name="bit_db";



						$ket_noi=mysqli_connect($host_name, $user_name, $password, $db_name);

						$query="INSERT INTO tbl_tuyen_dung

                                    VALUES (NULL, '".$ho_ten."', '".$sdt."', '".$email."', '".$gioi_tinh."', '".$lop."', '".$ngay_sinh."', '".$dia_chi."', '".$phuong_tien."', '".$link_fb."', '".$hy_vong."', '".$hy_vong."')";  



                        $luu_du_lieu=mysqli_query($ket_noi, $query);

  



						////////////////////////////

						

    //goi thu vien

    include ('./contact/class.smtp.php');

    include "./contact/class.phpmailer.php"; 

    $nFrom = "BIT.hvnh";    //mail duoc gui từ đâu

    $mFrom = 'botienhuyenthoai@gmail.com';  //dia chi email của mình (trung gian)

    $mPass = 'qxvxcysoqarxpmio';       //mat khau email của mình ( đã cấu hình)

    $nTo = 'Admin-BIT'; //Ten nguoi nhan

    $mTo = 'aungoctien21031999@gmail.com';   //dia chi nhan mail

	$mail             = new PHPMailer();

	



	$body             = $ho_ten.'<br>'.$sdt.'<br>'.$lop.'<br>'.$gioi_tinh.

	'<br>'.$ngay_sinh.'<br>'.$dia_chi.'<br>'.$phuong_tien.'<br>'.$link_fb.

	'<br>'.$hy_vong.'<br>'.$ban_nganh.'<br>';











    $title = 'Phản hồi của người dùng';   //Tieu de gui mail

    $mail->IsSMTP();             

    $mail->CharSet  = "utf-8";

    $mail->SMTPDebug  = 0;   // ?? ko hiểu

    $mail->SMTPAuth   = true;    // bật SMTP 

    $mail->SMTPSecure = "ssl";   //giao thức

    $mail->Host       = "smtp.gmail.com";    // sever gui mail.

    $mail->Port       = 465;         // cong gui mail de nguyen

    // xong phan cau hinh bat dau phan gui mail

    $mail->Username   = $mFrom;  // khai bao dia chi email

    $mail->Password   = $mPass;              // khai bao mat khau

    $mail->SetFrom($mFrom, $nFrom); 

    //reply

    $mail->AddReplyTo($email,$ho_ten);





    $mail->Subject    = $title;// tieu de email 

    $mail->MsgHTML($body);// noi dung chinh cua mail se nam o day.

    $mail->AddAddress($mTo, $nTo);

    // thuc thi lenh gui mail 

    if(!$mail->Send()) {

        echo 'Co loi!';

         

    } else {

         

        echo 'mail của bạn đã được gửi đi hãy kiếm tra hộp thư đến để xem kết quả. ';

    }

                            
    echo 

    "

        <script type='text/javascript'>

            window.alert('Bạn đã phản hồi thành công.');

        </script>

    ";

    echo 

    "

        <script type='text/javascript'>

            window.location.href = './index.php'

        </script>

    ";
        

							

		

?>