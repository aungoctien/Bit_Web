<!DOCTYPE html>

<html lang="en">

<head>

	<title>Tin tức chi tiết</title>

	<meta charset="UTF-8">

	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!--===============================================================================================-->

	<link rel="icon" type="image/png" href="" />

	<!--===============================================================================================-->

	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">

	<!--===============================================================================================-->

	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">

	<link rel="stylesheet" type="text/css" href="fonts/fontawesome-5.0.8/css/fontawesome-all.min.css">

	<!--===============================================================================================-->

	<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">

	<!--===============================================================================================-->

	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">

	<!--===============================================================================================-->

	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">

	<!--===============================================================================================-->

	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">

	<!--===============================================================================================-->

	<link rel="stylesheet" type="text/css" href="css/util.min.css">

	<!--===============================================================================================-->

	<link rel="stylesheet" type="text/css" href="css/main.css">

	<!--===============================================================================================-->

</head>

<body class="animsition">



	<?php

	$host_name = "localhost";

	$user_name = "root";
	$password = "";
	$db_name = "bit_db";



	$id_tin_tuc = $_GET['id'];

	$ket_noi = mysqli_connect($host_name, $user_name, $password, $db_name);

	$query = "SELECT * FROM tbl_tin_tuc join tbl_loai_tin_tuc on tbl_tin_tuc.id_loai_tin_tuc = tbl_loai_tin_tuc.id_loai_tin_tuc WHERE tbl_tin_tuc.id_tin_tuc='" . $id_tin_tuc . "'";

	$noi_dung = mysqli_query($ket_noi, $query);

	$row = mysqli_fetch_array($noi_dung);



	///Đếm comment

	$sql = "SELECT id_tin_tuc FROM tbl_comment WHERE id_tin_tuc='" . $id_tin_tuc . "'";

	$so_comment = mysqli_query($ket_noi, $sql);

	$hien_thi_so_comment = mysqli_num_rows($so_comment);



	?>

	<!-- Header -->

	<header>

		<!-- Header desktop -->

		<div class="container-menu-desktop">

			<div class="topbar">

				<div class="content-topbar container h-100">



				</div>

			</div>



			<!-- Header Mobile -->

			<div class="wrap-header-mobile">

				<!-- Logo moblie -->

				<div class="logo-mobile">

					<a href="../index.php"><img src="../img/BIT_news.png" alt="">" alt="IMG-LOGO"></a>

				</div>



				<!-- Button show menu -->

				<div class="btn-show-menu-mobile hamburger hamburger--squeeze m-r--8">

					<span class="hamburger-box">

						<span class="hamburger-inner"></span>

					</span>

				</div>

			</div>



			<!-- Menu Mobile -->

			<div class="menu-mobile">

				<ul class="main-menu-m">



					<li>

						<a href="tin_cong_nghe.php">Tin công nghệ</a>

					</li>




					<?php

					$query1 = "SELECT * FROM tbl_loai_tin_tuc";

					$noi_dung1 = mysqli_query($ket_noi, $query1);

					while ($row1 = mysqli_fetch_array($noi_dung1)) {

					?>

						<li class="mega-menu-item">

							<a href="./tin_tuc_chu_de.php?id=<?php echo $row1['id_loai_tin_tuc'] ?>"><?php echo $row1['ten_loai_tin_tuc'] ?></a>

						</li>

					<?php

					}

					?>

				</ul>

			</div>



			<!--  -->

			<div class="wrap-logo container">

				<!-- Logo desktop -->

				<div class="logo">

					<a href="../index.php"><img src="../img/BIT_news.png" alt=""> alt="LOGO"></a>

				</div>



			</div>



			<!--  -->

			<div class="wrap-main-nav">

				<div class="main-nav">

					<!-- Menu desktop -->

					<nav class="menu-desktop">

						<a class="logo-stick" href="index.html">

							<img src="../img/logo.png" alt="LOGO">

						</a>



						<ul class="main-menu">

							<li class="main-menu-active">

								<a href="index.php">Trang tin tức</a>



							</li>

							<?php

							$query1 = "SELECT * FROM tbl_loai_tin_tuc";

							$noi_dung1 = mysqli_query($ket_noi, $query1);

							while ($row1 = mysqli_fetch_array($noi_dung1)) {

							?>

								<li class="mega-menu-item">

									<a href="./tin_tuc_chu_de.php?id=<?php echo $row1['id_loai_tin_tuc'] ?>"><?php echo $row1['ten_loai_tin_tuc'] ?></a>

								</li>

							<?php

							}

							?>

						</ul>

					</nav>

				</div>

			</div>

		</div>

	</header>









	<!-- Content -->

	<section class="bg0 p-b-140 p-t-10">

		<div class="container">

			<div class="row justify-content-center">

				<div class="col-md-10 col-lg-8 p-b-30">

					<div class="p-r-10 p-r-0-sr991">

						<!-- Blog Detail -->

						<div class="p-b-70">

							<p class="f1-s-10 cl2 hov-cl10 trans-03 text-uppercase">

								<?php echo $row['ten_loai_tin_tuc'] ?>

							</p>



							<h3 class="f1-l-3 cl2 p-b-16 p-t-33 respon2">

								<?php echo $row['tieu_de'] ?>

							</h3>



							<div class="flex-wr-s-s p-b-40">

								<span class="f1-s-3 cl8 m-r-15">



									<span class="m-rl-3">-</span>



									<span>

										<?php echo $row['ngay'] ?>

									</span>

								</span>



								<p href="#" class="f1-s-3 cl8 hov-cl10 trans-03 m-r-15">

									<?php echo $hien_thi_so_comment ?> bình luận

									<p>

							</div>



							<div class="wrap-pic-max-w p-b-30">

								<img src="../img/tin_tuc/<?php echo $row['anh'] ?>" alt="IMG">

							</div>



							<p class="f1-s-11 cl6 p-b-25">

								<?php echo $row['noi_dung'] ?>

							</p>





						</div>



						<!-- Leave a comment -->

						<div>

							<h4 class="f1-l-4 cl3 p-b-12">

								Viết bình luận

							</h4>



							<form action="./comment_add.php" method="POST">

								<textarea required class="bo-1-rad-3 bocl13 size-a-15 f1-s-13 cl5 plh6 p-rl-18 p-tb-14 m-b-20" name="txtcmt" placeholder="Comment..."></textarea>



								<input required class="bo-1-rad-3 bocl13 size-a-16 f1-s-13 cl5 plh6 p-rl-18 m-b-20" type="text" name="txtname" placeholder="Name*">



								<input required class="bo-1-rad-3 bocl13 size-a-16 f1-s-13 cl5 plh6 p-rl-18 m-b-20" type="text" name="txtemail" placeholder="Email*">



								<input  type="hidden" name="txtidtintuc" value="<?php echo $row['id_tin_tuc'] ?>">

								<button class="size-a-17 bg2 borad-3 f1-s-12 cl0 hov-btn1 trans-03 p-rl-15 m-t-10">

									Bình luận

								</button>

							</form>

						</div>

					</div>

				</div>



				<!-- Sidebar -->

				<div class="col-md-10 col-lg-4 p-b-30">

					<div class="p-l-10 p-rl-0-sr991 p-t-70">



						<!-- Popular Posts -->



						<?php



						$sql_hot_news = "SELECT 

							tbl_comment.id_tin_tuc,

							tieu_de,

							ngay,

							ten_loai_tin_tuc,

							anh,

							COUNT(tbl_comment.id_tin_tuc)

						FROM

							tbl_loai_tin_tuc

						JOIN tbl_tin_tuc ON tbl_loai_tin_tuc.id_loai_tin_tuc = tbl_tin_tuc.id_loai_tin_tuc

						JOIN tbl_comment ON tbl_tin_tuc.id_tin_tuc = tbl_comment.id_tin_tuc

						GROUP BY

							id_tin_tuc,

							tieu_de,

							ngay,

							ten_loai_tin_tuc,

							anh 

						ORDER BY COUNT(tbl_comment.id_tin_tuc) DESC;";

						$noi_dung_hot_news = mysqli_query($ket_noi, $sql_hot_news);









						?>

						<div class="p-b-30">

							<div class="how2 how2-cl4 flex-s-c">

								<h3 class="f1-m-2 cl3 tab01-title">

									Tin nóng

								</h3>

							</div>



							<ul class="p-t-35">

								<?php

								while ($row_hot_news = mysqli_fetch_array($noi_dung_hot_news)) {

								?>

									<li class="flex-wr-sb-s p-b-30">

										<a href="./tin_tuc_chi_tiet.php?id=<?php echo $row_hot_news['id_tin_tuc'] ?>" class="size-w-10 wrap-pic-w hov1 trans-03">

											<img src="../img/tin_tuc/<?php echo $row_hot_news['anh'] ?>" alt="IMG">

										</a>



										<div class="size-w-11">

											<h6 class="p-b-4">

												<a href="./tin_tuc_chi_tiet.php?id=<?php echo $row_hot_news['id_tin_tuc'] ?>" class="f1-s-5 cl3 hov-cl10 trans-03">

													<?php echo $row_hot_news['tieu_de'] ?>

												</a>

											</h6>



											<span class="cl8 txt-center p-b-24">



												<?php echo $row_hot_news['ten_loai_tin_tuc'] ?>





												<span class="f1-s-3 m-rl-3">

													-

												</span>





												<span class="f1-s-3">

													<?php echo $row_hot_news['COUNT(tbl_comment.id_tin_tuc)'] ?> bình luận

												</span>

											</span>

										</div>

									</li>



								<?php } ?>

							</ul>



							<!-- cmt -->

							<div class="p-b-30">

								<div class="how2 how2-cl4 flex-s-c">

									<h3 class="f1-m-2 cl3 tab01-title">

										Bình luận

									</h3>

								</div>



								<ul class="p-t-35">



									<?php

									$sql_hien_thi_binh_luan = "SELECT * FROM tbl_comment WHERE id_tin_tuc='" . $id_tin_tuc . "'";

									$noi_dung_binh_luan = mysqli_query($ket_noi, $sql_hien_thi_binh_luan);



									while ($row_binh_luan = mysqli_fetch_array($noi_dung_binh_luan)) {

									?>



										<li class="flex-wr-sb-s p-b-30">



											<div style="margin-left: 10px;" class="size-w-11">

												<h6 class="p-b-4">

													<?php echo $row_binh_luan["comment"] ?>

												</h6>

												<span class="cl8 txt-center p-b-24">

													<a href="#" class="f1-s-6 cl8 hov-cl10 trans-03">

														- Tác giả: <?php echo $row_binh_luan["name"] ?>

													</a>

												</span>

											</div>

										</li>



									<?php } ?>

							</div>

						</div>

					</div>

				</div>

			</div>

	</section>



	<!-- Footer -->

	<footer>



		<div class="bg11">

			<div class="container size-h-4 flex-c-c p-tb-15">

				<span class="f1-s-1 cl0 txt-center">

					Copyright © 2020 by ANT team

				</span>

			</div>

		</div>

	</footer>



	<!-- Back to top -->

	<div class="btn-back-to-top" id="myBtn">

		<span class="symbol-btn-back-to-top">

			<span class="fas fa-angle-up"></span>

		</span>

	</div>





	<!--===============================================================================================-->

	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>

	<!--===============================================================================================-->

	<script src="vendor/animsition/js/animsition.min.js"></script>

	<!--===============================================================================================-->

	<script src="vendor/bootstrap/js/popper.js"></script>

	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>

	<!--===============================================================================================-->

	<script src="js/main.js"></script>



</body>

</html>