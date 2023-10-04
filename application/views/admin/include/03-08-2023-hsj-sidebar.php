<?php ?>
<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <a href="<?= SITE_ADMIN_URL; ?>" class="brand-link">
        <img src="<?= $this->userProfile; ?>" alt="<?= SITE_NAME; ?>" class="brand-image img-circle elevation-3"
             style="opacity: .8">
        <span class="brand-text font-weight-light"><?= $this->userName; ?></span>
    </a>

    <div class="sidebar">
        <div class="form-inline mt-3">
            <div class="input-group" data-widget="sidebar-search">
                <input class="form-control form-control-sidebar" type="search" placeholder="Search"
                       aria-label="Search">
                <div class="input-group-append">
                    <button class="btn btn-sidebar">
                        <i class="fas fa-search fa-fw"></i>
                    </button>
                </div>
            </div>
        </div>

        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu"
                data-accordion="false">
                    <?php
                    foreach ($this->pages as $page) {
                        if ($page['has_sub_page'] == 1) {
                            ?>
                        <li title="<?= $page['page_name'] ?>" class="nav-item <?= ($parent_action == $page['action_name']) ? 'menu-open' : ''; ?>" >
                            <a href="<?= SITE_ADMIN_URL . $page['page_url']; ?>" class="nav-link <?= ($action == $page['action_name']) ? 'active' : ''; ?>">
                                <i class="nav-icon fas fa-<?= $page['md_icon']; ?>"></i>
                                <p>
                                    <?= $page['page_name']; ?>
                                    <i class="right fas fa-angle-left"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview">
                                <?php
                                $sub_page_array = $page['sub_page'];
                                foreach ($sub_page_array as $sub_pages) {
                                    ?>
                                    <li class="nav-item" title="<?= $sub_pages['sub_page_name'] ?>">
                                        <a href="<?= SITE_ADMIN_URL . $sub_pages['page_url']; ?>" class="nav-link <?= ($action == $sub_pages['action_name']) ? 'active' : ''; ?>">
                                            <i class="far fa-<?= $sub_pages['md_icon'] ?> nav-icon"></i>
                                            <p><?= $sub_pages['sub_page_name'] ?></p>
                                        </a>
                                    </li>
                                <?php } ?>
                            </ul>
                        </li>
                        <?php
                    } else {
                        ?>
                        <li class="nav-item" title="<?= $page['page_name'] ?>">
                            <a href="<?= SITE_ADMIN_URL . $page['page_url']; ?>" class="nav-link <?= ($action == $page['action_name']) ? 'active' : ''; ?>">
                                <i class="nav-icon fas fa-<?= $page['md_icon']; ?>"></i>
                                <p><?= $page['page_name']; ?></p>
                            </a>
                        </li>
                        <?php
                    }
                }
                ?>
            </ul>
        </nav>
    </div>
</aside>