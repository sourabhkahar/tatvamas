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
                                            <input type="text" name="txt_name" class="form-control" id="txt_name" value="" placeholder="Enter User Name" maxlength="255" required>
                                        </div>
                                        <div class="form-group">
                                            <label for="txt_login">Userame</label>
                                            <input type="text" name="txt_login" class="form-control text-lowercase" id="txt_login" value="" placeholder="Enter Login Name" maxlength="255" required>
                                        </div>
                                        <div class="form-group">
                                            <label for="txt_password">Password</label>
                                            <input type="text" name="txt_password" class="form-control" id="txt_password" value="" placeholder="Enter Your Password" maxlength="255" required>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-group">
                                            <label for="status">Status</label>
                                            <select class="form-control" id="status" name="status" required>
                                                <?php
                                                foreach (get_status_option() as $key => $value) {
                                                    echo "<option value='" . $key . "'>" . $value . "</option>";
                                                }?>
                                            </select>
                                        </div>
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
                sendFormRequest(/*Request path*/site_url + "users/add",
                        /* Form Data*/new FormData(this),
                        /* Alert Dialog, true if want to show*/false,
                        /* Toast Message, true if want to show*/true,
                        /* reload the current location,true if want*/false,
                        /* back to previous page*/true);
            }
        });
    });
</script>