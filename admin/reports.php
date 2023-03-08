<?php require '../include/dbconfig.php'; ?>
<?php include('include/session.php') ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>
        <?php echo $fset['title']; ?> | Catagory
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
                    <h5>Reports</h5>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="row">

                                    <div class="col-lg-12 mb-5">
                                        <h4 class="mb-4">
                                            <strong>Reports</strong>
                                        </h4>
                                        <form id="form-validation-simple" name="form-validation-simple" method="POST"
                                              enctype="multipart/form-data">
                                            <div class="form-group">
                                                <label class="form-label">To Date</label>
                                                <input name="to_date" type="date" class="form-control"
                                                       data-validation="[NOTEMPTY]" required/>
                                            </div>
                                            <div class="form-group">
                                                <label class="form-label">From Date</label>
                                                <input name="form_date" type="date" class="form-control"
                                                       data-validation="[NOTEMPTY]" required/>
                                            </div>
                                            <div class="form-actions">
                                                <button type="submit" class="btn btn-success mr-2 px-5" name="sub_cat">
                                                    View Report
                                                </button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


            </div>
        </div>

        <?php include('include/footer.php') ?>
    </div>
</div>
</body>

</html>