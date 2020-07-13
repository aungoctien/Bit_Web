<!DOCTYPE HTML>

<!--

	Theory by TEMPLATED

	templated.co @templatedco

	Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)

-->

<html>

	<head>

		<title>Góc học tập</title>

		<meta charset="utf-8" />

		<meta name="viewport" content="width=device-width, initial-scale=1" />

		<link rel="stylesheet" href="./assets/css/main.css" />

	</head>

	<body class="subpage">



	





		<!-- Header -->

			<header id="header">

				<div class="inner">

					<a href="index.html" class="logo"></a>

					<nav id="nav">

						<a href="index.php">Trang chủ</a>

						<a href="study.php">Góc học tập</a>

						<a href="./news/">Tin tức</a>

						<a href="./contact/">Liên hệ</a>

					</nav>

					<a href="#navPanel" class="navPanelToggle"><span class="fa fa-bars"></span></a>

				</div>

			</header>



		<!-- Three -->

			<section id="three" class="wrapper">

				<div class="inner">

					<header class="align-center">

						<h2>CÁC CHỦ ĐỀ</h2>

						

					<div class="flex flex-2">

					<?php

						

							$host_name="localhost";

							$user_name="root";

							$password="";

							$db_name="bit_db";



							$ket_noi=mysqli_connect($host_name, $user_name, $password, $db_name);

							$query="SELECT * FROM tbl_goc_hoc_tap";



							$noi_dung=mysqli_query($ket_noi, $query);

							while($row=mysqli_fetch_array($noi_dung)){

		

					?>

						<article>

							<div class="image fit">

								<img src="./img/goc_hoc_tap/<?php echo$row['anh']?>" alt="Pic 01" />

							</div>

							<header>

								<h3><?php echo$row['tieu_de']?></h3>

							</header>

							<p ><?php echo$row['mo_ta']?>

							<footer>

								<a href="<?php echo$row['link']?>" class="button special">Download</a>

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

							<span class="span-footer"> Copyright © 2020 by ANT team </span>

							

						</div>

						<ul class="icons">

							<li><a href="https://www.facebook.com/ClbTinhocnganhang/" class="icon fa-facebook"><span class="label">Facebook</span></a></li>

							<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>

							<li><a href="https://www.instagram.com/bitclub_real/?hl=vi" class="icon fa-linkedin"><span class="label">linkedIn</span></a></li>

							<li><a href="#" class="icon fa-pinterest-p"><span class="label">Pinterest</span></a></li>

							<li><a href="#" class="icon fa-vimeo"><span class="label">Vimeo</span></a></li>

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