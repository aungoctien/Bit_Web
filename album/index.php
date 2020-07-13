<!DOCTYPE html>

<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->

<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->

<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->

<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->

    <head>

        <meta charset="utf-8">

        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <title>Album</title>

        <meta name="description" content="">

        <meta name="viewport" content="width=device-width, initial-scale=1">

        

        <link rel="stylesheet" href="css/normalize.css">

        <link rel="stylesheet" href="css/font-awesome.css">

        <link rel="stylesheet" href="css/bootstrap.min.css">

        <link rel="stylesheet" href="css/templatemo-style.css">

        <script src="js/vendor/modernizr-2.6.2.min.js"></script>

        <!-- 

        Masonry Template 

        http://www.templatemo.com/preview/templatemo_434_masonry

        -->

    </head>

    <body>



        

        <!--[if lt IE 7]>

            <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>

        <![endif]-->

        

        <div id="loader-wrapper">

            <div id="loader"></div>

        </div>



        <div class="content-bg"></div>

        <div class="bg-overlay"></div>



        <!-- SITE TOP -->

        <div class="site-top">

            <div class="site-header clearfix">

                <div class="container">

                    <a href="../index.php" class="site-brand pull-left"><img src="../img/logo.png" style="width:150px;" alt=""></a>

                    

                </div>

            </div> <!-- .site-header -->

            

        </div> <!-- .site-top -->   

        

        <!-- MAIN POSTS -->

        <div class="main-posts">

            <div class="container">

                <div class="row">

                    <div class="blog-masonry masonry-true">

                    <?php 

                            $id_album=$_GET['id'];



                            $host_name="localhost";

							$user_name="root";
$password="";
$db_name="bit_db";

                            $ket_noi=mysqli_connect($host_name, $user_name, $password, $db_name);

							$query="SELECT * FROM tbl_album WHERE id_loai_album = '".$id_album."'";



							$noi_dung=mysqli_query($ket_noi, $query);

							while($row=mysqli_fetch_array($noi_dung)){



                         ?>

                        <div class="post-masonry col-md-4 col-sm-6">                      

                            <div class="post-thumb">

                                <img src="../img/album_anh/<?php echo $row['anh']?>" alt="photo">

                                <div class="title-over">

                                    <h4><a href="#"></a></h4>

                                </div>

                                <div class="post-hover text-center">

                                    <div class="inside">

                                        <span class="date"><?php echo $row['ngay']?></span>

                                        <p><?php echo $row['tieu_de']?></p>

                                        <br>

                                        <h4><a href="./chi_tiet.php?id=<?php echo $row['id']?>">Xem ảnh</a></h4>

                                        

                                    </div>

                                </div>

                            </div>

                        </div> <!-- /.post-masonry -->

                            <?php } ?>

                    </div>        

                </div>

            </div>

        </div>



        <!-- FOOTER -->

        <footer class="site-footer">

            <div class="container">

                <div class="row">

                    <div class="col-md-12 text-center">

                        <div class="social-icons">

                            <ul>

                                <li><a href="#" class="fa fa-facebook"></a></li>

                                <li><a href="#" class="fa fa-twitter"></a></li>

                                <li><a href="#" class="fa fa-behance"></a></li>

                                <li><a href="#" class="fa fa-dribbble"></a></li>

                                <li><a href="#" class="fa fa-google-plus"></a></li>

                            </ul>

                        </div>

                    </div>

                </div>

                <div class="row">

                    <div class="col-md-12 text-center">

                        <p class="copyright-text">Copyright &copy; Copyright © 2020 by ANT team

                        | Photos by <a rel="nofollow" href="https://www.facebook.com/tran.trung.3382">Trung Tran</a></p>

                    </div>

                </div>

            </div>

        </footer>



        <script src="js/vendor/jquery-1.10.2.min.js"></script>

        <script src="js/min/plugins.min.js"></script>

        <script src="js/min/main.min.js"></script>



        <!-- Preloader -->

        <script type="text/javascript">

            //<![CDATA[

            $(window).load(function() { // makes sure the whole site is loaded

                $('#loader').fadeOut(); // will first fade out the loading animation

                    $('#loader-wrapper').delay(350).fadeOut('slow'); // will fade out the white DIV that covers the website.

                $('body').delay(350).css({'overflow-y':'visible'});

            })

            //]]>

        </script>

	<!-- templatemo 434 masonry -->

    </body>

</html>