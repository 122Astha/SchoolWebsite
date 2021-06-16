
<?php   require('connection/config.php')  ?>

<?php require('inc/toppart.php'); ?>
<link rel="stylesheet" href="../assets/css/login.css">

     <?php
                                        if(isset($_GET['msg'])){
                                            $msg= $_GET['msg'];
                                            if($msg=='loginerror')
                                            {
                                               ?>
                                                       <div class="alert alert-danger alert-dismissible fade show "  role="alert">
                                                         <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                         <span aria-hidden="true">&times;</span>
                                                         </button>
                                                         <strong>Your credentials are not matched.</strong> 
                                                         </div>
                        
                                                         <script>
                                                            $(".alert").alert();
                                                        </script>
                                               <?php
                                            }
                                        }
                                        ?>

                                        <?php
                                        if(isset($_GET['msg'])){
                                            $msg= $_GET['msg'];
                                            if($msg=='invaliduser')
                                            {
                                               ?>
                                                       <div class="alert alert-danger alert-dismissible fade show"  role="alert">
                                                         <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                         <span aria-hidden="true">&times;</span>
                                                         </button>
                                                         <strong>You are invalid user You need permission to access those pages. Please first login.</strong> 
                                                         </div>
                        
                                                         <script>
                                                            $(".alert").alert();
                                                        </script>
                                               <?php
                                            }
                                        }
                                        ?>





    <div class="main">

        <div class="container">
            <div class="row">
                <div class="left p-5 " style="width:450px;">
                     <div class="header">

                         <h1 >Welcome Back!</h1>
                         <p class="header1">Please Log into your account</p>
                        </div>
                    
                    <form class="user"  action="process/loginprocess.php" method="POST" enctype="multipart/form-data">
                    <div class="form-group">
                        <input type="email" name="email" class="form-control form-control-user"
                        id="exampleInputEmail" aria-describedby="emailHelp"
                        placeholder="Enter Email ">
                    </div>
                    <div class="form-group">
                        <input type="password" name="password" class="form-control form-control-user"
                        id="exampleInputPassword" placeholder="Password">
                    </div>
                    <div class="form-group">
                        <div class="custom-control custom-checkbox small">
                            <input type="checkbox" class="custom-control-input"  id="customCheck">
                            <label class="custom-control-label" style="font-size:15px;" for="customCheck">Remember
                                Me</label>
                                <a name="" id="" class="link " href="editpassword.php" style="float:right; font-size:15px; " >Forget Password?</a>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-success" style="border:0px solid green;
                        border-bottom-right-radius: 20px;
                        border-top-right-radius: 20px;
                        border-bottom-left-radius: 20px;" name="login"  >Login</button>

                         <a name="" id="" class="btnn pl-3 pt-2" href="signup.php" style="float:right; " role="button">  Create account</a>

                          
                          
                        <br><br>
                    </form>
                    <br><br>
                    <p class="footer">By sign up you agree to our term and that you have read our data policy.</p>
                    
                </div>
                
                <div class="right " style="text-align:left;" >
                    <img src="assets/img/bird.png" style="width:450px; ">
                    
                </div>
                
            </div>                           
        </div>
    </div>

<?php require('inc/footer.php'); ?>