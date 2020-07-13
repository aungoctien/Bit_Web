<?php

						    $host_name="localhost";

							$user_name="root";
                            $password="";
                            $db_name="bit_db";

                            

                            $ket_noi=mysqli_connect($host_name, $user_name, $password, $db_name);

                            $id = $_POST['txtid'];

                            $ten = $_POST['txtten'];

                            $mat_khau=$_POST['txtmatkhau'];

							

							$query="UPDATE tbl_admin SET ten='".$ten."', mat_khau='".md5($mat_khau)."' WHERE id='".$id."'";

							mysqli_query($ket_noi, $query);

							



                                echo 

                                "

                                    <script type='text/javascript'>

                                        window.alert('Bạn đã sửa admin thành công.');

                                    </script>

                                ";

                                echo 

                                "

                                    <script type='text/javascript'>

                                        window.location.href = '../quan_tri_admin.php'

                                    </script>

                                ";

                        

                           

                               

		

?>



