<div class="content-wrapper">
    <section class="content-header">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-6 col-12">
                    <div class="card card-primary">
                        <div class="card-header">
                            <h3 class="card-title"><?= $page_name; ?></h3>
                        </div>
                        <form id="form_validation" data-parsley-validate="true" method="POST">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-12">
                                        <div class="form-group">
                                            <label for="txt_name">Name</label>
                                            <input type="text" name="txt_name" class="form-control" id="txt_name" value="<?= $user_data->name;?>" placeholder="Enter User Name" maxlength="255" required>
                                        </div>
                                        <div class="form-group">
                                            <label for="txt_login">Userame</label>
                                            <input type="text" name="txt_login" class="form-control text-lowercase" id="txt_login" value="<?= $user_data->login_name;?>" placeholder="Enter Login Name" maxlength="255" required>
                                        </div>
                                        <div class="form-group">
                                            <label for="txt_password">Password</label>
                                            <input type="text" name="txt_password" class="form-control" id="txt_password" value="<?= $user_password;?>" placeholder="Enter Your Password" maxlength="255" required>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card-footer">
                                <input type="hidden" id="user_salt"  name="user_salt" value="<?= $user_data->user_salt; ?>" />
                                <input type="hidden" id="user_unique_key" name="user_unique_key"  value="<?= $user_data->unique_key; ?>" />
                                <input type="hidden" id="user_iv" name="user_iv"  value="<?= $user_data->user_iv; ?>" />
                                <input type="hidden" id="user_id" name="user_id" value="<?= $user_data->admin_id; ?>" />
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
                sendFormRequest(/*Request path*/site_url + "profile",
                        /* Form Data*/new FormData(this),
                        /* Alert Dialog, true if want to show*/false,
                        /* Toast Message, true if want to show*/true,
                        /* reload the current location,true if want*/true,
                        /* back to previous page*/false);
            }
        });
    });
</script>