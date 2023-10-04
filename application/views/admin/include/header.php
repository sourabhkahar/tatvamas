<?php ?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title><?php echo SITE_NAME; ?></title>
        
        <!-- Google Font: Source Sans Pro -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="<?= SITE_ADMIN_ASSETS; ?>plugins/fontawesome-free/css/all.min.css">
        
        <?php //if ($page_type == 'list') { ?>
            <!-- DataTables -->
            <link rel="stylesheet" href="<?= SITE_ADMIN_ASSETS; ?>plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
            <link rel="stylesheet" href="<?= SITE_ADMIN_ASSETS; ?>plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
            <link rel="stylesheet" href="<?= SITE_ADMIN_ASSETS; ?>plugins/datatables-buttons/css/buttons.bootstrap4.min.css">
            <link rel="stylesheet" href="<?= SITE_ADMIN_ASSETS ?>css/jquery-confirm.min.css">
        <?php //} else if ($page_type == 'form') { ?>
            <!-- summernote -->
            <link rel="stylesheet" href="<?= SITE_ADMIN_ASSETS; ?>plugins/summernote/summernote-bs4.min.css">
            <link rel="stylesheet" href="<?= SITE_ADMIN_ASSETS ?>plugins/dropify/dist/css/dropify.min.css">
        <?php //} else { ?>
            
        <?php //} ?>
        <!-- Tempusdominus Bootstrap 4 -->
        <link rel="stylesheet" href="<?= SITE_ADMIN_ASSETS; ?>plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
        <!-- Daterange picker -->
        <link rel="stylesheet" href="<?= SITE_ADMIN_ASSETS; ?>plugins/daterangepicker/daterangepicker.css">
        <link rel="stylesheet" href="<?php echo SITE_ADMIN_ASSETS; ?>plugins/icheck-bootstrap/icheck-bootstrap.min.css">
        <link rel="stylesheet" href="<?php echo SITE_ADMIN_ASSETS; ?>plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css">
        <link rel="stylesheet" href="<?php echo SITE_ADMIN_ASSETS; ?>plugins/select2/css/select2.min.css">
        <link rel="stylesheet" href="<?php echo SITE_ADMIN_ASSETS; ?>plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css">
        <link rel="stylesheet" href="<?php echo SITE_ADMIN_ASSETS; ?>plugins/bootstrap4-duallistbox/bootstrap-duallistbox.min.css">
  
        <!-- Toastr -->
        <link rel="stylesheet" href="<?= SITE_ADMIN_ASSETS; ?>plugins/toastr/toastr.min.css">
        <link rel="stylesheet" href="<?= SITE_ADMIN_ASSETS ?>plugins/selectize/css/selectize.css">
        <link rel="stylesheet" href="<?= SITE_ADMIN_ASSETS ?>plugins/parsley/src/parsley.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="<?= SITE_ADMIN_ASSETS; ?>css/adminlte.min.css">
        
        <!-- jQuery -->
        <script src="<?= SITE_ADMIN_ASSETS; ?>plugins/jquery/jquery.min.js"></script>
        <!-- jQuery UI 1.11.4 -->
        <script src="<?= SITE_ADMIN_ASSETS; ?>plugins/jquery-ui/jquery-ui.min.js"></script>
        <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
        <script>
            $.widget.bridge('uibutton', $.ui.button)
        </script>
        <script>
            var site_base_url = "<?= SITE_BASE_URL; ?>";
            var site_url = "<?= SITE_ADMIN_URL; ?>";
            var site_name = "<?= SITE_NAME; ?>";
            var roleId = "<?= $this->userRole; ?>";
            var imageAllowTypes = ['jpg', 'jpeg', 'png', 'webp'];
        </script>
        <style>
            .dropify-wrapper .dropify-message span.file-icon{font-size: 30px;}
            .dt-buttons{margin-bottom: 10px;}
        </style>
    </head>
