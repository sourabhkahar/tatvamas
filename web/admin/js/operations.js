function uploadFile(fieldName, setFileName, directory, progressBarId, extArr, alert) {

    var drEvent = $(':input[name=' + fieldName + '].dropify').dropify();
    drEvent.on('dropify.afterClear', function (event, element) {
        document.getElementById(setFileName).value = "";
    });

    $("#" + fieldName).on('change', function (e) {
        var name = document.getElementById(fieldName).files[0].name;
        var ext = name.split('.').pop().toLowerCase();
        // if (jQuery.inArray(ext, extArr) == -1) {
        //     $(".dropify-errors-container").remove();
        //     if(alert){
        //         toastrMessage('error',"This extenation files are not allowed","Upload File");
        //     }
        // } else {
        $('button[type="submit"]').prop('disabled', true);
        var data = new FormData();
        data.append("image", document.getElementById(fieldName).files[0]);
        data.append("directory_path", directory);
        e.preventDefault();
        $.ajax({
            type: "POST",
            url: site_base_url + "upload/upload",
            data: data,
            processData: false,
            contentType: false,
            cache: false,
            timeout: 600000, success: function (data) {
                if (data.status != 0) {
                    if (data != null) {
                        document.getElementById(setFileName).value = data.file_name;
                    }
                    document.getElementById(progressBarId).innerHTML = "";
                    if (alert) {
                        toastrMessage('success', "Upload Files Completed");
                    }
                    $('button[type="submit"]').prop('disabled', false);
                    $(".dropify-errors-container").remove();
                } else {
                    document.getElementById(progressBarId).innerHTML = "";
                    if (alert) {
                        toastrMessage('error', "Upload Filed Please try again");
                    }
                    $(".dropify-errors-container").remove();
                }
            },
            beforeSend: function (data) {
                $("#" + progressBarId).html("<div class='progress'><div class='progress-bar bg-success progress-bar-striped progress-bar-animated' role='progressbar' aria-valuenow='75' aria-valuemin='0' aria-valuemax='100' style='width: 100%'></div></div>");
                $(".dropify-errors-container").remove();
            },
            error: function (e) {
                document.getElementById(progressBarId).innerHTML = "";
                $(".dropify-errors-container").remove();
            }
        });
        // }
    });
}

function sendFormRequest(requestPath, formData, alert_message, toast, reloadLocation, backToPreviousPage) {
    $.ajax({type: "POST",
        url: requestPath,
        data: formData,
        processData: false,
        contentType: false,
        cache: false,
        timeout: 600000,
        success: function (data) {
            if (alert_message) {
                alert(JSON.stringify(data));
            }
            if (data.status == 1) {
                if (reloadLocation) {
                    location.reload();
                }
                if (backToPreviousPage) {
                    history.go(-1);
                }
                /*if (toast) {
                    toastrMessage("success", data.message);
                }*/
            } else {
                if (toast) {
                    toastrMessage("error", data.message);
                }
            }
        },
        error: function (e) {
            if (toast) {
                toastrMessage("error", "Error occurred during process");
            }
        }
    });
}
function sendFormRequestRedirecToEdit(requestPath, formData, alert_message, toast, reloadLocation, backToPreviousPage) {
    $.ajax({type: "POST",
        url: requestPath,
        data: formData,
        processData: false,
        contentType: false,
        cache: false,
        timeout: 600000,
        success: function (data) {
            if (alert_message) {
                alert(JSON.stringify(data));
            }
            if (data.status == 1) {
                if (reloadLocation) {
                    location.reload();
                }
                if (backToPreviousPage!='') {
                    location.href = backToPreviousPage;
                }
                /*if (toast) {
                    toastrMessage("success", data.message);
                }*/
            } else {
                if (toast) {
                    toastrMessage("error", data.message);
                }
            }
        },
        error: function (e) {
            if (toast) {
                toastrMessage("error", "Error occurred during process");
            }
        }
    });
}

function sendGetRequest(requestPath, formData, callBack) {
    $.ajax({
        type: "POST",
        url: requestPath,
        data: formData,
        processData: false,
        contentType: false,
        cache: false,
        timeout: 600000,
        success: function (data) {
            if (callBack) {
                callBack(1, data);
            }
        },
        error: function (e) {
            if (callBack) {
                callBack(0, e);
            }
        }
    });
}

function upload(e, fieldName, directory, valueFieldName, progressFieldName) {
    var name = document.getElementById(fieldName).files[0].name;
    var ext = name.split('.').pop().toLowerCase();
    if (jQuery.inArray(ext, ['jpg', 'jpeg', 'png']) == -1) {
        $(".dropify-errors-container").remove();
    } else {
        var data = new FormData();
        data.append("image", document.getElementById(fieldName).files[0]);
        if (ext == 'jpg' || ext == 'png' || ext == 'jpeg') {
            data.append("directory_path", directory);
        }
        e.preventDefault();
        $.ajax({
            type: "POST",
            url: site_url + "/upload/upload",
            data: data,
            processData: false,
            contentType: false,
            cache: false,
            timeout: 600000, success: function (data) {
                if (data.status != 0) {
                    if (data != null) {
                        document.getElementById(valueFieldName).value = data.file_name;
                    } else {
                        document.getElementById(valueFieldName).value = '';
                    }
                    document.getElementById(progressFieldName).innerHTML = "";
                    toastrMessage('success', "Upload Completed");
                    $(".dropify-errors-container").remove();
                } else {
                    document.getElementById(valueFieldName).value = '';
                    document.getElementById(progressFieldName).innerHTML = "";
                    toastrMessage('error', "Upload Filed Please try again");
                    $(".dropify-errors-container").remove();
                }
            },
            beforeSend: function (data) {
                $("#" + progressFieldName).html("<div class='uk-progress uk-progress-striped uk-active uk-progress-small'><div class='uk-progress-bar' style='width: 100%;'></div></div>");
                $(".dropify-errors-container").remove();
            },
            error: function (e) {
                document.getElementById(progressFieldName).innerHTML = "";
                $(".dropify-errors-container").remove();
            }
        });
    }
}

function selectizeComboBox(fieldName, url, selectedItem, valueFieldName, labelFieldName, searchFieldName) {
    $(fieldName).selectize({
        valueField: valueFieldName,
        labelField: labelFieldName,
        searchField: searchFieldName,
        plugins: {
            remove_button: {
                label: ""
            }
        },
        options: [],
        delimiter: ',', persist: false,
        create: false,
        load: function (query, callback) {
            if (!query.length)
                return callback();
            $.ajax({type: "POST",
                url: url, data: {"name": query},
                processData: false,
                dataType: 'json',
                contentType: false,
                cache: false,
                timeout: 600000,
                success: function (data) {
                    try {
                        callback(data);
                    } catch (e) {
                        console.log(e);
                    }
                },
                error: function () {
                    callback();
                }
            });
        },
        onInitialize: function () {
            var selectize = this;
            $.get(url, function (data) {
                selectize.addOption(data); // This is will add to option
                var selected_items = [];
                $.each(data, function (i, obj) {
                    selected_items.push(obj.id);
                });
                selectize.setValue(selectedItem); //this will set option values as default

            });
        }
    });
}

/**
 * setTableView
 * @param {DataTable} table pass the ID of datatable @example <strong>table</strong> : $("#tableName)
 * @param {columns} table columns name of the database columns @example <strong>columns</strong> : [{data:'column_1'},{data:'column_2'}]
 * @param {ajaxUrl} ajaxUrl url of data which will load the data into datatable @example <strong>ajaxUrl</strong> : 'http://localhost:90/data.php'
 * @param {columnActions} columnActions action on records. 0-url, 1- function @example <strong>columnActions</strong> : [{'action': 'edit', 'url': your_url + '/edit/%s', 'uof': 0},{'action': 'delete', 'url': 'deletefunction(%s);', 'uof': 1}]
 * @param {targetRow} targetRow it represents the id or unique field value that will be passed on action url @example <strong>targetRow</strong> : 'column_1'
 * @param {addButtonUrl} addButtonUrl button to add new records @example <strong>addButtonUrl</strong> : 'http://localhost/add'
 * @param {customColumns} customColumns override the action datablase columns values into custom values and view     
 * @param {returnTable} returnTable if you wish to process further on current table it will return datatable object.
 * @example <strong>customColumns</strong> : [
 {
 // Actions
 targets: 3,
 title: 'Visibility',
 orderable: false,
 render: function (data, type, full, meta) {
 var $status = full['is_visible'];
 if ($status == 0) {
 return ('Inactive');
 } else {
 return ('Active');
 }
 }
 },
 ] 
 * */
function setTableView(table, columns, ajaxUrl, columnActions, targetRow, customColumns, returnTable, OrderColumnIndex=[[0,'asc']]) {
    var tableName = $("."+table);
    if (tableName.length) {
        /*response = tableName.DataTable({
            "responsive": true,
            "lengthChange": false,
            "autoWidth": false,
            "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
        }).buttons().container().appendTo('#'+tableName.attr('id')+'_wrapper .col-md-6:eq(0)');
        let tableConfig = {
            stateSave: true,
            "responsive": true,
            "lengthChange": false,
            "autoWidth": false,
            "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"],
            "ajax": ajaxUrl, // JSON file to add data
            "columns": columns,
            "columnDefs": [
                {
                    // Actions
                    targets: -1,
                    title: 'Actions',
                    orderable: false,
                    render: function (data, type, full, meta) {
                        if (Array.isArray(columnActions)) {
                            var $id = full["" + targetRow + ""];
                            var htmlCode = "";
                            for (var i = 0; i < columnActions.length; i++) {
                                var url = columnActions[i]['uof'] == "1" ? 'onclick="' + sprintf(columnActions[i]['url'], [$id]) + '"' : 'href="' + sprintf(columnActions[i]['url'], [$id]) + '"';
                                htmlCode += '<a ' + url + ' class="mr-2 mb-2 btn btn-sm btn-outline-' + columnActions[i]['class'] + '"><i class="fas ' + columnActions[i]['icon'] + '"></i></a>';
                            }
                            return (htmlCode);
                        } else {
                            return '';
                        }
                    }
                }
            ],
            "dom": 'Blfrtip',
            "order": [[0, 'asc']]
        };
        */
        let tableConfig = {
            ajax: {
                url: ajaxUrl,
                type: "POST",
                "data": function (d) {
                    d.request_status = $("#request_status").val();
                }
            },
            processing: true,
            serverSide: true,
            "columns": columns,
            columnDefs: [
                {
                    // Actions
                    targets: -1,
                    title: 'Actions',
                    orderable: false,
                    render: function (data, type, full, meta) {
                        if (Array.isArray(columnActions)) {
                            var $id = full["" + targetRow + ""];
                            var htmlCode = "";
                            for (var i = 0; i < columnActions.length; i++) {
                                var url = columnActions[i]['uof'] == "1" ? 'onclick="' + sprintf(columnActions[i]['url'], [$id]) + '"' : 'href="' + sprintf(columnActions[i]['url'], [$id]) + '"';
                                htmlCode += '<a ' + url + ' class="mr-2 mb-2 btn btn-sm btn-outline-' + columnActions[i]['class'] + '"><i class="fas ' + columnActions[i]['icon'] + '"></i></a>';
                            }
                            return (htmlCode);
                        } else {
                            return '';
                        }
                    }
                }
            ],
            order: OrderColumnIndex,
            "dom": `
            <"row" <"col-sm-12 col-md-6" l > <"col-sm-12 col-md-6" f > >
            <"row" <"col-sm-12" t > >
            <"row" <"col-sm-12 col-md-5" i > <"col-sm-12 col-md-7" p > >
            `,
            //dom: 'lfrtip',
            language: {
                sLengthMenu: 'Show _MENU_',
                search: 'Search',
                searchPlaceholder: 'Search..'
            },
            // Buttons with Dropdown
            //"buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
        };
        if (customColumns.length > 0) {
            customColumns.forEach(function (item, index, dd) {
                tableConfig.columnDefs.push(item);
            });
        }
        response = tableName.DataTable(tableConfig);
        var TableId = $("."+table).attr('id');
        response.buttons().container().appendTo("#"+TableId+'wrapper .col-md-6:eq(0)');
        return response;
    } else {
        console.log("Undefined tabled name");
    }
}
/**
 * @param  {String} template 
 * @param  {String[]} values
 * @return {String} returns merged string
 * @example sprintf('template %s',['dog']);
 * @output <strong>template dog</strong>
 */
function sprintf(template, values) {
    return template.replace(/%s/g, function () {
        return values.shift();
    });
}


function simpleFileUpload(fieldName, setFileName, directory, extArr, rename_allowed = true) {
    $("#" + fieldName).on('change', function (e) {
        var name = document.getElementById(fieldName).files[0].name;
        var ext = name.split('.').pop().toLowerCase();
        var data = new FormData();
        data.append("image", document.getElementById(fieldName).files[0]);
        data.append("directory_path", directory);
        data.append("rename_allowed", rename_allowed);
        e.preventDefault();
        $.ajax({
            type: "POST",
            url: site_url + "upload/upload",
            data: data,
            processData: false,
            contentType: false,
            cache: false,
            timeout: 600000, success: function (data) {
                if (data.status_code != 0) {
                    if (data != null) {
                        document.getElementById(setFileName).value = data.file_name;
                    }
                } else {
                }
            },
            beforeSend: function (data) {

            },
            error: function (e) {

            }
        });
    });
}