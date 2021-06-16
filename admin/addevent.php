<?php 
require('inc/toppart.php');
require('inc/navbar.php');
require('inc/sidebar.php');
?>




  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Dashboard</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Dashboard v1</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <!-- Small boxes (Stat box) -->
        <div class="row">
          <!-- left column -->
          <div class="col-md-12">
            <!-- general form elements -->
            <?php
              if(isset($_POST['submit'])) {
                $title = $_POST['title'];
                $content = $_POST['content'];
                $e_date= $_POST['e_date'];
                $img= $_POST['img'];

                if($title!="" && $content!="" && $e_date!="" && $img !=""  )
                {
                    $query ="INSERT INTO events (title,content,e_date,img) VALUES('$title','$content','$e_date','$img')";
                    $result = mysqli_query($conn,$query);
                    if($result)
                    {
                      ?>
                      <meta http-equiv="refresh" content="0; URL=manageevent.php?msg=csuccess" />
                        <?php
                        echo "Event is added successfully.";
                    }
                    else 
                    {
                        echo "Event couldn't added successfully.";
                    }
                }


              }
            ?>
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Add Event</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form action="#" method="POST" enctype="multipart/form-data">
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1"> Event Title</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" name="title" placeholder="">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Event Content</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" name="content" placeholder="">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Event Date</label>
                    <input type="date" class="form-control" id="exampleInputEmail1" name="e_date" placeholder="">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Image Link</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" name="img" placeholder="">
                  </div>
                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="submit" name="submit" value="" class="btn btn-primary">Submit</button>
                </div>
              </form>
            </div>
            <!-- /.card -->
          </div>
          <!--/.col (left) -->
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  
  <?php
  require('inc/footer.php'); 
  ?>