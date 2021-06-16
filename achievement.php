<?php require('inc/header.php'); ?>

    <!-- start inner banner -->
    <section class="inner-banner">
        <h1 class="font-weight-bold text-center">Achievement</h1>
    </section>
    <!-- end inner banner -->
    <!-- start achievement -->
    <section class="achievement">
        <div class="container">
            <div class="sec-title text-center mb-3" data-aos="fade-up" data-aos-duration="1000">
                <span class="title">Our Achievement</span>
                <h2>Happiness Of Great Achievement</h2>
                <div class="divider">
                    <span class="fa fa-mortar-board"></span>
                </div>
            </div>
         
            <?php
                $slider_count_query = "SELECT * FROM awards";
                $slider_count_result = mysqli_query($conn,$slider_count_query);
                while($data=mysqli_fetch_array($slider_count_result))
                {
                  
            ?>
                
            <div class="row">
                <div class="col-lg-6 col-md-12">
                    <h3 class="font-weight-bold color-orange" data-aos="fade-up" data-aos-duration="1000"><?php echo $data['title']; ?></h3>
                    <h6 class="font-weight-bold mb-3"> <?php echo $data['content']; ?></h6>
                  
                </div>
                <div class="col-lg-6 offset-lg-0 offset-xl-0 col-md-8 offset-md-2">
                    <div class="img-block">
                        <div class="border-line"></div>
                        <div class="cust_img">
                            <img class="img-fluid" data-aos="zoom-in" data-aos-duration="1000" src="uploads/<?php echo $data['img']; ?>" alt="Achievement">
                        </div>
                    </div>
                </div>
            </div>
            <div class="row my-5">
                <div class="col-lg-6 offset-lg-0 offset-xl-0 col-md-8 offset-md-2">
                    <div class="img-block left-block">
                        <div class="border-line"></div>
                        <div class="cust_img">
                            <img class="img-fluid" data-aos="zoom-in" data-aos-duration="1000" src="uploads/<?php echo $data['img'] ?>" alt="Achievement">
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-12 mt-xl-5 mt-lg-5 mt-md-2 mt-sm-5 mt-5">
                <h3 class="font-weight-bold color-orange" data-aos="<?php echo $data_slide; ?>" class="<?php if($count==1) { echo "active"; } ?>" data-aos-duration="1000">Achievement 1</h3>
                    <h6 class="font-weight-bold mb-3"><?php echo $data['title'] ?></h6>
                    
                    <?php echo $data['content'];?>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6 col-md-12">
                           <h3 class="font-weight-bold color-orange" data-aos="<?php echo $data_slide; ?>" class="<?php if($count==1) { echo "active"; } ?>" data-aos-duration="1000">Achievement 1</h3>
                    <h6 class="font-weight-bold mb-3"><?php echo $data['title'] ?></h6>
                   <?php  echo $data['content']; ?>
                </div>
                <div class="col-lg-6 col-md-8 offset-lg-0 offset-xl-0 offset-md-2">
                    <div class="img-block">
                        <div class="border-line"></div>
                        <div class="cust_img">
                            <img class="img-fluid" data-aos="zoom-in" data-aos-duration="1000" src="uploads/<?php echo $data['img'] ?>" alt="Achievement">
                        </div>
                    </div>
                </div>
            </div>
            <?php
                $data_slide+=1;
                }
            ?>


             
        </div>
    </section>
    <!-- end achievement -->
    <!-- start footer -->
    <?php require('inc/footer.php'); ?>



























































