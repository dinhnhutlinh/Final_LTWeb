<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="shortcut icon" href="images/favicon.svg" type="image/x-icon"/>
    <title>Admin Categories</title>

    <!-- ========== All CSS files linkup ========= -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <link rel="stylesheet" href="admin/css/main.css"/>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.11.3/css/dataTables.bootstrap5.min.css">
</head>

<body>
<!-- ======== sidebar-nav start =========== -->
<jsp:include page="view/side.jsp"></jsp:include>
<div class="overlay"></div>
<!-- ======== sidebar-nav end =========== -->

<!-- ======== main-wrapper start =========== -->
<main class="main-wrapper">
    <!-- ========== header start ========== -->
    <jsp:include page="view/header.jsp"></jsp:include>

    <!-- ========== section start ========== -->
    <section class="section">
        <div class="container-fluid">
            <!-- ========== title-wrapper start ========== -->
            <div class="title-wrapper pt-3">
                <div class="d-flex align-items-center">
                    <!-- end col -->
                    <div class="breadcrumb-wrapper">

                        <ol class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="dashboard">Dashboard</a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">
                                Category
                            </li>
                        </ol>
                    </div>
                    <!-- end col -->
                </div>
                <!-- end row -->
            </div>
            <div id="mess">
            </div>
            <div class="row">
                <section class="content-main">
                    <div class="row">
                        <div class="card">
                            <div class="card-header ">
                                <div class="d-flex justify-content-between">
                                    <h3>Category</h3>
                                    <button id="addBtn" type="button" class="btn btn-orange">
                                        <i class="fas fa-plus"></i> Add
                                    </button>
                                </div>
                                <!--modal input-->
                                <div class="modal fade" id="modalCat" tabindex="-1"
                                     aria-labelledby="staticBackdropLabel"
                                     aria-hidden="true">
                                    <div class="modal-dialog modal-dialog-centered">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="catLabel">Category</h5>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                        aria-label="Close"></button>
                                            </div>
                                            <div class="modal-body">
                                                <div class="mb-3">
                                                    <label for="idCat" class="labels">ID</label>
                                                    <fieldset disabled>
                                                        <input id="idCat" type="text" class="form-control disabled"
                                                               placeholder="ID" value="">
                                                    </fieldset>
                                                </div>
                                                <div class="mb-3">
                                                    <label for="nameCat" class="labels">Name</label>
                                                    <input id="nameCat" type="text" class="form-control"
                                                           placeholder="Category" value="">
                                                </div>
                                                <div class="mb-3">
                                                    <label class="form-label" for="descCat">Description</label>
                                                    <textarea id="descCat" class="form-control" rows="6"></textarea>
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">
                                                    Cancel
                                                </button>
                                                <button id="saveBtn" type="button" class="btn btn-orange">Save
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--modal input-->
                            </div>
                            <div class="card-body">
                                <table id="tableCat" class="table table-hover nowrap" style="width: 100%">

                                </table>
                            </div> <!-- card-body end// -->
                        </div>
                    </div> <!-- card end// -->
                </section>
            </div>
        </div>
        <!-- end container -->
    </section>
    <!-- ========== section end ========== -->
</main>

<!-- ========= All Javascript files linkup ======== -->
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
<script src="admin/js/main.js"></script>
<script src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.11.3/js/dataTables.bootstrap5.min.js"></script>
<script>
    $(document).ready(function () {
        let table;
        let mess = $('#mess');

        table = $('#tableCat').DataTable({
            info: false,
            scrollX: true,
            ajax: {
                url: 'CategoryController?action=all',
                dataSrc: '',
            },

            columns: [
                {
                    title: 'ID',
                    data: 'id'
                },
                {
                    title: 'Name',
                    data: 'name'
                },
                {
                    title: 'Update Date',
                    data: 'updateAt'.toString()
                },
                {
                    title: 'Description',
                    data: 'desc'
                },
                {
                    title: 'Action',
                    render: function (data) {
                        return '<button class="btn btn-warning text-white editBtn">' +
                            '<i class="fa fa-pen" style="height: 24px;" aria-hidden="true"></i></button>' +
                            '<button class="btn btn-danger removeBtn" >' +
                            '<i class="fa fa-trash" style="height: 24px;" aria-hidden="true"></i></button>';
                    }

                },
            ],
            columnDefs: [
                {"className": "text-end", "targets": 4},
            ],
        });
        $('#modalCat').on('hidden.bs.modal', function (event) {
            $('#idCat').val('');
            $('#nameCat').val('');
            $('#descCat').val('');
        });
        $('#addBtn').on('click', function () {
            $('#modalCat').modal('show');
        });
        $('#tableCat').on('click', 'tbody .editBtn', function () {
            let data = table.row($(this).closest('tr')).data();
            $('#idCat').val(data.id);
            $('#nameCat').val(data.name);
            $('#descCat').val(data.desc);
            $('#modalCat').modal('show');
        });
        $('#tableCat').on('click', 'tbody .removeBtn', function () {
            let row = table.row($(this).closest('tr'));
            let data = row.data();
            if (confirm('Delete this category?'))
                $.ajax({
                    url: 'CategoryController?action=delete&id=' + data.id,
                    method: "DELETE",
                    success: function (data) {
                        row.remove().draw();
                        mess.html('<div class="alert alert-success" role="alert">' +
                            'Delete done! </div>'
                        );
                    },
                    error: function (error) {
                        mess.html('<div class="alert  alert-danger" role="alert">' +
                            'Delete Fail! </div>'
                        );
                    }
                });
        });
        $('#saveBtn').on('click', function () {
            let id = $('#idCat').val();
            let name = $('#nameCat').val();
            let desc = $('#descCat').val();

            $.ajax({
                url: 'CategoryController',
                method: "POST",
                data: {id: id, name: name, desc: desc},
                success: function (data) {

                    $('#modalCat').modal('hide');
                    table.ajax.reload();
                },
                error: function (error) {
                    mess.html('<div class="alert  alert-danger" role="alert">' +
                        'Delete Fail! </div>'
                    );
                }
            });
        });
    });
</script>
</body>

</html>