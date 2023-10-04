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
                                        <input type="text" name="name" class="form-control" id="name" value=""
                                            placeholder="Enter Patient Name" maxlength="255" required>
                                    </div>                                        
                                    <div class="form-group col-md-3">
                                        <label for="mobile_no">Mobile No</label>
                                        <input type="text" name="mobile_no" class="form-control" id="mobile_no" value=""
                                            placeholder="Enter Mobile No" maxlength="10" required
                                            data-inputmask='"mask": "9999999999"' data-mask>
                                    </div>
                                    <div class="form-group col-md-3">
                                                <label for="appointment_date">Appointment Date</label>
                                                <input type="date" name="appointment_date" class="form-control"
                                                    id="appointment_date" value="<?php echo date("Y-m-d") ?>" min="<?php echo date("Y-m-d") ?>" placeholder="Enter Appointment Date" required>
                                    </div>
                                    <div class="form-group col-md-3">
                                            <label for="start_time">Time Slot</label>                                            
                                            <select name="start_time" id="start_time" class="form-control custom-select" required>
                                                <option selected disabled>Select Time Slot</option>
                                                <?php
                                                foreach (get_timslot_option() as $key => $value) {
                                                    echo "<option value='" . $key . "'>" . $value . "</option>";
                                                }
                                                ?>
                                            </select>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group col-md-3">
                                            <label for="age">Age</label>
                                            <input type="number" name="age" class="form-control" id="age" value=""
                                                placeholder="Enter Your Age" min="1">
                                        </div>
                                    <div class="form-group col-md-3">
                                            <label for="gender">Gender</label>
                                            <select name="gender" id="gender" class="form-control" required>
                                                <option value="">Select gender</option>
                                                <option value="m" selected>Male</option>
                                                <option value="f">Female</option>
                                            </select>
                                        </div>
                                        <div class="form-group col-md-3">
                                            <label for="address">Address</label>
                                            <textarea id="address" name="address" class="form-control"
                                                placeholder="Enter Address Here...."></textarea>
                                        </div>
                                    <div class="form-group col-md-3">
                                            <label for="city">City</label>
                                            <input type="text" name="city" class="form-control" id="city" value=""
                                                placeholder="Enter city" maxlength="255">
                                        </div>
                                        <div class="form-group col-md-3" style="display:none;">
                                            <label for="email_id">Email Address</label>
                                            <input type="email" name="email_id" class="form-control" id="email_id" value=""
                                                placeholder="Enter Patient Email ID" maxlength="255">
                                        </div>
                                    <div class="form-group col-md-3" style="display:none;">
                                            <label for="relative_name">Guardian/Relative Name</label>
                                            <input type="text" name="relative_name" class="form-control" id="relative_name"
                                                value="" placeholder="Enter Relative Name" maxlength="255">
                                        </div>
                                </div>
                                <div class="row">                                    
                                        <div class="form-group col-md-4" style="display:none;">
                                            <label for="pincode">Pin code</label>
                                            <input type="text" name="pincode" class="form-control" id="pincode" value=""
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
                                                    echo "<option value='" . $key . "' ".($key=='appointed'?"selected":"").">" . $value . "</option>";
                                                }
                                                ?>
                                            </select>
                                        </div>
                                        <div class="form-group col-md-3">
                                            <br />
                                            <div class="icheck-success d-inline">
                                                <input type="checkbox" name="is_emergency" id="is_emergency">
                                                <label for="is_emergency" style="padding-top:15px;">Emergency</label>
                                            </div>
                                        </div>
                                        <div class="form-group col-md-3">
                                            <label for="amount">Fees</label>
                                            <input type="number" id="amount" name="amount" class="form-control" maxlength="10" required>
                                        </div>
                                        <div class="form-group col-md-3">
                                            <label for="payment_mode">Payment Mode</label>
                                            <select name="payment_mode" id="payment_mode" class="form-control custom-select" required>
                                                <option selected disabled>Select Payment Mode</option>
                                                <option value="cash">Cash</option>
                                                <option value="upi">UPI</option>
                                                <option value="net_banking">NET Banking</option>
                                                <option value="bank_transfer">Bank Transfer</option>
                                            </select>
                                        </div>
                                </div>
                            </div>
                            <div class="card-footer text-center">
                                <button type="submit" class="btn btn-primary" name="submit"
                                    value="Submit">Submit</button>
                                <button type="button" onclick="history.go(-1);"
                                    class="btn btn-danger ml-4">Cancel</button>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-md-6 d-none">
                    <div class="card card-primary">
                        <div class="card-header">
                            <h3 class="card-title">Prescription Section</h3>

                            <div class="card-tools">
                                <!-- <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                                <i class="fas fa-minus"></i></button> -->
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
                                <!-- <a href="#" class="btn btn-secondary">Cancel</a> -->
                                <input type="reset" value="Cancel" class="btn btn-secondary">
                                <input type="submit" value="Submit" class="btn btn-success float-right">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<script type="text/javascript">
    $(document).ready(function () {
        setSelectValue('#treatment_type_id', 'value', 'name', 'name', site_url + "treatment_type/list", "");
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
                sendFormRequestRedirecToEdit(site_url + "patient/add",
                        /* Form Data*/new FormData(this),
                        /* Alert Dialog, true if want to show*/false,
                        /* Toast Message, true if want to show*/true,
                        /* reload the current location,true if want*/false,
                        /* back to previous page*/site_url + "dashboard");
            }
        });
        // $('[data-mask]').inputmask()
        // Inputmask("(,99){*|1}(,999){1|1}", {
        //     positionCaretOnClick: "radixFocus",
        //     _radixDance: true,
        //     radixPoint: ".",
        //     numericInput: true,
        //     placeholder: "0"
        // }).mask("#amount");
    });
</script>