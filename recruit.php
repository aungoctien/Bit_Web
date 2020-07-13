<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tuyển thành viên</title>
    <link rel="stylesheet" href="assets/css/style.css">
  
</head>

<body>
   
    <form class="section-recruit" method="POST" action="./recruit_add.php">
        <div class="recruit">
            <div class="recruit__photo">
            </div>
            <div class="recruit__form">
                <div class="recruit__group">
                    <input name="txthoten" type="text" placeholder="Họ và tên" class="recruit__textbox">
                </div>
                <div class="recruit__group">
                    <input name="txtsdt" type="text" placeholder="Số điện thoại" class="recruit__textbox">
                </div>
                <div class="recruit__group">
                    <input name="txtemail" type="text" placeholder="Email" class="recruit__textbox">
                </div>
                <div class="recruit__group">
                    <input name="txtgioitinh" type="text" placeholder="Giới tính (nam/nữ)" class="recruit__textbox">
                </div>
                <div class="recruit__group">
                    <input name="txtlop" type="text" placeholder="Lớp" class="recruit__textbox">
                </div>
                <div class="recruit__group">
                    <input name="txtngaysinh" type="text" placeholder="Ngày sinh" class="recruit__textbox">
                </div>
                <div class="recruit__group">
                    <input name="txtdiachi" type="text" placeholder="Địa chỉ" class="recruit__textbox">
                </div>
                <div class="recruit__group">
                    <input name="txtphuongtien" type="text" placeholder="Phương tiện đi lại" class="recruit__textbox">
                </div>
                <div class="recruit__group">
                    <input name="txtlinkfb" type="text" placeholder="Link facebook" class="recruit__textbox">
                </div>
                <div class="recruit__group">
                    <input name="txthyvong" type="text" placeholder="Bạn hy vọng điều gì ở BIT" class="recruit__textbox">
                </div>
                <div class="recruit__group">
                    <input name="txtbannganh" type="text"
                        placeholder="Bạn muốn đăng kí vào ban nào (chuyên môn/ truyền thông/ tổ chức/ kĩ thuật"
                        class="recruit__textbox">
                </div>
                <div class="u-center-text">
                    <button style="background-color: transparent;" class="btn--float btn--neon">
                        <span class="btn--float-span"></span>
                        <span class="btn--float-span"></span>
                        <span class="btn--float-span"></span>
                        <span class="btn--float-span"></span>
                        Nộp đơn
                    </button>
                </div>

            </div>

        </div>
    </form>
</body>

</html>