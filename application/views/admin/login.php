<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title><?= SITE_NAME ?> | Log in</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Google Font: Source Sans Pro -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="<?= SITE_ADMIN_ASSETS; ?>plugins/fontawesome-free/css/all.min.css">
        <!-- icheck bootstrap -->
        <link rel="stylesheet" href="<?= SITE_ADMIN_ASSETS; ?>plugins/icheck-bootstrap/icheck-bootstrap.min.css">
        <!-- Toastr -->
        <link rel="stylesheet" href="<?= SITE_ADMIN_ASSETS; ?>plugins/toastr/toastr.min.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="<?= SITE_ADMIN_ASSETS; ?>css/adminlte.min.css">
    </head>

    <body class="hold-transition login-page">
        <div class="login-box">
            <div class="card">
                <div class="card-body login-card-body">
                    <p class="login-box-msg">LOG IN</p>
                    <form id="form_login" class="auth-login-form mt-2" method="POST">
                        <div class="input-group mb-3">
                            <input type="text" id="login_username" name="login_username" class="form-control" placeholder="Email" maxlength="255" required="">
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    <span class="fas fa-envelope"></span>
                                </div>
                            </div>
                        </div>
                        <div class="input-group mb-3">
                            <input type="password" id="login_password" name="login_password" class="form-control" placeholder="Password" maxlength="255" required="">
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    <span class="fas fa-lock"></span>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-8"></div>
                            <div class="col-4">
                                <button type="submit" class="btn btn-primary btn-block">Sign In</button>
                            </div>
                        </div>
                    </form>
                </div>
                <!-- /.login-card-body -->
            </div>
        </div>
        <!-- jQuery -->
        <script src="<?= SITE_ADMIN_ASSETS; ?>plugins/jquery/jquery.min.js"></script>
        <!-- Bootstrap 4 -->
        <script src="<?= SITE_ADMIN_ASSETS; ?>plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
        <!-- Toastr -->
        <script src="<?= SITE_ADMIN_ASSETS; ?>plugins/toastr/toastr.min.js"></script>
        <!-- AdminLTE App -->
        <script src="<?= SITE_ADMIN_ASSETS; ?>js/adminlte.min.js"></script>
        <script>
            $(document).ready(function () {
                $("#form_login").on('submit', function (e) {
                    e.preventDefault();
                    var formData = new FormData(this);
                    $.ajax({
                        type: "POST",
                        url: "<?= SITE_ADMIN_URL; ?>login",
                        data: formData,
                        processData: false,
                        contentType: false,
                        cache: false,
                        timeout: 600000,
                        success: function (response) {
                            if (response.status == 1) {
                                window.location = "<?= SITE_BASE_URL ?>" + response.type;
                            } else {
                                toastrMessage('error', response.message);
                            }
                        },
                        error: function (e) {
                            console.log(e.responseText);
                            toastrMessage('error', "Error occurred during process.");
                        }
                    });
                });
            });
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
    <!-- BEGIN: Body-->
</html>