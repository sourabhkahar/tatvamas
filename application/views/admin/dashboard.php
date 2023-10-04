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
    .small-box .icon>img{
        
        position: absolute;
        right: 15px;
        top: 15px;
        transition: all .3s linear;
    }
</style>
<div class="content-wrapper">
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0"><?= $page_name; ?></h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="<?= SITE_ADMIN_URL; ?>">Dashboard</a></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <?php 
    $cash =0;
    $upi =0;
    $net_banking =0;
    $bank_transfer =0;
    $pending =0;
    $todays_total_payment = 0;
    if (!empty($today_payment_collection)) {
        foreach ($today_payment_collection as $key => $value) {
            if ($value["payment_mode"]=="cash") {
                $cash = $cash + $value["amount"];
            }
            
            if ($value["payment_mode"]=="bank_transfer") {
                $bank_transfer = $bank_transfer + $value["amount"];
            }
            
            if ($value["payment_mode"]=="net_banking") {
                $net_banking = $net_banking + $value["amount"];
            }
            
            if ($value["payment_mode"]=="upi") {
                $upi = $upi + $value["amount"];
            }

            if ($value["payment_mode"]=="pending") {
                $pending = $pending + $value["amount"];
            }
        }
    }

    $todays_total_payment = $cash + $bank_transfer + $net_banking + $upi + $pending;
    ?>

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="row mb-3">
                <div class="col-lg-4 col-6">                    
                    <div class="small-box bg-info" style="min-height:150px;">
                        <div class="inner">
                            <h3>Date:</h3>
                            <p><?php echo date("d-m-Y h:i A D") ?></p>
                            <p>&nbsp;</p>
                        </div>
                        <div class="icon">
                            <img src="../Index_files/logo.jpg" width="100" />
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-6 text-center">
                    <a href="<?= SITE_ADMIN_URL.'patient/add'; ?>" class="small-box-footer" >
                        <div class="small-box bg-success" style="min-height:150px;">
                            <div class="inner">
                                <h3>SCHEDULE APPOINTMENXXT</h3>
                                
                            </div>
                            <div class="icon">
                                <i class="ion ion-stats-bars"></i>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-4 col-6 text-center">                    
                    <a href="<?= SITE_ADMIN_URL.'patient'; ?>">
                        <div class="small-box bg-warning" style="min-height:150px;">
                            <div class="inner">
                                <h3>PATIENT LIST</h3>                            
                            </div>
                            <div class="icon">
                                <i class="ion ion-stats-bars"></i>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="row mb-3">
                <div class="col-lg-4 col-6 text-center">   
                    <a href="<?= SITE_ADMIN_URL.'patient'; ?>" >
                        <div class="small-box bg-info" style="min-height:186px;">
                            <div class="inner">
                                <h3>UPLOAD PRESCRIPTION</h3>                            
                            </div>
                            <div class="icon">
                                <i class="ion ion-bag"></i>
                            </div>                           
                            
                        </div>
                    </a>
                </div>
                <div class="col-lg-4 col-6 text-center">
                    <a href="<?= SITE_ADMIN_URL.'patient'; ?>/status/appointed" >
                        <div class="small-box bg-danger" style="min-height:150px;">
                            <div class="inner">
                                <h3>TODAY SCHEDULED<br>APPOINTMENTS</h3>
                                <p class="text-center pt-2 " style="font-size:2rem;"><b><?php echo $today_scheduled_appointments; ?></b></p>
                                
                            </div>
                            <div class="icon">
                                <i class="ion ion-stats-bars"></i>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-4 col-6 text-center">   
                    <a href="<?= SITE_ADMIN_URL.'patient'; ?>/status/admitted" >                 
                        <div class="small-box bg-warning" style="min-height:150px;">
                            <div class="inner">
                                <h3>TODAY ADMITTED<br>PATIENTS</h3>
                                <p class="text-center pt-2 " style="font-size:2rem;"><b><?php echo $today_admitted_patients; ?></b></p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-stats-bars"></i>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="row mb-3">
                <div class="col-lg-6 col-6">                    
                    <div class="small-box bg-info text-center" style="min-height:150px;">
                        <div class="inner">
                            <h3>TODAY PAYMENT COLLECTION</h3>
                            <div class="row">
                                <div class="col-12 col-sm-6 col-md-3">
                                    <div class="info-box bg-warning">

                                        <div class="info-box-content">
                                            <span class="info-box-text"><b>Cash (Rs)</b></span>
                                            <span class="info-box-number"><?php echo $cash; ?> </span>
                                        </div>
                                        <!-- /.info-box-content -->
                                    </div>
                                <!-- /.info-box -->
                                </div>
                                <!-- /.col -->
                                <div class="col-12 col-sm-6 col-md-3">
                                <div class="info-box mb-3 bg-warning">

                                    <div class="info-box-content">
                                    <span class="info-box-text "><b>UPI (Rs)</b></span>
                                    <span class="info-box-number"><?php echo $upi; ?></span>
                                    </div>
                                    <!-- /.info-box-content -->
                                </div>
                                <!-- /.info-box -->
                                </div>
                                <!-- /.col -->

                                <!-- fix for small devices only -->
                                <div class="clearfix hidden-md-up"></div>

                                <div class="col-12 col-sm-6 col-md-3">
                                <div class="info-box mb-3 bg-warning">

                                    <div class="info-box-content p-0">
                                    <span class="info-box-text "><b>Net Banking (Rs)</b></span>
                                    <span class="info-box-number"><?php echo $net_banking; ?></span>
                                    </div>
                                    <!-- /.info-box-content -->
                                </div>
                                <!-- /.info-box -->
                                </div>
                                <!-- /.col -->
                                <div class="col-12 col-sm-6 col-md-3">
                                <div class="info-box mb-3 bg-warning">

                                    <div class="info-box-content p-0">
                                    <span class="info-box-text "><b>Bank Transfer (Rs)</b></span>
                                    <span class="info-box-number"><?php echo $bank_transfer; ?></span>
                                    </div>
                                    <!-- /.info-box-content -->
                                </div>
                                <!-- /.info-box -->
                                </div>
                                <!-- /.col -->
                            </div>
                            <div class="row">
                            <div class="col-12 col-sm-6 col-md-3">
                                <div class="info-box mb-3 bg-warning">
                                    <div class="info-box-content p-0">
                                    <span class="info-box-text "><b>Pending (Rs)</b></span>
                                    <span class="info-box-number"><?php echo $pending; ?></span>
                                    </div>
                                    <!-- /.info-box-content -->
                                </div>
                                <!-- /.info-box -->
                                </div>
                            </div>
                            <p style="font-weight:bold; font-size:1.5rem;">Total Collection (Rs): <?php echo $todays_total_payment; ?></p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-bag"></i>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-6">
                    <a href="<?= SITE_ADMIN_URL.'patient/report'; ?>" class="text-center" >
                        <div class="small-box bg-success" style="min-height:220px;">
                            <div class="inner">
                                <h3>PAYMENT COLLECTION HISTORY</h3>
                            </div>
                            <div class="icon">
                                <i class="ion ion-stats-bars"></i>
                            </div>
                            
                        </div>
                    </a>
                </div>
                
            </div>
        </div>
    </section>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->
<div class="modal fade" id="dashboard-modal">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="dashboard-party-title">Transaction Add</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body table-responsive">
                <table id="dashboard_party" class="table table-bordered table-sm table-bg">
                    <thead>
                        <tr>
                            <th class="text-center">SR. No</th>
                            <th class="text-left">Party Name</th>
                            <th class="text-right">Opening Balance</th>
                            <th class="bg-list-danger text-right">Debit</th>
                            <th class="bg-list-success text-right">Credit</th>
                            <th class="text-right">Total Balance</th>
                        </tr>
                    </thead>
                    <tbody id="dashboard-party-list"></tbody>
                </table>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<script>
    function partyLoad(elem)
    {   
        if(elem == 3){
            $("#dashboard-party-title").html('Bank List');
        }else if(elem == 2){
            $("#dashboard-party-title").html('Cash List');
        }else{
            $("#dashboard-party-title").html('Party List');
        }
        
        $("#dashboard-party-list").html('');

        var formData = new FormData();
        formData.append("party_type_id", elem);
        sendGetRequest(site_url + 'dashboard/modal/party', formData, function(status, resp) {
            if (resp.status == 1) {
                var htmlCode = "";
                $.each(resp.data, function(index, item) {
                    htmlCode += `<tr>
                            <td class="text-center">${parseInt(index)+1}</td>
                            <td class="text-left">`+item.party_name+`</td>
                            <td class="text-right">`+item.opening_balance+`</td>
                            <td class="bg-list-danger text-right">`+item.debit_total+`</td>
                            <td class="bg-list-success text-right">`+item.credit_total+`</td>
                            <td class="text-right">`+item.balance+`</td></tr>`;
                });
                $("#dashboard-party-list").html(htmlCode);
                $('#dashboard-modal').modal('show');
            } else {
                $.dialog({
                    title: "Load Party List",
                    content: "No Party Data found",
                    theme: 'material',
                    closeIcon: true,
                    animation: 'scale',
                    backgroundDismiss: true,
                    type: 'red',
                });
            }
        });
    }
</script>