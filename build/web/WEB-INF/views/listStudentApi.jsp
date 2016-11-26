<%-- 
    Document   : listStudentApi
    Created on : Nov 26, 2016, 2:56:30 PM
    Author     : hany
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- The jQuery library is a prerequisite for all jqSuite products -->
        <script type="text/javascript" src="resources/js/jquery.min.js"></script>
        <!-- We support more than 40 localizations -->
        <script  type="text/javascript" src="resources/js/trirand/i18n/grid.locale-en.js"></script>
        <!-- This is the Javascript file of jqGrid -->
        <script type="text/javascript" src="resources/js/trirand/jquery.jqGrid.min.js"></script>
        <!-- A link to a Boostrap  and jqGrid Bootstrap CSS siles-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" media="screen" href="resources/css/trirand/ui.jqgrid-bootstrap.css"/>
        <script>
            $.jgrid.defaults.width = 780;
            $.jgrid.defaults.responsive = true;
            $.jgrid.defaults.styleUI = 'Bootstrap';
        </script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="resources/js/context-menu.js"></script>
        <link rel="stylesheet" type="text/css" media="screen" href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.11.4/themes/redmond/jquery-ui.css"/>
        <meta charset="utf-8"/>
        <title>jqGrid Loading Data - Edit Dialogs with Custom Layout</title>
    </head>
    <body>
        <div style="margin-left:20px">
            <table id="jqGrid"></table>
            <div id="jqGridPager"></div>
        </div>
        <script type="text/javascript">

            $(function ()
            {
                var grid = $("#jqGrid");
                /* buildSearchSelect = function (uniqueNames) {
                 var values = ":All";
                 //  console.log("after " + uniqueNames);
                 $.each(uniqueNames, function () {
                 values += ";" + this + ":" + this;
                 // console.log("this" + this);
                 });
                 
                 
                 return values;
                 },
                 getUniqueNames = function (columnName) {
                 var texts = [];
                 $.ajax({
                 url: "http://zend.test.com/user/fnames",
                 
                 dataType: 'json',
                 async: false,
                 success: function (result) {
                 //console.log(result);
                 $.each(result, function () {
                 // console.log(this.fname);
                 texts.push(this.fname);
                 });
                 // console.log(texts)
                 }
                 });
                 //  console.log("length "+texts.length);
                 var uniqueTexts = [],
                 textsLength = texts.length, text, textsMap = {}, i;
                 for (i = 0; i < textsLength; i++) {
                 text = texts[i];
                 if (text !== undefined && textsMap[text] === undefined) {
                 // to test whether the texts is unique we place it in the map.
                 textsMap[text] = true;
                 uniqueTexts.push(text);
                 }
                 // console.log("un text" + uniqueTexts);
                 
                 }
                 return uniqueTexts;
                 },
                 setSearchSelect = function (columnName) {
                 grid.jqGrid('setColProp', columnName,
                 {
                 stype: 'select',
                 searchoptions: {
                 value: buildSearchSelect(getUniqueNames(columnName)),
                 sopt: ['eq']
                 }
                 }
                 );
                 };
                 */
                $("#jqGrid").jqGrid({
                    url: 'http://localhost:8080/system/rest/clients',

                   // datatype: "json",
                            ajaxGridOptions: { contentType: 'application/json; charset=utf-8' },
                    datatype: "json",
                    mtype: "POST",
                    toolbar: ["true", "top"],
                    page: 1,
                    colNames: ["ID", "First Name", "Last Name", "Address", "Country", "Email", "User Name", "Gender"],
                    colModel: [
                        {
                            label: 'ID',
                            name: 'id',
                            width: 75
                        },

                        {
                            label: ' First Name',
                            name: 'firstName',
                            width: 160,
                            editable: true, // must set editable to true if you want to make the field editable
                            // set options related to the layout of the Edit and Add Forms
                            formoptions: {
                                colpos: 1, // the position of the column
                                rowpos: 1, // the position of the row
                                label: "First Name: " // the label to show for each input control
                                        //elmsuffix: " * " // the suffix to show after that
                            },
                            search: true
                        },
                        {
                            label: 'Last Name',
                            name: 'lastName',
                            width: 160,
                            editable: true, // must set editable to true if you want to make the field editable
                            // set options related to the layout of the Edit and Add Forms
                            formoptions: {
                                colpos: 1, // the position of the column
                                rowpos: 1, // the position of the row
                                label: "Last Name: " // the label to show for each input control
                                        //elmsuffix: " * " // the suffix to show after that
                            }
                        },
                        {
                            label: 'Address',
                            name: 'address',
                            width: 160,
                            editable: true, // must set editable to true if you want to make the field editable
                            // set options related to the layout of the Edit and Add Forms
                            formoptions: {
                                colpos: 1, // the position of the column
                                rowpos: 1, // the position of the row
                                label: " Address :" // the label to show for each input control
                                        //elmsuffix: " * " // the suffix to show after that
                            }
                        },
                        {
                            label: 'Country',
                            name: 'country',
                            width: 160,
                            editable: true, // must set editable to true if you want to make the field editable
                            // set options related to the layout of the Edit and Add Forms
                            formoptions: {
                                colpos: 1, // the position of the column
                                rowpos: 1, // the position of the row
                                label: "Country: " // the label to show for each input control
                                        //elmsuffix: " * " // the suffix to show after that
                            }
                        },
                        {
                            label: 'Email',
                            name: 'email',
                            width: 200,
                            editable: true, // must set editable to true if you want to make the field editable
                            // set options related to the layout of the Edit and Add Forms
                            formoptions: {
                                colpos: 1, // the position of the column
                                rowpos: 1, // the position of the row
                                label: "Email: " // the label to show for each input control
                                        //elmsuffix: " * " // the suffix to show after that
                            }
                        },
                        {
                            label: ' User Name',
                            name: 'userName',
                            width: 100,
                            editable: true, // must set editable to true if you want to make the field editable
                            // set options related to the layout of the Edit and Add Forms
                            formoptions: {
                                colpos: 1, // the position of the column
                                rowpos: 1, // the position of the row
                                label: "user Name :" // the label to show for each input control
                                        //elmsuffix: " * " // the suffix to show after that
                            }
                        },
                        {
                            label: ' Gender',
                            name: 'gender',
                            width: 120,
                            editable: true, // must set editable to true if you want to make the field editable
                            // set options related to the layout of the Edit and Add Forms
                            formoptions: {
                                colpos: 1, // the position of the column
                                rowpos: 1, // the position of the row
                                label: "Gender: " // the label to show for each input control
                                        //elmsuffix: " * " // the suffix to show after that
                            }
                        }
                    ],
                    loadonce: true,
                    width: 1500,
                    height: 200,
                    rowNum: 10,
                    rowList: [3, 5, 10],
                    sortname: 'id',
                    sortorder: 'asc',
                    gridview: true,
                    autoencode: true,
                    viewrecords: true,
                    emptyrecords: "No Record in Database .....",
                    pager: "#jqGridPager",
                    onRightClickRow: function (rowid, iRow, iCol, e) {
                        var q = $(e.target).parent('tr').find(':first-child')[0].innerHTML
                        var userID = parseInt(q)
                        $("#jqGrid").contextMenu('myMenu1', {
                            bindings: {
                                'edit': function (t) {
                                    console.log(userID);
                                    // console.log(t.id);
                                    $("#jqGrid").jqGrid("editGridRow", userID, {
                                        url: "http://localhost:8080/system/rest/clients/"+userID,
                                        mtype: "GET",
                                        closeAfterEdit: true,
                                        reloadAfterSubmit: true
                                    });

                                },
                                'del': function (t) {
                                    console.log(userID);
                                    console.log(iRow);
                                    $("#jqGrid").jqGrid("delGridRow", userID, {
                                        url: "http://localhost:8080/system/rest/clients/" + userID,
                                        datatype: "json",
                                        type: "DELETE",
                                        closeAfterEdit: true,
                                        reloadAfterSubmit: true
                                    });

                                }
                            }
                        });
                    },
                    editurl: 'http://localhost:8080/system/rest/clients'

                });
                //       setSearchSelect('fname');
                // console.log($("#jqGrid").getCol('getCol', "national",false));

                grid.jqGrid('filterToolbar',
                        {stringResult: true, searchOnEnter: true, defaultSearch: "cn"});

                $('#jqGrid').navGrid('#jqGridPager',
                        // the buttons to appear on the toolbar of the grid
                                {
                                    edit: true,
                                    add: true,
                                    del: true,
                                    search: true,
                                    refresh: true,
                                    view: true,
                                    refreshstate: "firstpage",
                                    position: "left",
                                    cloneToTop: false
                                },
                                // options for the Edit Dialog
                                        {
                                            height: 'auto',
                                            width: 620,
                                            editCaption: "The Edit Dialog",
                                            recreateForm: true,
                                            closeAfterEdit: true,
                                            extraparam: "edit",
                                            onclickSubmit: function (params, postdata) {
                                                var id = $("[id=" + postdata['jqGrid_id'] + "]").find(':first-child')[0].innerHTML;
                                                var UserId = parseInt(id);

                                                $.ajax({
                                                    url: "http://localhost:8080/system/rest/clients/" + UserId,
                                                    datatype: "json",

                                                    type: "DELETE",
                                                    dataType: 'json',
                                                    success: function (result) {
                                                        console.log(result);
                                                    }
                                                });

                                            },
                                            errorTextFormat: function (data) {
                                                return 'Error: ' + data.responseText
                                            }
                                        },
                                        // options for the Add Dialog
                                                {
                                                    height: 'auto',
                                                    width: 620,
                                                    closeAfterAdd: true,
                                                    recreateForm: true,
                                                    extraparam: "add",
                                                    errorTextFormat: function (data) {
                                                        return 'Error: ' + data.responseText
                                                    }
                                                },
                                                // options for the Delete Dailog
                                                        {

                                                            onclickSubmit: function (params, postdata) {
                                                                //console.log($("[id="+postdata+"]").find(':first-child')[0].innerHTML);
                                                                var id = $("[id=" + postdata + "]").find(':first-child')[0].innerHTML;
                                                                var UserId = parseInt(id);
                                                                $.ajax({
                                                                    url: "http://localhost:8080/system/rest/clients/" + UserId,
                                                                    type: "DELETE",
                                                                    dataType: 'json',
                                                                    success: function (result) {
                                                                    }
                                                                });

                                                            },
                                                            errorTextFormat: function (data) {
                                                                return 'Error: ' + data.responseText
                                                            }
                                                        },
                                                        {
                                                            caption: "Search...",
                                                            Find: "Find",
                                                            Reset: "Reset",
                                                            closeAfterSearch: true,
                                                            groupOps: [{op: "AND", text: "all"}, {op: "OR", text: "any"}],
                                                            matchText: " match",
                                                            rulesText: " rules"
                                                        }
                                                );


                                            });


        </script>
        <div class="contextMenu" id="myMenu1" style="display:none">
            <ul style="width: 200px">
                <li id="add">
                    <span class="ui-icon ui-icon-plus" style="float:left"></span>
                    <span style="font-size:100%; font-family:Verdana">Add Row</span>
                </li>
                <li id="edit">
                    <span class="ui-icon ui-icon-pencil" style="float:left"></span>
                    <span style="font-size:100%; font-family:Verdana">Edit Row</span>
                </li>
                <li id="del">
                    <span class="ui-icon ui-icon-trash" style="float:left"></span>
                    <span style="font-size:100%; font-family:Verdana">Delete Row</span>
                </li>
            </ul>
        </div>

    </body>
</html>
