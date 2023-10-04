<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title><?= SITE_NAME; ?> | 404 Page not found</title>
        <!-- Google Font: Source Sans Pro -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
        <link rel="stylesheet" href="<?= SITE_ADMIN_ASSETS; ?>plugins/fontawesome-free/css/all.min.css">
        <link rel="stylesheet" href="<?= SITE_ADMIN_ASSETS; ?>dist/css/adminlte.min.css">
    </head>
    <body class="text-center">
        <section class="content">
            <div class="error-page">
                <h2 class="headline text-warning"> 404</h2>
                <div class="error-content">
                    <h3><i class="fas fa-exclamation-triangle text-warning"></i> Oops! Page not found.</h3>
                    <p>
                        We could not find the page you were looking for.
                        Meanwhile, you may <a href="<?= SITE_BASE_URL; ?>">return to dashboard</a> or try using the search form.
                    </p>
                </div>
            </div>
        </section>
    </div>
    <script src="<?= SITE_ADMIN_ASSETS; ?>plugins/jquery/jquery.min.js"></script>
    <script src="<?= SITE_ADMIN_ASSETS; ?>plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="<?= SITE_ADMIN_ASSETS; ?>dist/js/adminlte.min.js"></script>
</body>
</html>
