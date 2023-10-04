<?php ?>
<div class="content-wrapper">
    <section class="content-header">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="card card-primary card-outline">
                        <div class="card-header">
                            <h3 class="card-title"><?= $page_name; ?></h3>
                            <div class="card-tools">
                                   <!-- <a href="<?= SITE_ADMIN_URL; ?>patient/add" class="btn btn-sm btn-primary btn-flat"><i class="fa fa-plus"></i> Add New Appoinment</a> -->
                            </div>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body pad table-responsive">
                            <table class="patient-table table table-bordered table-striped">
                                <thead>
                                    <tr>
                                        <th>Name</th>
                                        <th>Mobile No</th>
                                        <th>Appointment Date</th>
                                        <th>Appointment Time</th>
                                        <th>Age</th>
                                        <th>Gender</th>                                        
                                        <th>IS Emergency</th>
                                        <th>Status</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<!-- END: Content-->
<script>
    var get_timslot_option = [<?php echo json_encode(get_timslot_option()); ?>]
    //console.log('get_timslot_option',get_timslot_option)
    function deleteRec(deleteId){
        deleteFooterRec("patient/delete_patient", deleteId);
    }
    $(document).ready(function () {
        var emergencyObj = {
            0: {title: 'No', class: 'badge-light-warning'},
            1: {title: 'Yes', class: 'badge-light-success'}
        };
        var statusObj = {
            'appointed': {title: 'Appointed', class: 'badge-light-info'},
            'admitted': {title: 'Admitted', class: 'badge-light-success'},
            'cancelled': {title: 'Cancelled', class: 'badge-light-danger'},
            'discharged': {title: 'Discharged', class: 'badge-light-danger'},
        };
        //table, columns, ajaxUrl, columnActions, targetRow, customColumns, returnTable
        setTableView(
            'patient-table',
            [
                // {data: 'patient_id'},
                // {data: 'patient_number'},
                {data: 'name'},
                {data: 'mobile_no'},
                {data: 'appointment_date'},
                {
                    data: 'start_time',
                    render:function(data, type, full, meta){
                        var $status = data;
                        //console.log($status,get_timslot_option[0][$status])
                        return get_timslot_option[0][$status];
                    }
                },
                {data: 'age'},
                {
                    data: 'gender',
                    render: function (data, type, full, meta) {
                        var $status = full['gender'];
                        if($status == 'm'){
                            return "Male";
                        }else if($status == 'f'){
                            return "Female";
                        }else{
                            return "";
                        }
                    }
                },
                
                {
                    data: 'is_emergency',
                    render: function (data, type, full, meta) {
                        var $status = full['is_emergency'];
                        return emergencyObj[$status].title;
                    }
                },
                {
                    data: 'status',
                    render: function (data, type, full, meta) {
                        var $status = full['status'];
                        return statusObj[$status].title;
                    }
                },
                {data: 'is_active'}
            ],
            site_url + 'patient/table',
            [
                {'url': site_url + 'patient/edit/%s', 'uof': 0, 'icon': 'fa-edit', 'class': 'primary'},
                {'url': 'deleteRec(%s)', 'uof': 1, 'icon': 'fa-trash', 'class': 'danger'}
            ],
            'patient_id',
            [
                // {
                //     // For Responsive
                //     targets: 0,
                //     className: 'control',
                //     orderable: false,
                //     responsivePriority: 2,
                //     render: function (data, type, full, meta) {
                //         return '';
                //     }
                // },
                // {
                //     // User Status
                //     targets: 5,
                    
                // },
                // {
                //     // User Status
                //     targets: 8
                // },
                // {
                //     // User Status
                //     targets: 9
                // }
            ],
            false
        );
    });
</script>