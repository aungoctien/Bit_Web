<!DOCTYPE html>

<html lang="en">

<head>

	<title>Liên hệ</title>

	<meta charset="UTF-8">

	<meta name="viewport" content="width=device-width, initial-scale=1">

<!--===============================================================================================-->

	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>

<!--===============================================================================================-->

	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">

<!--===============================================================================================-->

	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">

<!--===============================================================================================-->

	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">

<!--===============================================================================================-->

	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">

<!--===============================================================================================-->

	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">

<!--===============================================================================================-->

	<link rel="stylesheet" type="text/css" href="css/util.css">

	<link rel="stylesheet" type="text/css" href="css/main.css">

<!--===============================================================================================-->

</head>

<body>



	<div class="contact1">

		<div class="container-contact1">

			<div class="contact1-pic js-tilt" data-tilt>

				<a href="../index.php">

					<img src="images/img-02.png" style="width: 800px;" alt="IMG">

				</a>

				

			</div>



			<form class="contact1-form validate-form" method="POST" action="./contact_action.php">

				<span class="contact1-form-title">

					LIÊN HỆ

				</span>



				<div class="wrap-input1 validate-input" data-validate = "Name is required">

					<input required class="input1" type="text" name="txt_ten" placeholder="Name">

					<span class="shadow-input1"></span>

				</div>



				<div class="wrap-input1 validate-input" data-validate = "Valid email is required: ex@abc.xyz">

					<input required class="input1" type="text" name="txt_email" placeholder="Email">

					<span class="shadow-input1"></span>

				</div>



				<div class="wrap-input1 validate-input" data-validate = "Message is required">

					<textarea required class="input1" name="txt_noi_dung" placeholder="Message"></textarea>

					<span class="shadow-input1"></span>

				</div>



				<div class="container-contact1-form-btn">

					<button class="contact1-form-btn ">

						

							Send

							<i class="fa fa-long-arrow-right" aria-hidden="true"></i>

						

					</button>

				</div>

			</form>

		</div>

	</div>









<!--===============================================================================================-->

	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>

<!--===============================================================================================-->

	<script src="vendor/bootstrap/js/popper.js"></script>

	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>

<!--===============================================================================================-->

	<script src="vendor/select2/select2.min.js"></script>

<!--===============================================================================================-->

	<script src="vendor/tilt/tilt.jquery.min.js"></script>

	<script >

		$('.js-tilt').tilt({

			scale: 1.1

		})

	</script>



<!-- Global site tag (gtag.js) - Google Analytics -->

<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>

<script>

  window.dataLayer = window.dataLayer || [];

  function gtag(){dataLayer.push(arguments);}

  gtag('js', new Date());



  gtag('config', 'UA-23581568-13');

</script>



<!--===============================================================================================-->

	<script src="js/main.js"></script>



</body>

</html>

