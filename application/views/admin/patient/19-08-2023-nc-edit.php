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
                        <li class="breadcrumb-item active">Patient</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <section class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="card card-primary">
                        <div class="card-header">
                            <h3 class="card-title">
                                <?= $page_name; ?>
                            </h3>
                        </div>
                        <form id="form_validation" data-parsley-validate="true" method="POST">
                            <div class="card-body">
                                <div class="row">
                                        <div class="form-group col-md-3">
                                            <label for="name">Patient Name</label>
                                            <input type="text" name="name" class="form-control" id="name" value="<?= $details->name; ?>"
                                                placeholder="Enter Patient Name" maxlength="255" required>
                                        </div>
                                        <div class="form-group col-md-3">
                                            <label for="mobile_no">Mobile No</label>
                                            <input type="text" name="mobile_no" class="form-control" id="mobile_no" value="<?= $details->mobile_no; ?>"
                                                placeholder="Enter Mobile No" maxlength="10" required
                                                data-inputmask='"mask": "9999999999"' data-mask>
                                        </div>
                                        <div class="form-group col-md-3">
                                            <label for="appointment_date">Appointment Date</label>
                                            <input type="date" name="appointment_date" class="form-control"
                                                id="appointment_date" value="<?= $details->appointment_date; ?>" placeholder="Enter Appointment Date" required>
                                        </div>
                                        <div class="form-group col-md-3">
                                            <label for="start_time">Time Slot</label>
                                            <select name="start_time" id="start_time" class="form-control custom-select" required>
                                                <option selected disabled>Select Time Slot</option>
                                                <?php
                                                foreach (get_timslot_option() as $key => $value) {
                                                    echo "<option value='" . $key . "' ".($details->start_time==$key?"selected":"")." >" . $value . "</option>";
                                                }
                                                ?>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="row">                  
                                        <div class="form-group col-md-3">
                                            <label for="age">Age</label>
                                            <input type="number" name="age" class="form-control" id="age" value="<?= $details->age; ?>"
                                                placeholder="Enter Your Age" min="1">
                                        </div>
                                        <div class="form-group col-md-3">
                                            <label for="gender">Gender</label>
                                            <select name="gender" id="gender" class="form-control" required>
                                                <option value="">Select gender</option>
                                                <option value="m" <?= ($details->gender == "m") ? "selected" : "";?>>Male</option>
                                                <option value="f" <?= ($details->gender == "f") ? "selected" : "";?>>Female</option>
                                            </select>
                                        </div>
                                        <div class="form-group col-md-3">
                                            <label for="address">Address</label>
                                            <textarea id="address" name="address" class="form-control"
                                                placeholder="Enter Address Here...."><?= $details->address; ?></textarea>
                                        </div>
                                        <div class="form-group col-md-3">
                                            <label for="city">City</label>
                                            <input type="text" name="city" class="form-control" id="city" value="<?= $details->city; ?>"
                                                placeholder="Enter city" maxlength="255">
                                        </div>
                                        <div class="form-group col-md-3" style="display:none;">
                                            <label for="email_id">Email Address</label>
                                            <input type="email" name="email_id" class="form-control" id="email_id" value="<?= $details->email_id; ?>"
                                                placeholder="Enter Patient Email ID" maxlength="255">
                                        </div>
                                        <div class="form-group col-md-3" style="display:none;">
                                            <label for="relative_name">Guardian/Relative Name</label>
                                            <input type="text" name="relative_name" class="form-control" id="relative_name"
                                                value="<?= $details->relative_name; ?>" placeholder="Enter Relative Name" maxlength="255">
                                        </div>
                                    </div>
                                
                                    <div class="row">                                        
                                        <div class="form-group col-md-4" style="display:none;">
                                            <label for="pincode">Pin code</label>
                                            <input type="text" name="pincode" class="form-control" id="pincode" value="<?= $details->pincode; ?>"
                                            placeholder="Enter Pin code" maxlength="6"
                                            data-inputmask='"mask": "999999"' data-mask>                                            
                                        </div>
                                    </div>                            
                                    <div class="row">
                                        <div class="form-group col-md-3">
                                            <label for="status">Status</label>
                                            <select class="form-control" id="status" name="status" required>
                                                <?php
                                                foreach (get_patien_status_option() as $key => $value) {
                                                    $selected = ($key == $details->status) ? "selected" : "";
                                                    echo "<option value='" . $key . "' ".$selected.">" . $value . "</option>";
                                                }
                                                ?>
                                            </select>
                                        </div>
                                        <div class="form-group col-md-3">
                                        <br />
                                            <div class="icheck-success d-inline">
                                                <input type="checkbox" name="is_emergency" id="is_emergency" <?= ($details->is_emergency == 1) ? "checked" : "";?>>
                                                <label for="is_emergency" style="padding-top:15px;">Emergency</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card-footer text-center">
                                <button type="submit" class="btn btn-primary" name="submit"
                                    value="Submit">Submit</button>
                                <button type="button" onclick="window.location.href='<?= SITE_ADMIN_URL.'patient'; ?>'" class="btn btn-danger ml-4">Cancel</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

            <div class="row d-none">
                <div class="col-12">
                    <div class="card card-primary">
                        <div class="card-header">
                            <h3 class="card-title">Prescription List</h3>

                            <div class="card-tools">
                                <button type="button" class="btn btn-sm btn-default" data-toggle="modal" data-target="#modal-default" title="Add Prescription Section">
                                    Add New Prescription
                                </button> 
                            </div>
                        </div>
                        
                        <div class="card-body ">
                            <table class="prescription-table table table-bordered table-striped">
                                <thead>
                                    <tr>
                                        <th>Treatment Type</th>
                                        <th>Amount</th>
                                        <th>Payment mode</th>
                                        <th>Remarks</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                            </table>
                        </div>                        
                    </div>
                </div>
            </div>
            <!-- <div class="row">

                <div class="col-md-6">
                    <div class="card card-primary">
                        <div class="card-header">
                            <h3 class="card-title">Prescription Section</h3>

                            <div class="card-tools">                                
                                <button type="button" class="btn btn-tool" data-toggle="modal" data-target="#modal-default" title="Add Prescription Section">
                                Add Prescription Section
                                </button> 
                            </div>
                        </div>
                        <form role="form" method="post">
                            <div class="card-body ">
                                <div class="form-group">
                                    <label for="treatment_type_id">Treatment Type</label>
                                    <select class="" name="treatment_type_id" id="treatment_type_id" style="width: 100%;"></select>
                                </div>
                                <div class="form-group">
                                    <label for="amount">Fees</label>
                                    <input type="text" id="amount" name="amount" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="payment_mode">Payment Mode</label>
                                    <select name="payment_mode" id="payment_mode" class="form-control custom-select">
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
                            <div class="card-footer">
                                <input type="reset" value="Cancel" class="btn btn-secondary">
                                <input type="submit" value="Submit" class="btn btn-success float-right">
                            </div>
                        </form>
                    </div>

                    
                </div>
            </div> -->
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
                    <input type="hidden" name="patient_id" value="<?= $details->patient_id; ?>" />
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

      <div class="modal fade" id="edit-modal-default">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h4 class="modal-title">Edit Prescription</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <form role="form" method="post" id="edit_prescription_form_validation" data-parsley-validate="true" method="POST">
                <div class="modal-body">                            
                    <div class="form-group">
                        <label for="treatment_type_id_edit">Treatment Type</label>
                        <select class="" name="treatment_type_id" id="treatment_type_id_edit" style="width: 100%;" ></select>
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
                    <input type="hidden" name="patient_details_id" id="patient_details_id" value="" />
                    <input type="hidden" name="patient_id" value="<?= $details->patient_id; ?>" />
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
<script type="text/javascript">
    function patient_prescription_edit(edit_id){
        var formData = new FormData();
        formData.append("patient_details_id", edit_id);
        sendGetRequest( `${site_url}patient/patient_prescription/list_single_patient_prescription/${edit_id}`, formData, function(status, data) {
            if (status == 1) {
                setSelectValue('#treatment_type_id_edit', 'value', 'name', 'name', site_url + "treatment_type/list", data.treatment_type_id);
                $("#edit-modal-default #treatment_type_id_edit").val(data.treatment_type_id).change();
                $("#edit-modal-default #amount").val(`${data.amount!=null && data.amount!=''?parseFloat(data.amount):''}`);
                $("#edit-modal-default #patient_details_id").val(data.patient_details_id);
                $("#edit-modal-default #payment_mode").val(data.payment_mode).change();
                $("#edit-modal-default #remarks").html(data.remarks);
                $("#edit-modal-default").modal("show");
            } else {
                
            }
        });
    }

    function deleteRec(deleteId){
        deleteFooterRec("patient/patient_prescription/delete_patient_prescription", deleteId);
    }
    var treatment_type_response = $.ajax({
            type: "GET",
            url: site_url + "/treatment_type/list",
            processData: false,
            contentType: false,
            cache: false,
            timeout: 600000,
    })

    $(document).ready(function () {
       var treatment_type_id = setSelectValue('#treatment_type_id', 'value', 'name', 'name', site_url + "treatment_type/list", "");
        //console.log("treatment_type_id",treatment_type_id);
        jQuery("#is_emergency").on('change', function (e) {
            if($(this).prop("checked")){
                $("[id='status']").val('admitted').change();
            }else{
                $("[id='status']").val('appointed').change();                
            }
        })
        jQuery("#form_validation").on('submit', function (e) {
            e.preventDefault();
            var form = $(this);
            form.parsley().validate();
            if (form.parsley().isValid()) {
                sendFormRequest(/*Request path*/site_url + "patient/edit/<?= $details->patient_id; ?>",
                        /* Form Data*/new FormData(this),
                        /* Alert Dialog, true if want to show*/false,
                        /* Toast Message, true if want to show*/true,
                        /* reload the current location,true if want*/false,
                        /* back to previous page*/true);
            }
        });

        $('[data-mask]').inputmask()
        Inputmask("(,99){*|1}(,999){1|1}", {
            positionCaretOnClick: "radixFocus",
            _radixDance: true,
            radixPoint: ".",
            numericInput: true,
            placeholder: "0"
        }).mask("#amount");
        
        console.log("treatment_type_response",treatment_type_response)
        
        treatment_type_response.done(function(treatment_type_result){
            console.log("treatment_type_result",treatment_type_result)
            treatment_type_result = treatment_type_result;
            var name_t = new Array();
            setTableView(
            'prescription-table',
            [
                // {data: 'patient_id'},
                // {data: 'patient_number'},
                {
                    data: 'treatment_type_id',
                    render: function (data, type, full, meta) {
                        var $status = data;
                        return treatment_type_result.filter(ttr=>ttr.value==$status).length?treatment_type_result.filter(ttr=>ttr.value==$status)[0].name:'';
                    }
                },
                {data: 'amount'},
                {data: 'payment_mode'},
                {data: 'remarks'},
                // {
                //     data: 'gender',
                //     render: function (data, type, full, meta) {
                //         var $status = full['gender'];
                //         if($status == 'm'){
                //             return "Male";
                //         }else if($status == 'f'){
                //             return "Female";
                //         }else{
                //             return "";
                //         }
                //     }
                // },
                // {data: 'appointment_date'},
                // {data: 'start_time'},
                // {
                //     data: 'is_emergency',
                //     render: function (data, type, full, meta) {
                //         var $status = full['is_emergency'];
                //         return emergencyObj[$status].title;
                //     }
                // },
                // {
                //     data: 'status',
                //     render: function (data, type, full, meta) {
                //         var $status = full['status'];
                //         return statusObj[$status].title;
                //     }
                // },
                {
                    data: 'patient_details_id'
                }
            ],
            site_url + 'patient/table_patient_prescription/<?= $details->patient_id; ?>',
            [
                {'url': 'patient_prescription_edit(%s)', 'uof': 1, 'icon': 'fa-edit', 'class': 'primary'},
                {'url': 'deleteRec(%s)', 'uof': 1, 'icon': 'fa-trash', 'class': 'danger'}
            ],
            'patient_details_id',
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
        
        jQuery("#edit_prescription_form_validation").on('submit', function (e) {
            e.preventDefault();
            var patient_details_id = $("#edit-modal-default #patient_details_id").val();
            var form = $(this);
            form.parsley().validate();
            if (form.parsley().isValid()) {
                sendFormRequest(/*Request path*/site_url + "patient/patient_prescription/edit/"+patient_details_id,
                        /* Form Data*/new FormData(this),
                        /* Alert Dialog, true if want to show*/false,
                        /* Toast Message, true if want to show*/true,
                        /* reload the current location,true if want*/true,
                        /* back to previous page*/false);
            }
        });
        
    });
</script>