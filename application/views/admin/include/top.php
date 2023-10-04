<body class="hold-transition layout-top-nav">
    <div class="wrapper">
        <!-- Navbar -->
        <nav class="main-header navbar navbar-expand navbar-white navbar-light">
            <!-- Left navbar links -->
            <ul class="navbar-nav">
                <li class="nav-item bg-primary <?= $action == 'dashboard' ? "" : ""; ?>">
                    <a class="nav-link" data-widget="pushmenu" href="<?= SITE_ADMIN_URL; ?>" role="button">
                        <!-- <i class="fas fa-bars"></i> -->
                        Tatvamasicare
                    </a>
                </li>
                <li class="nav-item d-none d-sm-inline-block">
                    <a href="<?= SITE_ADMIN_URL; ?>" class="nav-link">Dashboard</a>
                </li>
                <!-- <li class="nav-item d-none d-sm-inline-block <?= $action == 'locations' ? "bg-primary" : ""; ?>">
                    <a href="<?= SITE_ADMIN_URL.'locations'; ?>" class="nav-link">Locations</a>
                </li>
                <li class="nav-item d-none d-sm-inline-block <?= $action == 'treatment_type' ? "bg-primary" : ""; ?>">
                    <a href="<?= SITE_ADMIN_URL.'treatment_type'; ?>" class="nav-link">Treatment Type</a>
                </li>
                <li class="nav-item d-none d-sm-inline-block <?= $action == 'patient' ? "bg-primary" : ""; ?>">
                    <a href="<?= SITE_ADMIN_URL.'patient'; ?>" class="nav-link">Patient</a> -->
                </li>
            </ul>

            <!-- Right navbar links -->
            <ul class="navbar-nav ml-auto">
                <!-- Navbar Search -->
                <li class="nav-item">
                    <a class="nav-link" href="javascript:void(0);" role="button"><?php echo $this->userName; ?></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link btn btn-sm bg-info" href="<?= SITE_ADMIN_URL . 'logout'; ?>" role="button" title="Logout">Logout</a>
                </li>
            </ul>
        </nav>
        <!-- /.navbar -->