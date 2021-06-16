<?php require('inc/header.php'); ?>

    <!-- start inner banner -->
    <section class="inner-banner">
        <h1 class="font-weight-bold text-center">About Us</h1>
    </section>
    <!-- end inner banner -->
    <!-- start about us -->
    <section class="aboutus">
        <div class="container">
            <div class="row">
            <?php
                $select_aboutus = "SELECT * FROM aboutus";
                $result_aboutus= mysqli_query($conn,$select_aboutus);
                while($data=mysqli_fetch_array($result_aboutus))
                {
                    ?>
                <div class="col-lg-6 col-md-12">
                    <h1 class="color-orange font-weight-bold about-title" data-aos="fade-up" data-aos-duration="1000"><?php echo $data['year'] ?></h1>
                    <h5 class="font-weight-bold text-uppercase mb-3" data-aos="fade-up" data-aos-duration="1000">YEARS OF EXPERIANCE</h5>
                     <?php  echo $data['p']  ?>
                </div>
                <div class="col-lg-6 col-md-8 offset-md-2 offset-lg-0">
                    <div class="about-img">
                        <div class="img_1" data-aos="zoom-in" data-aos-duration="550">
                            <div class="border-line"></div>
                            <img src="uploads/<?php echo $data['img'] ?>" class="img-fluid" alt="About">
                        </div>
                        <div class="img_2 d-flex"  data-aos="zoom-in" data-aos-duration="1000">
                            <h5 class="mb-0 text-white">Our Story</h5>
                            <a href="https://www.youtube.com/watch?v=_sI_Ps7JSEk" data-fancybox="gallery" class="video-btn text-white">
                                <i class="fa fa-play-circle fa-3x"></i>
                            </a>
                        </div>
                    </div>
                </div>
                    </div>
                </div>
                    <?php
                }
            ?>
            </div>
        </div>
    </section>
    <!-- end about us -->
    <!-- start footer -->
    
    <?php require('inc/footer.php'); ?>

    <!-- end footer -->
    <a href="#" id="scroll"><span></span></a>
</div>
<!-- ===============jQuery Frameworks============= -->
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/popper.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/slick.min.js"></script>
<script src="assets/js/jquery.fancybox.min.js"></script>
<script src="assets/js/aos.js"></script>
<script src="assets/js/page/about/about.js"></script>
<script src="assets/js/script.js"></script>
</body>

<!-- Mirrored from radixtouch.in/flexweb_template/edusquad_theme/edusquad-preview/about.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 11 Dec 2020 18:33:56 GMT -->
</html>



























































