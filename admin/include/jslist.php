<script src="../vendors/jquery/dist/jquery.min.js"></script>
<script src="../vendors/popper.js/dist/umd/popper.js"></script>
<script src="../vendors/bootstrap/dist/js/bootstrap.js"></script>
<script src="../vendors/jquery-mousewheel/jquery.mousewheel.min.js"></script>
<script src="../vendors/perfect-scrollbar/js/perfect-scrollbar.jquery.js"></script>
<script src="../vendors/chartist/dist/chartist.min.js"></script>
<script src="../vendors/chart.js/dist/Chart.min.js"></script>
<script src="../vendors/jqvmap/dist/jquery.vmap.min.js"></script>
<script src="../vendors/jqvmap/dist/maps/jquery.vmap.usa.js"></script>
<script src="../vendors/chartist-plugin-tooltip/dist/chartist-plugin-tooltip.min.js"></script>
<script src="../vendors/d3/d3.min.js"></script>
<script src="../vendors/d3-dsv/dist/d3-dsv.js"></script>
<script src="../vendors/d3-time-format/dist/d3-time-format.js"></script>
<script src="../vendors/c3/c3.min.js"></script>
<script src="../vendors/peity/jquery.peity.min.js"></script>
<script type="text/javascript" src="../vendors/cdn.datatables.net/v/bs4/dt-1.10.18/fc-3.2.5/r-2.2.2/datatables.min.js"></script>
<script src="../vendors/editable-table/mindmup-editabletable.js"></script>
<script src="../vendors/moment/min/moment.min.js"></script>
<script src="../vendors/tempus-dominus-bs4/build/js/tempusdominus-bootstrap-4.min.js"></script>
<script src="../vendors/fullcalendar/dist/fullcalendar.min.js"></script>
<script src="../vendors/owl.carousel/dist/owl.carousel.min.js"></script>
<script src="../vendors/ionrangeslider/js/ion.rangeSlider.min.js"></script>
<script src="../vendors/remarkable-bootstrap-notify/dist/bootstrap-notify.min.js"></script>
<script src="../vendors/bootstrap-sweetalert/dist/sweetalert.min.js"></script>
<script src="../vendors/nprogress/nprogress.js"></script>
<script src="../vendors/summernote/dist/summernote.min.js"></script>
<script src="../vendors/nestable/jquery.nestable.js"></script>
<script src="../vendors/jquery-typeahead/dist/jquery.typeahead.min.js"></script>
<script src="../vendors/autosize/dist/autosize.min.js"></script>
<script src="../vendors/bootstrap-show-password/dist/bootstrap-show-password.min.js"></script>
<script src="../vendors/dropify/dist/js/dropify.min.js"></script>
<script src="../vendors/html5-form-validation/dist/jquery.validation.min.js"></script>
<script src="../vendors/jquery-steps/build/jquery.steps.min.js"></script>
<script src="../vendors/jquery-mask-plugin/dist/jquery.mask.min.js"></script>
<script src="../vendors/select2/dist/js/select2.full.min.js"></script>
<script src="../vendors/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
<script src="../vendors/d3-dsv/dist/d3-dsv.js"></script>
<script src="../vendors/d3-time-format/dist/d3-time-format.js"></script>
<script src="../vendors/techan/dist/techan.min.js"></script>
<script src="../vendors/Stickyfill/dist/stickyfill.min.js"></script>
<script src="../components/core/index.js"></script>
<script src="../components/menu-left/index.js"></script>
<script src="../components/menu-top/index.js"></script>
<script src="../components/sidebar/index.js"></script>
<script src="../components/topbar/index.js"></script>
<script src="../components/chat/index.js"></script>
<script src="../components/tagsinput/js/jquery.tagsinput-revisited.js"></script>
<script>
    $(document).ready(function() {
        $('.air__initialLoading').delay(200).fadeOut(400)
    })
</script>


<script>
    ;
    (function($) {
        'use strict'
        $(function() {
            $('#example1').DataTable({
                responsive: true,
            })

            $('#example2').DataTable({
                autoWidth: true,
                scrollX: true,
                fixedColumns: true,
            })

            $('#example3').DataTable({
                autoWidth: true,
                scrollX: true,
                fixedColumns: true,
            })
        })
    })(jQuery)
</script>