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
                                   <a href="<?= SITE_ADMIN_URL; ?>patient/add" class="btn btn-sm btn-primary btn-flat"><i class="fa fa-plus"></i> Add New Appoinment</a>
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
    <div class="modal fade" id="modal-default">
        <div class="modal-dialog">
            <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Add Prescription</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form role="form" method="post" id="add_prescription_form_validation" data-parsley-validate="true" method="POST">
                <div class="modal-body">                            
                    <div class="form-group">
                        <label for="treatment_type_id">Treatment Type</label>
                        <select class="" name="treatment_type_id" id="treatment_type_id" style="width: 100%;" ></select>
                    </div>
                    <div class="form-group">
                        <label for="amount">Fees</label>
                        <input type="text" id="amount" name="amount" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label for="payment_mode">Payment Mode</label>
                        <select name="payment_mode" id="payment_mode" class="form-control custom-select" required>
                            <option selected disabled>Select Payment Mode</option>
                            <option value="cash">Cash</option>
                            <option value="upi">UPI</option>
                            <option value="net_banking">NET Banking</option>
                            <option value="bank_transfer">Bank Transfer</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="remarks">Remarks</label>
                        <textarea id="remarks" name="remarks" class="form-control" rows="4"></textarea>
                    </div>
                </div>
                <div class="modal-footer justify-content-between">
                    <input type="hidden" name="patient_id" value="" />
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Save changes</button>
                </div>
            </form>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->
</div>
<!-- END: Content-->
<script>
    var get_timslot_option = [<?php echo json_encode(get_timslot_option()); ?>]
    //console.log('get_timslot_option',get_timslot_option)
    
    function upload_prescription(patient_id){
        $('#modal-default [name="patient_id"]').val(patient_id);
        $("#modal-default").modal("show");
    }
    function deleteRec(deleteId){
        deleteFooterRec("patient/delete_patient", deleteId);
    }
    $(document).ready(function () {
        setSelectValue('#treatment_type_id', 'value', 'name', 'name', site_url + "treatment_type/list", "");
        Inputmask("(,99){*|1}(,999){1|1}", {
            positionCaretOnClick: "radixFocus",
            _radixDance: true,
            radixPoint: ".",
            numericInput: true,
            placeholder: "0"
        }).mask("#amount");

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
                {'url': site_url + 'patient/edit/%s', 'uof': 0, 'icon': 'fa-edit', 'class': 'primary','title':'Edit'},
                {'url': 'deleteRec(%s)', 'uof': 1, 'icon': 'fa-trash', 'class': 'danger'},
                {'url': 'upload_prescription(%s)', 'uof': 1, 'icon': 'fa-upload', 'class': 'warning'},
                {'url': `${site_url}patient/view/%s`, 'uof': 0, 'icon': 'fa-list', 'class': 'info'},
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
            false,
            [[2,'desc'],[3,'desc']]
        );

        
        jQuery("#add_prescription_form_validation").on('submit', function (e) {
            e.preventDefault();
            var form = $(this);
            form.parsley().validate();
            if (form.parsley().isValid()) {
                sendFormRequest(/*Request path*/site_url + "patient/patient_prescription/add",
                        /* Form Data*/new FormData(this),
                        /* Alert Dialog, true if want to show*/false,
                        /* Toast Message, true if want to show*/true,
                        /* reload the current location,true if want*/true,
                        /* back to previous page*/false);
            }
        });
    });
</script>