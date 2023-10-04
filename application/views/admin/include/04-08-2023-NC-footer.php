                <a id="back-to-top" href="javascript:void(0);" class="btn btn-primary back-to-top" role="button" aria-label="Scroll to top"><i class="fas fa-chevron-up"></i></a>
            </div>
            <aside class="control-sidebar control-sidebar-dark"></aside>
        </div>

        <?php if ($page_type == 'list') { ?>
            <!-- DataTables  & Plugins -->
            <script src="<?= SITE_ADMIN_ASSETS; ?>plugins/datatables/jquery.dataTables.min.js"></script>
            <script src="<?= SITE_ADMIN_ASSETS; ?>plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
            <script src="<?= SITE_ADMIN_ASSETS; ?>plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
            <script src="<?= SITE_ADMIN_ASSETS; ?>plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
            <script src="<?= SITE_ADMIN_ASSETS; ?>plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
            <script src="<?= SITE_ADMIN_ASSETS; ?>plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
            <script src="<?= SITE_ADMIN_ASSETS; ?>plugins/jszip/jszip.min.js"></script>
            <script src="<?= SITE_ADMIN_ASSETS; ?>plugins/pdfmake/pdfmake.min.js"></script>
            <script src="<?= SITE_ADMIN_ASSETS; ?>plugins/pdfmake/vfs_fonts.js"></script>
            <script src="<?= SITE_ADMIN_ASSETS; ?>plugins/datatables-buttons/js/buttons.html5.min.js"></script>
            <script src="<?= SITE_ADMIN_ASSETS; ?>plugins/datatables-buttons/js/buttons.print.min.js"></script>
            <script src="<?= SITE_ADMIN_ASSETS; ?>plugins/datatables-buttons/js/buttons.colVis.min.js"></script>
            <script src="<?= SITE_ADMIN_ASSETS ?>js/jquery-confirm.min.js"></script>
            <script>
                function deleteFooterRec(deleteUrl, deleteId) {
                    $.confirm({
                        title: 'Delete',
                        content: 'Are you sure want to Delete!',
                        icon: 'fa fa-question',
                        theme: 'material',
                        closeIcon: true,
                        animation: 'scale',
                        type: 'red',
                        buttons: {
                            yes: {
                                text: 'yes',
                                btnClass: 'btn-danger',
                                action: function() {
                                    var formData = new FormData();
                                    formData.append("delete_id", deleteId);
                                    sendGetRequest(site_url + deleteUrl, formData, function(status, data) {
                                        if (status == 1) {
                                            location.reload();
                                        } else {
                                            $.dialog({
                                                title: "Delete",
                                                content: data.statusText,
                                                theme: 'material',
                                                closeIcon: true,
                                                animation: 'scale',
                                                backgroundDismiss: true,
                                                type: 'red',
                                            });
                                        }
                                    });
                                }
                            },
                            no: function() {
                                // cancel code here
                            }
                        }
                    });
                }
            </script>
        <?php } else if ($page_type == 'form') { ?>
            <!-- Summernote -->
            <script src="<?= SITE_ADMIN_ASSETS ?>plugins/summernote/summernote-bs4.min.js"></script>
            <script src="<?= SITE_ADMIN_ASSETS ?>plugins/dropify/dist/js/dropify.min.js"></script>
        <?php } else { ?>

        <?php } ?>
        <!-- Bootstrap 4 -->
        <script src="<?= SITE_ADMIN_ASSETS; ?>plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="<?= SITE_ADMIN_ASSETS; ?>plugins/moment/moment.min.js"></script>
        <script src="<?= SITE_ADMIN_ASSETS; ?>plugins/daterangepicker/daterangepicker.js"></script>
        <script src="<?= SITE_ADMIN_ASSETS; ?>plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
        <script src="<?= SITE_ADMIN_ASSETS; ?>plugins/toastr/toastr.min.js"></script>
        <script src="<?= SITE_ADMIN_ASSETS ?>plugins/parsley/dist/parsley.min.js"></script>
        <script src="<?= SITE_ADMIN_ASSETS ?>plugins/selectize/custom/component_select.js"></script>
        <script src="<?= SITE_ADMIN_ASSETS ?>plugins/selectize/js/standalone/selectize.min.js"></script>
        <script src="<?php echo SITE_ADMIN_ASSETS; ?>plugins/inputmask/min/jquery.inputmask.bundle.min.js"></script>
        <script src="<?php echo SITE_ADMIN_ASSETS; ?>plugins/bootstrap4-duallistbox/jquery.bootstrap-duallistbox.min.js"></script>
        <script src="<?php echo SITE_ADMIN_ASSETS; ?>plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js"></script>        
        <script src="<?php echo SITE_ADMIN_ASSETS; ?>plugins/bootstrap-switch/js/bootstrap-switch.min.js"></script>
        <script src="<?= SITE_ADMIN_ASSETS; ?>js/adminlte.min.js"></script>
        <script src="<?= SITE_ADMIN_ASSETS; ?>js/operations.js"></script>
        <script>
            <?php
            if ($this->session->flashdata('status') !== null) {
                if ($this->session->flashdata('status') == 1) {
                    ?>
                        toastrMessage('success', "<?php echo $this->session->flashdata('message'); ?>");
                <?php } else if ($this->session->flashdata('status') == 0) { ?>
                        toastrMessage('error', "<?php echo $this->session->flashdata('message'); ?>");
                    <?php
                }
                $this->session->set_flashdata('status', NULL);
                $this->session->set_flashdata('message', "");
            }
            ?>
            
            function toastrMessage(type, message) {
                toastr[type](message, {
                    closeButton: true,
                    tapToDismiss: false,
                    progressBar: true,
                    showMethod: 'fadeIn',
                    hideMethod: 'fadeOut',
                    timeOut: 5000,
                    rtl: 'rtl'
                });
            }
        </script>
    </body>
</html>