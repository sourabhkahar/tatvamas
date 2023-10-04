<style>
    .table-responsive .dataTables_length{
        margin-right:1rem!important
    }
    .table-responsive .dt-buttons.btn-group.flex-wrap button{
        margin-left: 0.5rem!important;
        margin-right: 0.5rem!important;    
    }
</style>
<div class="content-wrapper">
    <section class="content-header">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="card card-primary card-outline">
                        <div class="card-header">
                            <h3 class="card-title"><?= $page_name; ?></h3>
                            <div class="card-tools">
                                <div class="d-flex align-items-center">          
                                <div class="col-md-3">
                                        <label for="name">Appointment Date</label>
                                        <input type="date" class="form-control mr-2" id="start_date" name="start_date" value="<?php echo isset($today_date)? general_date_format():""; ?>" placeholder="Enter Date" >
                                    </div>  
                                    <div class="col-md-3">
                                        <label for="name">Status</label>
                                        <select class="form-control mr-2" id="status" name="status">
                                        <?php
                                        foreach (get_patien_status_option() as $key => $value) {
                                            $selected = ($status == $key) ? "selected" : "";
                                            echo "<option value='" . $key . "' ".$selected.">" . $value . "</option>";
                                        }
                                        ?>
                                    </select>
                                    </div>                                                                  
                                    <button type="submit" class="btn btn-primary btn-sm ml-2 mr-2 mt-4" name="submit" id="filter" value="Submit">Filter</button>
                                    <button type="button" id="reset" class="btn btn-sm btn-secondary ml-2 mr-2 mt-4">Reset</button>
                                    <a href="<?= SITE_ADMIN_URL; ?>patient/add" class="btn btn-sm btn-primary btn-flat ml-2 mr-2 mt-4"><i class="fa fa-plus"></i> Add New Appoinment</a>
                                </div>
                            </div>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body pad table-responsive">
                            <table class="patient-table table table-bordered table-striped">
                                <thead>
                                    <tr>
                                        <th></th>
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
                        <input type="number" id="amount" name="amount" class="form-control" min="0" required>
                    </div>
                    <div class="form-group">
                        <label for="payment_mode">Payment Mode</label>
                        <select name="payment_mode" id="payment_mode" class="form-control custom-select" required>
                            <option selected disabled>Select Payment Mode</option>
                            <option value="cash">Cash</option>
                            <option value="upi">UPI</option>
                            <option value="net_banking">NET Banking</option>
                            <option value="bank_transfer">Bank Transfer</option>
                            <option value="pending">Pending</option>
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
    function setTableListView(table, columns, ajaxUrl, columnActions, targetRow, customColumns, returnTable, OrderColumnIndex=[[0,'desc']]) {
    var tableName = $("."+table);
    if (tableName.length) {        
        var start_date = $.trim($("input[name=start_date]").val());
        var status = $.trim($("select[name=status] :selected").val());
        
        let tableConfig = {
            "buttons": [
                {
                    extend: "csv",
                    exportOptions: {
                        columns: [1,2,3,4,5,6,7,8]
                    }
                },
                {
                    extend:"excel",
                    exportOptions: {
                        columns: [1,2,3,4,5,6,7,8]
                    }
                },
            ],
            ajax: {
                url: ajaxUrl,
                type: "POST",
                "data": function (d) {
                    if (start_date!="") {
                        d.date_filter = start_date;                        
                    }
                    if (status!="") {
                        d.request_status = status;                        
                    }                    
                }
            },
            processing: true,
            serverSide: true,
            "columns": columns,
            columnDefs: [
                {
                    // Actions
                    targets: -1,
                    title: 'Actions',
                    orderable: false,
                    render: function (data, type, full, meta) {
                        if (Array.isArray(columnActions)) {
                            var $id = full["" + targetRow + ""];
                            var htmlCode = "";
                            for (var i = 0; i < columnActions.length; i++) {
                                var url = columnActions[i]['uof'] == "1" ? 'onclick="' + sprintf(columnActions[i]['url'], [$id]) + '"' : 'href="' + sprintf(columnActions[i]['url'], [$id]) + '"';
                                htmlCode += '<a ' + url + ' class="mr-2 mb-2 btn btn-sm btn-outline-' + columnActions[i]['class'] + '"><i class="fas ' + columnActions[i]['icon'] + '"></i></a>';
                            }
                            return (htmlCode);
                        } else {
                            return '';
                        }
                    }
                }
            ],
            order: OrderColumnIndex,
            "dom": `
            <"row align-items-center" <"col-sm-12 col-md-6 row align-items-center" l B > <"col-sm-12 col-md-6" f > >
            <"row" <"col-sm-12" t > >
            <"row" <"col-sm-12 col-md-5" i > <"col-sm-12 col-md-7" p > >
            `,
            //dom: 'lfrtip',
            language: {
                sLengthMenu: 'Show _MENU_',
                search: 'Search',
                searchPlaceholder: 'Search..'
            },
            // Buttons with Dropdown
            //"buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
        };
        if (customColumns.length > 0) {
            customColumns.forEach(function (item, index, dd) {
                tableConfig.columnDefs.push(item);
            });
        }
        if ($.fn.dataTable.isDataTable(tableName)) {
            response.destroy();
        }
        response = tableName.DataTable(tableConfig);
        var TableId = $("."+table).attr('id');
        response.buttons().container().appendTo("#"+TableId+'wrapper .col-md-6:eq(0)');
        return response;
    } else {
        console.log("Undefined tabled name");
    }
}
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
        // Inputmask("(,99){*|1}(,999){1|1}", {
        //     positionCaretOnClick: "radixFocus",
        //     _radixDance: true,
        //     radixPoint: ".",
        //     numericInput: true,
        //     placeholder: "0"
        // }).mask("#amount");

        var emergencyObj = {
            0: {title: 'No', class: 'badge-light-warning'},
            1: {title: 'Yes', class: 'badge-light-success'}
        };
        var statusObj = {
            'appointed': {title: 'New Appointment', class: 'badge-light-info'},
            'admitted': {title: 'Appointment', class: 'badge-light-success'},
            'cancelled': {title: 'New Patient', class: 'badge-light-danger'},
            'discharged': {title: 'Therapy', class: 'badge-light-danger'},
        };
        //table, columns, ajaxUrl, columnActions, targetRow, customColumns, returnTable
        $("#filter").click(function (e) {
            var start_date = $("input[name=start_date]").val();
            var status = $("input[name=status] :selected").val();
            
            setTableListView(
                'patient-table',
                [
                    {data: 'patient_id',visible:false},
                    // {data: 'patient_number'},
                    {data: 'name'},
                    {data: 'mobile_no'},
                    {
                        data: 'appointment_date',
                        render: function (data, type, full, meta) {
                        return moment(data).format('DD-MM-YYYY');
                    }
                    },
                    {
                        data: 'start_time',
                        render:function(data, type, full, meta){
                            console.log("meta",full.appointment_date)
                            var $status = data;
                            if ($status!=null && $status!="") {
                                return moment(`${full.appointment_date} ${$status}`).format("LT");                            
                            }
                            else{
                                return "-";
                            }
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
                'patient_id',[],
                false,
                [[0,'desc']]
            );
        });

        $("#reset").click(function (e) {
            window.location.reload(true);
            // $('input[name=start_date]').val("");
            // $('select[name=status]').val("");

            // setTableListView(
            //     'patient-table',
            //     [
            //         // {data: 'patient_id'},
            //         // {data: 'patient_number'},
            //         {data: 'name'},
            //         {data: 'mobile_no'},
            //         {data: 'appointment_date'},
            //         {
            //             data: 'start_time',
            //             render:function(data, type, full, meta){
            //                 var $status = data;
            //                 //console.log($status,get_timslot_option[0][$status])
            //                 return get_timslot_option[0][$status];
            //             }
            //         },
            //         {data: 'age'},
            //         {
            //             data: 'gender',
            //             render: function (data, type, full, meta) {
            //                 var $status = full['gender'];
            //                 if($status == 'm'){
            //                     return "Male";
            //                 }else if($status == 'f'){
            //                     return "Female";
            //                 }else{
            //                     return "";
            //                 }
            //             }
            //         },
                    
            //         {
            //             data: 'is_emergency',
            //             render: function (data, type, full, meta) {
            //                 var $status = full['is_emergency'];
            //                 return emergencyObj[$status].title;
            //             }
            //         },
            //         {
            //             data: 'status',
            //             render: function (data, type, full, meta) {
            //                 var $status = full['status'];
            //                 return statusObj[$status].title;
            //             }
            //         },
            //         {data: 'is_active'}
            //     ],
            //     site_url + 'patient/table',
            //     [
            //         {'url': site_url + 'patient/edit/%s', 'uof': 0, 'icon': 'fa-edit', 'class': 'primary','title':'Edit'},
            //         {'url': 'deleteRec(%s)', 'uof': 1, 'icon': 'fa-trash', 'class': 'danger'},
            //         {'url': 'upload_prescription(%s)', 'uof': 1, 'icon': 'fa-upload', 'class': 'warning'},
            //         {'url': `${site_url}patient/view/%s`, 'uof': 0, 'icon': 'fa-list', 'class': 'info'},
            //     ],
            //     'patient_id',
            //     [
            //     ],
            //     false,
            //     [[2,'desc'],[3,'desc']]
            // );
        });

        setTableListView(
            'patient-table',
            [
                {data: 'patient_id',visible:false},
                // {data: 'patient_number'},
                {data: 'name'},
                {data: 'mobile_no'},
                {
                        data: 'appointment_date',
                        render: function (data, type, full, meta) {
                            return moment(data).format('DD-MM-YYYY');
                        }
                },
                {
                    data: 'start_time',
                    render:function(data, type, full, meta){
                        console.log("meta",full.appointment_date)
                        var $status = data;
                        if ($status!=null && $status!="") {
                            return moment(`${full.appointment_date} ${$status}`).format("LT");                            
                        }
                        else{
                            return "-";
                        }
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
            [],
            false,
            [[0,'desc']]
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