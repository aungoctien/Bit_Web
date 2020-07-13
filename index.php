<!DOCTYPE HTML>

<!--

	Theory by TEMPLATED

	templated.co @templatedco

	Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)

-->

<html>

<head>

	<title>Trang chủ BIT</title>

	<meta charset="utf-8" />

	<meta name="viewport" content="width=device-width, initial-scale=1" />

	<link rel="stylesheet" href="./assets/css/main.css" />

	<link rel="stylesheet" href="./assets/css/footer.css" />



	<link rel="icon" href="./img/logo.png">





</head>

<body>



	<!-- Header -->



	<header id="header">



		<div class="inner">

			<nav id="nav">

				<a href="index.php">Trang chủ</a>

				<a href="study.php">Góc học tập</a>

				<a href="./news">Tin tức</a>

				<a href="./contact">Liên hệ</a>

			</nav>

			<a href="#navPanel" class="navPanelToggle"><span class="fa fa-bars"></span></a>

		</div>

		<div class="logo-box">

			<a href=""><img class="logo" src="./img/logo.png" alt=""></a>

		</div>

	</header>



	<!-- Banner -->

	<section id="banner">

		<h1>CLB TIN HỌC NGÂN HÀNG</h1>

		<p style="font-size: 250%;">Banking Information Technology</p>

		<div class="u-center-text">

			<a style="color: white;" href="./recruit.php" class="btn--float btn--neon">

				<span class="btn--float-span"></span>

				<span class="btn--float-span"></span>

				<span class="btn--float-span"></span>

				<span class="btn--float-span"></span>

				Tham gia ngay

			</a>

		</div>

	</section>



	<!-- One -->

	<section id="one" class="wrapper">

		<div class="inner">

			<div class="flex flex-3">

				<article>

					<header>

						<h3>Giới thiệu</h3>

					</header>

					<p>Web BIT club không chỉ là trang web mang tính cá nhân của riêng CLB mà đây còn là nơi lưu giữ những kỉ niệm thời sinh viên. Định hướng cho các tân sinh viên của khoa HTTTQL và cũng là nơi chia sẻ kiển thức về CNTT, qua đó tạo môi trường học tập và vui chơi lành mạnh.</p>

					<footer>

						CLB Tin học Ngân hàng-BIT, là clb học thuật của khoa Hệ thống thông tin quản lý - HỌC VIỆN NG N HÀNG. Được thành lập ngày 28/04/2010 toạ lạc tại Học viện Ngân hàng số 12 - Chùa Bộc - Đống Đa - Hà Nội. Đúng với tên gọi của nó, BIT- chuyên cung cấp, giải đáp thắc mắc🤷‍♂️ của các bạn sinh viên trong lĩnh vực CNTT🤖nói chung và ngành HTTTQL nói riêng.

					</footer>

				</article>

				<article>

					<header>

						<h3>Địa chỉ liên hệ</h3>



					</header>

					<p>

						HotLine: 0389152595 <br>

						Địa chỉ: Học Viện Ngân Hàng

					</p>

					<a href="https://www.facebook.com/ClbTinhocnganhang/" class="icon fa-facebook"> Facebook</a> <br>

					<a href="https://www.instagram.com/bitclub_real/?hl=vi" class="icon fa-linkedin"> Instagram</a>

					<footer>

						<br>

						<br>

						<figure><img width="300px" src="./img/noi_dung_hoc_nganh_mis.jpg" alt=""></figure>

					</footer>





				</article>

				<article>

					<header>

						<h3>👉Vậy bạn sẽ nhận được gì khi tham gia BIT🤔🤔</h3>

					</header>

					<p> 💁‍♂️Đến với BIT bạn sẽ được thoả sức thể hiện mình; bạn ngày càng năng động💃🕺 hơn bởi những con người vô cùng gần gũi và dễ thương😍 trong clb; CLB luôn quan tâm và chú trọng tới lợi ích của các thành viên trong clb lên hàng đầu. Đừng ngần ngại hãy đến với chúng tôi ngay bạn sẽ làm được những điều mà trước đây không thể😘😘

						“Với chúng tôi thanh xuân là BIT, còn bạn?”

					</p>

					<video width="320" height="240" controls>

						<source src="./img/mis.mp4" type="video/mp4">



					</video>

				</article>

			</div>

		</div>

	</section>



	<!-- Two -->

	<section id="two" class="wrapper style1 special">

		<div class="inner">

			<header>

				<h2>NHÀ SÁNG LẬP</h2>

				<p>WEB BIT</p>

			</header>



			<div class="flex flex-4">

				<?php

				$host_name = "localhost";

				$user_name = "root";
				$password = "";
				$db_name = "bit_db";



				$ket_noi = mysqli_connect($host_name, $user_name, $password, $db_name);

				$query = "SELECT * FROM tbl_nha_sang_lap";



				$noi_dung = mysqli_query($ket_noi, $query);

				while ($row = mysqli_fetch_array($noi_dung)) {



				?>

					<div class="box person">

						<div class="image round">

							<img class="tes_img" src="./img/nha_sang_lap/<?php echo $row['anh'] ?>" alt="Person 1" />

						</div>

						<h3><?php echo $row['ho_ten'] ?></h3>

						<p style="color: white;"><?php echo $row['vai_tro'] ?></p>

					</div>

				<?php } ?>

			</div>



		</div>

	</section>



	<!-- Three -->

	<section style="background-color: rgb(236, 236, 236);" id="three" class="wrapper special">



		<div class="inner">

			<header class="align-center">

				<h2>THƯ VIỆN</h2>

				<p> </p>

			</header>



			<div class="flex flex-2">

				<?php



				$query1 = "SELECT * FROM tbl_loai_album";

				$noi_dung1 = mysqli_query($ket_noi, $query1);

				while ($row1 = mysqli_fetch_array($noi_dung1)) {

				?>

					<article>

						<div class="image fit">

							<a href="./album/?id=<?php echo $row1['id_loai_album'] ?>">

								<img class="photo_album_type" src="./img/loai_album/<?php echo $row1['anh'] ?>" style="width:500px;height:300px;" alt="Pic" />

							</a>



						</div>

						<header>

							<a href="./album/?id=<?php echo $row1['id_loai_album'] ?>">

								<h3><?php echo $row1['ten_album'] ?></h3>

							</a>

						</header>

						<p><?php echo $row1['mo_ta'] ?></p>

						<footer>



						</footer>

					</article>

				<?php } ?>

			</div>



		</div>





	</section>







	<!-- Footer -->

	<footer id="footer">

		<div class="inner">

			<div class="flex">

				<div class="copyright">

					<span class="span-footer">Copyright © 2020 by ANT team</span>



				</div>

				<ul class="icons">

					<li><a href="https://www.facebook.com/ClbTinhocnganhang/" class="icon fa-facebook"><span class="label">Facebook</span></a></li>

					<li><a href="https://www.instagram.com/bitclub_real/?hl=vi" class="icon fa-linkedin"><span class="label">linkedIn</span></a></li>



				</ul>

			</div>

		</div>

	</footer>



	<!-- Scripts -->

	<script src="assets/js/jquery.min.js"></script>

	<script src="assets/js/skel.min.js"></script>

	<script src="assets/js/util.js"></script>

	<script src="assets/js/main.js"></script>



</body>

</html>