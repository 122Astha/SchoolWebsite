<?php require('inc/header.php'); ?>

    <!-- start inner banner -->
    <section class="inner-banner">
        <h1 class="font-weight-bold text-center">Our News & Events</h1>
    </section>
    <!-- end inner-banner -->
    <!-- start blog -->
    <section class="blog-block">
        <div class="container">
            <div class="sec-title text-center mb-3" data-aos="fade-up" data-aos-duration="1000">
                <span class="title">News and Events</span>
                <h2>We keep you always updated with</h2>
                <div class="divider">
                    <span class="fa fa-mortar-board"></span>
                </div>
            </div>
            <div class="row">
            <?php
                $select_event= "SELECT * FROM events";
                $result_event = mysqli_query($conn,$select_event);
                while($data=mysqli_fetch_array($result_event))
                {
                    ?>
                <div class="col-lg-4 col-md-6 mb-5">

                    <div class="post" data-aos="fade-up" data-aos-duration="1000">
                        <img class="img-fluid" src="uploads/<?php echo $data['img'] ?>" alt="Blog">
                        <div class="post_inner p-3">
                            <p class="mb-1 font-weight-bold"><?php echo $data['e_date'] ?> </p>
                            <h5 class="font-weight-bold"><?php echo $data['title']  ?></h5>
                            <?php  echo $data['content'] ?>
                            <div class="comment d-flex">
                                <span class="mr-3"><i class="fa fa-user mr-3 color-orange"></i>Admin</span>
                                <span class="mr-3"><i class="fa fa-comments mr-3 color-orange"></i>Comments</span>
                            </div>
                            <a class="btn color-orange read-more mt-3" href="blog-detail.html">Read More</a>
                        </div>
                    </div>
                </div>
                
                    <?php
                }
            ?>
            </div>
        </div>
    </section>
    <!-- end blog -->
    <!-- start footer -->
    <?php require('inc/footer.php'); ?>



























































