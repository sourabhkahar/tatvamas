/**
 * SetValue
 * @param {String}  componentId ID of component
 * @param {String} valueField name of field which receive from API
 * @param {String} labelField  name of field to be displayed in select options
 * @param {String} searchField name Of search field in most cases select option values is search field
 * @param {String} dataURL URL to be called to get data
 * @param {integer|String} defaultValue to be displayed as selected in select component
 * */
function setSelectValue(componentId, valueField, labelField, searchField, dataURL, defaultValue) {
    var component_variable = $(componentId).selectize({
        valueField: valueField,
        labelField: labelField,
        searchField: searchField,
        load: function (query, callback) {
            if (!query.length)
                return callback();
            $.ajax({type: "POST",
                url: dataURL, data: {searchField: query},
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
            $.get(dataURL, {searchField: ""}, function (data) {
                selectize.addOption(data); // This is will add to option
                var selected_items = [];
                $.each(data, function (i, obj) {
                    selected_items.push(obj.id);
                });
                selectize.setValue(defaultValue); //this will set option values as default
            }, 'json');
        }
    });
    return component_variable;
}

function selectizeIntialize(componentId, valueField, labelField, searchField) {
    var $componentIds = $(componentId).selectize({
        valueField: valueField,
        labelField: labelField,
        searchField: searchField
    });
    return $componentIds;
}

function onChangeSelect(componentId, dependentObject, url, hasParameter, selectedValues = -1) {
    componentId[0].selectize.on("change", function (value) {
        if (!value.length)
            return;
        dependentObject.clear();
        dependentObject.clearOptions();
        dependentObject.load(function (callback) {
            $.ajax({
                type: "POST",
                url: url + (hasParameter ? value : ""),
                processData: false,
                dataType: 'json',
                contentType: false,
                cache: false,
                timeout: 600000,
                success: function (data) {
                    try {
                        callback(data);
                        dependentObject.setValue(selectedValues);
                    } catch (e) {
                        console.log(e);
                    }
                },
                error: function () {
                    callback();
                }
            });
        });
    });
}

function onChangeSelectTwoParam(componentId, dependentObject, url, hasParameterOne, hasParameterTwo, hasParameterTwoValue,  selectedValues = -1) {
    componentId[0].selectize.on("change", function (value) {
        if (!value.length)
            return;
        dependentObject.clear();
        dependentObject.clearOptions();
        dependentObject.load(function (callback) {
            $.ajax({
                type: "POST",
                url: url + (hasParameterOne ? value : "") + (hasParameterTwo ? hasParameterTwoValue : ""),
                processData: false,
                dataType: 'json',
                contentType: false,
                cache: false,
                timeout: 600000,
                success: function (data) {
                    try {
                        callback(data);
                        dependentObject.setValue(selectedValues);
                    } catch (e) {
                        console.log(e);
                    }
                },
                error: function () {
                    callback();
                }
            });
        });
    });
}

function loadSelectData(componentId, url) {
    componentId.clear();
    componentId.clearOptions();
    componentId.load(function (callback) {
        $.ajax({
            type: "POST",
            url: url,
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
    });
}
