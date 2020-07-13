<!DOCTYPE html>

<html lang="en">

<head>

	<title>Tin tức</title>

	<meta charset="UTF-8">

	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!--===============================================================================================-->

	<link rel="icon" type="image/png" href="../img/logo.png" />

	<!--===============================================================================================-->

	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">

	<!--===============================================================================================-->

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



	$ket_noi = mysqli_connect($host_name, $user_name, $password, $db_name);

	$query = "SELECT * FROM tbl_loai_tin_tuc";

	$noi_dung = mysqli_query($ket_noi, $query);;



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

					<a href="../index.php"><img src="" alt="IMG-LOGO"><img src="../img/BIT_news.png" alt=""></a>

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

						<a href="index.php">Trang tin tức</a>

					</li>

					<?php

					$query = "SELECT * FROM tbl_loai_tin_tuc";

					$noi_dung = mysqli_query($ket_noi, $query);

					while ($row = mysqli_fetch_array($noi_dung)) {

					?>

						<li class="mega-menu-item">

							<a href="./tin_tuc_chu_de.php?id=<?php echo $row['id_loai_tin_tuc'] ?>"><?php echo $row['ten_loai_tin_tuc'] ?></a>

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

					<a href="../index.php"><img src="../img/BIT_news.png" alt=""></a>

				</div>



			</div>



			<!--  -->

			<div class="wrap-main-nav">

				<div class="main-nav">

					<!-- Menu desktop -->

					<nav class="menu-desktop">

						<a class="logo-stick" href="index.html">

							<img src="images/icons/logo-01.png" alt="LOGO">

						</a>



						<ul class="main-menu">

							<li class="main-menu-active">

								<a href="index.php">Trang tin tức</a>



							</li>



							<?php

							$query = "SELECT * FROM tbl_loai_tin_tuc";

							$noi_dung = mysqli_query($ket_noi, $query);

							while ($row = mysqli_fetch_array($noi_dung)) {

							?>

								<li class="mega-menu-item">

									<a href="./tin_tuc_chu_de.php?id=<?php echo $row['id_loai_tin_tuc'] ?>"><?php echo $row['ten_loai_tin_tuc'] ?></a>

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







	<!-- Post -->

	<section class="bg0 p-t-70">

		<div class="container">

			<div class="row justify-content-center">

				<div class="col-md-10 col-lg-8">

					<div class="p-b-20">

						<!-- Business -->

						<?php



						$query = "SELECT * FROM tbl_loai_tin_tuc";

						$noi_dung = mysqli_query($ket_noi, $query);

						while ($row = mysqli_fetch_array($noi_dung)) {



						?>



							<div class="tab01 p-b-20">



								<div class="tab01-head how2 how2-cl2 bocl12 flex-s-c m-r-10 m-r-0-sr991">

									<!-- Brand tab -->

									<h3 class="f1-m-2 cl13 tab01-title">

										<?php echo $row['ten_loai_tin_tuc'] ?>

									</h3>



								</div>



								<!-- Tab panes -->

								<div class="tab-content p-t-35">

									<!-- - -->

									<div class="tab-pane fade show active" id="tab2-1" role="tabpanel">

										<div class="row">

											<?php

											$query1 = "SELECT * FROM tbl_tin_tuc join tbl_loai_tin_tuc on tbl_tin_tuc.id_loai_tin_tuc= tbl_loai_tin_tuc.id_loai_tin_tuc WHERE tbl_tin_tuc.id_loai_tin_tuc='" . $row['id_loai_tin_tuc'] . "'";



											$noi_dung1 = mysqli_query($ket_noi, $query1);

											$row3 = mysqli_fetch_array($noi_dung1)

											?>

											<div class="col-sm-6 p-r-25 p-r-15-sr991">

												<!-- Item post -->

												<div class="m-b-30">

													<a href="tin_tuc_chi_tiet.php?id=<?php echo $row3['id_tin_tuc'] ?>" class="wrap-pic-w hov1 trans-03">

														<img src="../img/tin_tuc/<?php echo $row3['anh'] ?>" alt="IMG">

													</a>



													<div class="p-t-20">

														<h5 class="p-b-5">

															<a href="tin_tuc_chi_tiet.php?id=<?php echo $row3['id_tin_tuc'] ?>" class="f1-m-3 cl2 hov-cl10 trans-03">

																<?php echo $row3['tieu_de'] ?>

															</a>

														</h5>



														<span class="cl8">

															<a href="./tin_sinh_vien.php" class="f1-s-4 cl8 hov-cl10 trans-03">

																<?php echo $row3['ten_loai_tin_tuc'] ?>

															</a>



															<span class="f1-s-3 m-rl-3">

																-

															</span>



															<span class="f1-s-3">

																<?php echo $row3['ngay'] ?>

															</span>

														</span>

													</div>

												</div>

											</div>



											<div class="col-sm-6 p-r-25 p-r-15-sr991">

												<!-- Item post -->



												<?php



												$i=0;
												
												while ($row1 = mysqli_fetch_array($noi_dung1) and $i<3) { $i++;

												?>

													<div class="flex-wr-sb-s m-b-30">

														<a href="tin_tuc_chi_tiet.php?id=<?php echo $row1['id_tin_tuc'] ?>" class="size-w-1 wrap-pic-w hov1 trans-03">

															<img src="../img/tin_tuc/<?php echo $row1['anh'] ?>" alt="IMG">

														</a>



														<div class="size-w-2">

															<h5 class="p-b-5">

																<a href="tin_tuc_chi_tiet.php?id=<?php echo $row1['id_tin_tuc'] ?>" class="f1-s-5 cl3 hov-cl10 trans-03">

																	<?php echo $row1['tieu_de'] ?>

																</a>

															</h5>



															<span class="cl8">

																<a href="./tin_sinh_vien.php" class="f1-s-6 cl8 hov-cl10 trans-03">

																	<?php echo $row['ten_loai_tin_tuc'] ?>

																</a>



																<span class="f1-s-3 m-rl-3">

																	-

																</span>



																<span class="f1-s-3">

																	<?php echo $row1['ngay'] ?>

																</span>

															</span>

														</div>

													</div>

												<?php } ?>

											</div>

										</div>

									</div>

								</div>

							</div>

						<?php } ?>



					</div>

				</div>



				<div class="col-md-10 col-lg-4">

					<div class="p-l-10 p-rl-0-sr991 p-b-20">

						<!--  -->

						<div>

							<div class="how2 how2-cl4 flex-s-c">

								<h3 class="f1-m-2 cl3 tab01-title">

									Tin nóng

								</h3>

							</div>


<!-- hot news -->


							<ul class="p-t-35">

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

<!-- end hot new		 -->
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