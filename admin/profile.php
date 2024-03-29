<?php require '../include/dbconfig.php'; ?>
<?php include('include/session.php') ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>
        <?php echo $fset['title']; ?> | Update Profile
    </title>
    <?php include('include/csslist.php') ?>
    <?php include('include/jslist.php') ?>
</head>

<body class="air__menu--gray">
    <div class="air__initialLoading"></div>
    <div class="air__layout air__layout--hasSider">
        <?php include('include/sidebar.php') ?>
        <div class="air__menuLeft__backdrop air__menuLeft__mobileActionToggle"></div>
        <div class="air__layout">
            <?php include('include/topbar.php') ?>
            <div class="air__layout--contentNoMaxWidth">
                <div class="air__utils__content">
                    <div class="air__utils__heading">
                        <h5>Profile</h5>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card">
                                <div class="card-body">
                                    <div class="row">

                                        <div class="col-lg-12 mb-5">
                                            <h4 class="mb-4">
                                                <strong>Update Profile</strong>
                                            </h4>
                                            <form id="form-validation-simple" name="form-validation-simple" method="POST" enctype="multipart/form-data">

                                                <?php
                                                $getkey = $con->query("select * from admin")->fetch_assoc();
                                                ?>

                                                <div class="form-group">
                                                    <label for="cname">Username</label>
                                                    <input type="text" id="cname" class="form-control" name="username" value="<?php echo $getkey['username']; ?>" required>
                                                </div>
                                                <div class="form-group">
                                                    <label for="cname">Password</label>
                                                    <input type="password" id="password" class="form-control" name="password" value="<?php echo $getkey['password']; ?>" required>
                                                </div>

                                                <div class="form-actions">
                                                    <button type="submit" class="btn btn-success mr-2 px-5" name="sub_cat">Update Profile</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <?php
                    if (isset($_POST['sub_cat'])) {
                        $username = $_POST['username'];
                        $password = $_POST['password'];


                        $con->query("update admin set username='" . $username . "',password='" . $password . "' where id=1");
                        echo '<script type="text/javascript">';
                        echo "setTimeout(function () { swal({title: 'Update Profile', text: 'Update Profile Successfully', type: 'success', confirmButtonClass: 'btn-success', confirmButtonText: 'OK', },function() {window.location = 'profile.php';});";
                        echo '}, 1000);</script>';
                    }
                    ?>


                </div>
            </div>
            <script>
                ;
                (function($) {
                    'use strict'
                    $(function() {
                        $('.dropify').dropify()

                        $('.select2').select2()
                        
                        $('#password').password({
        eyeClass: '',
        eyeOpenClass: 'fe fe-eye',
        eyeCloseClass: 'fe fe-eye-off',
      })
                    })

                })(jQuery)
            </script>
            <?php include('include/footer.php') ?>
        </div>
    </div>
</body>

</html>