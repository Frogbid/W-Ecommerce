<?php require '../include/dbconfig.php'; ?>
<?php include('include/session.php') ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>
        <?php echo $fset['title']; ?> | Coupon List
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
                    <h5>Coupons</h5>
                </div>
                <?php if (isset($_GET['edit'])) {
                    $sels = $con->query("select * from coupons where coupon_id =" . $_GET['edit'] . "");
                    $sels = $sels->fetch_assoc();
                    ?>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card">
                                <div class="card-body">
                                    <div class="row">

                                        <div class="col-lg-12 mb-5">
                                            <h4 class="mb-4">
                                                <strong>Edit Coupons</strong>
                                            </h4>
                                            <form id="form-validation-simple" name="form-validation-simple"
                                                  method="POST" enctype="multipart/form-data">
                                                <div class="form-group">
                                                    <label class="form-label">Coupons Name</label>
                                                    <input name="Category_Name" type="text"
                                                           value="<?php echo $sels['coupon_code']; ?>" class="form-control"
                                                           data-validation="[NOTEMPTY]" required/>
                                                </div>
                                                <div class="form-actions">
                                                    <button type="submit" class="btn btn-success mr-2 px-5"
                                                            name="up_coupon">Update Coupons
                                                    </button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <?php
                    if (isset($_POST['up_coupon'])) {
                        $coupon_code = mysqli_real_escape_string($con, $_POST['coupon_code']);

                        $con->query("update coupons set catname='" . $coupon_code . "' where id=" . $_GET['edit'] . "");

                        echo '<script type="text/javascript">';
                        echo "setTimeout(function () { swal({title: 'Coupon Edit', text: 'Coupon Edited Successfully', type: 'success', confirmButtonClass: 'btn-success', confirmButtonText: 'OK', },function() {window.location = 'categorylist.php';});";
                        echo '}, 1000);</script>';
                    }
                }else{
                    ?>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-lg-12 mb-5">
                                            <h4 class="mb-4">
                                                <strong>Add Coupons</strong>
                                            </h4>
                                            <form id="form-validation-simple" name="form-validation-simple" method="POST"
                                                  enctype="multipart/form-data">
                                                <div class="form-group">
                                                    <label class="form-label">Coupon Code</label>
                                                    <input name="coupon_code" type="text" class="form-control"
                                                           data-validation="[NOTEMPTY]" required/>
                                                </div>
                                                <div class="form-actions">
                                                    <button type="submit" class="btn btn-success mr-2 px-5" name="sub_cat">
                                                        Save Coupon
                                                    </button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <?php
                }
                ?>

                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="mb-4">
                                    <strong>Coupons List</strong>
                                </h4>
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="mb-5">
                                            <table class="table table-hover nowrap" id="example1">
                                                <thead>
                                                <tr>
                                                    <th>Sl No.</th>
                                                    <th>Coupon Code</th>
                                                    <th>Status</th>
                                                    <th class="text-center">Action</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <?php
                                                $sel = $con->query("select * from coupons");
                                                $i = 0;
                                                while ($row = $sel->fetch_assoc()) {
                                                    $i = $i + 1;
                                                    ?>
                                                    <tr>

                                                        <td><?php echo $i; ?></td>
                                                        <td><?php echo $row['coupon_code']; ?></td>
                                                        <td><?php
                                                            if ($row['status'] == '0') echo "Active";
                                                            else echo "Deactive";
                                                            ?></td>
                                                        <td class="text-center">
                                                            <a class="primary"
                                                               href="?edit=<?php echo $row['coupon_id']; ?>"
                                                               data-original-title="" title="">
                                                                <i class="fa fa-pencil-square-o fa-lg text-info"></i>&nbsp;
                                                            </a>
                                                            <a class="danger" href="?dele=<?php echo $row['coupon_id']; ?>"
                                                               data-original-title="" title="">
                                                                <i class="fa fa-trash-o fa-lg text-danger"></i>
                                                            </a>
                                                        </td>
                                                    </tr>
                                                <?php } ?>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <?php
                        if (isset($_GET['dele'])) {
                            ?>
                            <script type="text/javascript">
                                setTimeout(function () {
                                    swal({
                                            title: "Are you sure?",
                                            text: "You will not be able to recover this category!",
                                            type: "warning",
                                            showCancelButton: true,
                                            confirmButtonClass: "btn-danger",
                                            confirmButtonText: "Yes, delete it!",
                                            cancelButtonText: "No, cancel!",
                                            closeOnConfirm: false,
                                            closeOnCancel: false
                                        },
                                        function (isConfirm) {
                                            if (isConfirm) {
                                                <?php $con->query("delete from category where id=" . $_GET['dele'] . ""); ?>
                                                swal({
                                                    title: 'Category Delete',
                                                    text: 'Category Deleted Successfully',
                                                    type: 'error',
                                                    confirmButtonClass: 'btn-danger',
                                                    confirmButtonText: 'OK',
                                                }, function () {
                                                    window.location = 'categorylist.php';
                                                });
                                            } else {
                                                swal({
                                                    title: 'Cancelled',
                                                    text: 'Your category is safe :)',
                                                    type: 'error',
                                                    confirmButtonClass: 'btn-success',
                                                    confirmButtonText: 'OK',
                                                }, function () {
                                                    window.location = 'categorylist.php';
                                                });
                                            }
                                        });
                                }, 1000);
                            </script>
                            <?php
                        }
                        ?>


                    </div>
                </div>


                <?php
                if (isset($_POST['sub_cat'])) {
                    $coupon_code = mysqli_real_escape_string($con, $_POST['coupon_code']);

                    $con->query("insert into coupons (`coupon_code`)values('" . $coupon_code . "')");
                    echo '<script type="text/javascript">';
                    echo "setTimeout(function () { swal({title: 'Coupon Add', text: 'Coupon Added Successfully', type: 'success', confirmButtonClass: 'btn-success', confirmButtonText: 'OK', });";
                    echo '}, 1000);</script>';
                }

                ?>

                <?php include('include/footer.php') ?>
            </div>
        </div>
</body>

</html>