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
                                <a href="<?= SITE_ADMIN_URL; ?>users/add" class="btn btn-sm btn-info"><i class="fa fa-plus"></i> Add</a>
                            </div>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body pad table-responsive">
                            <table class="master-users-list-table table table-bordered table-striped table-sm">
                                <thead>
                                    <tr>
                                        <th></th>
                                        <th>Name</th>
                                        <th>Userame</th>
                                        <th>Password</th>
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
    $(document).ready(function () {
        var statusObj = {
            0: {title: 'No', class: 'badge-light-warning'},
            1: {title: 'Yes', class: 'badge-light-success'}
        };
        //table, columns, ajaxUrl, columnActions, targetRow, customColumns, returnTable
        var listTable = setTableView(
            'master-users-list-table',
            [
                {data: 'admin_id'},
                {data: 'name'},
                {data: 'login_name'},
                {data: 'txt_password'},
                {data: 'status'},
                {data: 'status'}
            ],
            site_url + 'users/table',
            [
                {'url': site_url + 'users/edit/%s', 'uof': 0, 'icon': 'fa-edit', 'class': 'primary'}
            ],
            'admin_id',
            [
                {
                    // For Responsive
                    targets: 0,
                    className: 'control',
                    orderable: false,
                    responsivePriority: 2,
                    render: function (data, type, full, meta) {
                        return '';
                    }
                },
                {
                    // User Status
                    targets: 4,
                    render: function (data, type, full, meta) {
                        var $status = full['status'];
                        return statusObj[$status].title;
                    }
                }
            ],
            false
        );
        // listTable.order([1,'asc']).draw();
    });
    
    function deleteRec(deleteId){
        deleteFooterRec("users/delete", deleteId);
    }
</script>