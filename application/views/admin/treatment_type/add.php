<div class="content-wrapper">
    <section class="content-header">
        <div class="container-fluid">
            <form id="form_validation" data-parsley-validate="true" method="POST">
                <div class="row">
                    <div class="col-12">
                        <div class="card card-primary">
                            <div class="card-header">
                                <h3 class="card-title"><?= $page_name; ?></h3>
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-6 col-12">
                                        <div class="form-group">
                                            <label for="name">Name</label>
                                            <input type="text" class="form-control" id="name" name="name" value="" placeholder="Enter Name" maxlength="255" required>
                                        </div>
                                    </div>
                                    <div class="col-md-2 col-12">
                                        <div class="form-group">
                                            <label for="amount">Amount</label>
                                            <input type="number" class="form-control" id="amount" name="amount" value="" placeholder="Enter Amount" min="0" step="0.01" required>
                                        </div>
                                    </div>
                                    <div class="col-md-2 col-12">
                                        <div class="form-group">
                                            <label for="status">Status</label>
                                            <select class="form-control" id="status" name="is_active" required>
                                                <?php
                                                foreach (get_status_option() as $key => $value) {
                                                    echo "<option value='" . $key . "'>" . $value . "</option>";
                                                }
                                                ?>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-2 col-12 pt-2">
                                        <button type="submit" class="btn btn-primary mt-4" name="submit" value="Submit">Submit</button>
                                        <button type="button" onclick="history.go(-1);" class="btn btn-secondary mt-4">Cancel</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
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
                sendFormRequest(/*Request path*/site_url + "treatment_type/add",
                        /* Form Data*/new FormData(this),
                        /* Alert Dialog, true if want to show*/false,
                        /* Toast Message, true if want to show*/true,
                        /* reload the current location,true if want*/false,
                        /* back to previous page*/true);
            }
        });
    });
</script>