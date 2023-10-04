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
                                <a href="<?= SITE_ADMIN_URL; ?>treatment_type/add" class="btn btn-sm btn-primary"><i class="fa fa-plus"></i> Add</a>
                            </div>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body pad table-responsive table-sm">
                            <table class="treatment-type-list-table table table-bordered table-striped">
                                <thead>
                                    <tr>
                                        <th class="text-center">#ID</th>
                                        <th>Name</th>
                                        <th class="text-right">Amount</th>
                                        <th class="text-center">Status</th>
                                        <th class="text-center">Action</th>
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
    $(document).ready(function () {
        var statusObj = {
            0: {title: 'No', class: 'badge-light-warning'},
            1: {title: 'Yes', class: 'badge-light-success'}
        };
        //table, columns, ajaxUrl, columnActions, targetRow, customColumns, returnTable
        var listTable = setTableView(
            'treatment-type-list-table',
            [
                {data: 'treatment_type_id'},
                {data: 'name'},
                {data: 'amount'},
                {data: 'is_active'},
                {data: 'is_active'}
            ],
            site_url + 'treatment_type/table',
            [
                {'url': site_url + 'treatment_type/edit/%s', 'uof': 0, 'icon': 'fa-edit', 'class': 'primary'}
            ],
            'treatment_type_id',
            [
                {
                    // For Responsive
                    targets: 0,
                    className: 'control text-center',
                    orderable: false,
                    responsivePriority: 2,
                    render: function (data, type, full, meta) {
                        return full['treatment_type_id'];
                    }
                },
                {
                    // For Responsive
                    targets: 2,
                    className: 'text-right',
                    orderable: false,
                    responsivePriority: 2,
                    render: function (data, type, full, meta) {
                        return full['amount'];
                    }
                },
                {
                    // User Status
                    targets: 3,
                    className: 'text-center',
                    render: function (data, type, full, meta) {
                        var $status = full['is_active'];
                        return statusObj[$status].title;
                    }
                },
                {
                    // User Status
                    targets: -1,
                    className: 'text-center',
                    render: function (data, type, full, meta) {
                        return '';
                    }
                }
            ],
            false
        );
        // listTable.order([0,'desc']).draw();
    });
</script>