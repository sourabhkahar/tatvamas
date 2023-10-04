<?php ?>
<style type="text/css">
    .table-bg{
        background-color: #e3e7ea;
        color: #000104;
    }
    .table-bordered td, .table-bordered th {
        border: 1px solid #f9f9f9;
    }
    .table thead th {
        vertical-align: bottom;
        border-bottom: 2px solid #f9f9f9;
    }
    .bg-list-diff{
        background-color: #f1f1f1 !important;
        color: #000104 !important;
    }
    .bg-list-danger{
        background-color: #f5dfe1 !important;
        color: #7b4044 !important;
    }
    .bg-list-success{
        background-color: #ebf7e9 !important;
        color: #495c47 !important;
    }
</style>
<link rel="stylesheet" href="<?= SITE_ADMIN_ASSETS ?>plugins/selectize/css/selectize.css">
<link rel="stylesheet" href="<?= SITE_ADMIN_ASSETS ?>plugins/parsley/src/parsley.css">
<div class="content-wrapper">
    <section class="content-header">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="card bg-info">
                        <div class="card-body" style="padding: 0.4rem;">
                            <div class="row">
                                <!-- Start Date Filter -->
                                <div class="col-md-2 col-12">
                                    <div class="form-group mb-2">
                                        <label for="start_date">Start Date</label>
                                        <input type="date" class="form-control" id="start_date" name="start_date" value="<?= general_date_format(); ?>" placeholder="Enter Start Date" >
                                    </div>
                                </div>
                                <!-- End Date Filter -->
                                <div class="col-md-2 col-12">
                                    <div class="form-group mb-2">
                                        <label for="end_date">End Date</label>
                                        <input type="date" class="form-control" id="end_date" name="end_date" value="<?= general_date_format(); ?>" placeholder="Enter End Date" >
                                    </div>
                                </div>
                                <div class="col-md-4 col-12 text-left pt-4">
                                    <button type="submit" class="btn btn-primary mt-2" name="submit" id="filter" value="Submit">Submit</button>
                                    <button type="button" id="reset" class="btn btn-secondary mt-2">Reset</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-12">
                    <div class="card card-secondary">
                        <div class="card-header">
                            <h3 class="card-title">Payment Collection Report</h3>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body">
                            <table class="table table-bordered table-sm table-bg">
                                <thead>
                                    <tr>
                                        <th class="text-center">No</th>
                                        <th >Payment Mode</th>
                                        <th class="text-center">Date</th>
                                        <th class="text-center">Total(Rs)</th>
                                    </tr>
                                </thead>
                                <tbody id="filter_data">
                                    <tr><td colspan="4" class="text-center">No Data Available</td></tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<!-- END: Content-->
<script src="<?= SITE_ADMIN_ASSETS ?>plugins/parsley/dist/parsley.min.js"></script>
<script src="<?= SITE_ADMIN_ASSETS ?>plugins/selectize/custom/component_select.js"></script>
<script src="<?= SITE_ADMIN_ASSETS ?>plugins/selectize/js/standalone/selectize.min.js"></script>
<script src="<?= SITE_ADMIN_ASSETS ?>plugins/selectize/js/selectize.min.js"></script>
<script>
    $(document).ready(function () {
        
        $("#filter").click(function (e) {
            var start_date = $("input[name=start_date]").val();
            var end_date = $("input[name=end_date]").val();
            
            $.ajax({
                type: "POST",
                url: site_url + "patient/report/table",
                dataType: "json",
                data: {
                    start_date: start_date,
                    end_date: end_date
                },
                success: function (resp) {
                    var htmlCode = "";
                    console.log(resp);
                    var sub_total=0;
                    if(resp.status > 0){
                        if (resp.data.length) {
                            $.each(resp.data, function(index, item) {
                                htmlCode += `<tr>
                                    <td class="text-center">${item.no}</td>
                                    <td>${item.name}</td>
                                    <td class="text-center">${item.date?moment(item.date).format("DD-MM-YYYY"):''}</td>
                                    <td class="text-center">${item.total}</td>
                                </tr>`;
                                                sub_total = sub_total + parseFloat(item.total);
                            });
                            htmlCode += `<tr>
                                <td colspan="3" class="text-right"><b>Sub Total</b></td>
                                <td class="text-center"><b>${sub_total}</b></td>
                            </tr>`;                             
                        }
                        else{
                            htmlCode += `<tr><td colspan="4" class="text-center">No Data Available</td></tr>`; 
                        }
                    }else{
                        htmlCode += `<tr><td colspan="4" class="text-center">No Data Available</td></tr>`; 
                    }
                    $("#filter_data").html(htmlCode);
                },
                error: function () {
                    alert('Error occurs!');
                }
            });
        });

        $("#reset").click(function (e) {
            $('input[name=start_date]').val("");
            $('input[name=end_date]').val("");
            party.clear();
        });
    });
</script>