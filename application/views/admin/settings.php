<?php
?>
<div class="content-wrapper">
    <section class="content-header">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="card card-primary">
                        <div class="card-header">
                            <h3 class="card-title"><?= $page_name; ?></h3>
                        </div>
                        <form id="form_validation" data-parsley-validate="true" method="POST">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-6 col-12">
                                        <?php
                                            foreach ($settings as $key => $value) {
                                                if($key > 0){
                                                   echo '</div><div class="col-md-6 col-12">'; 
                                                }
                                                foreach ($value as $row) { ?>
                                                    <div class="form-group">
                                                        <label for="title"><?= $row->label; ?></label>
                                                        <input type="text" name="<?= $row->v_key; ?>" class="form-control" id="title" value="<?= $row->v_value; ?>" placeholder="Enter <?= $row->label; ?>" maxlength="255">
                                                    </div>
                                                <?php }
                                            }
                                        ?>
                                    </div>
                                </div>
                            </div>
                            <div class="card-footer">
                                <button type="submit" class="btn btn-primary" name="submit" value="Submit">Submit</button>
                                <button type="button" onclick="history.go(-1);" class="btn btn-secondary">Cancel</button>
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
        jQuery("#form_validation").on('submit', function (e) {
            e.preventDefault();
            var form = $(this);
            form.parsley().validate();
            if (form.parsley().isValid()) {
                sendFormRequest(/*Request path*/site_url + "settings",
                        /* Form Data*/new FormData(this),
                        /* Alert Dialog, true if want to show*/false,
                        /* Toast Message, true if want to show*/false,
                        /* reload the current location,true if want*/true,
                        /* back to previous page*/false);
            }
        });
    });
</script>