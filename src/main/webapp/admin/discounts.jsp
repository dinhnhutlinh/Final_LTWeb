<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="shortcut icon" href="images/favicon.svg" type="image/x-icon"/>
    <title>Admin Discounts</title>

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
            <!--modal input-->
            <div class="modal fade" id="modal" tabindex="-1"
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
                                <label for="id" class="labels">ID</label>
                                <fieldset disabled>
                                    <input id="id" type="text" class="form-control disabled"
                                           placeholder="ID" value="">
                                </fieldset>
                            </div>
                            <div class="mb-3">
                                <label for="name" class="labels">Name</label>
                                <input id="name" type="text" class="form-control"
                                       placeholder="Category" value="">
                            </div>
                            <div class="mb-3">
                                <label for="discountPercent" class="labels">DiscountPercent</label>
                                <input id="discountPercent" type="number" step="0.1" class="form-control"
                                       placeholder="Category" value="0">
                            </div>
                            <div class="mb-3">
                                <label for="active" class="labels">Active</label>
                                <select id="active" class="form-select" aria-label="Default select example">
                                    <option value="0">Inactive</option>
                                    <option value="1">Active</option>
                                </select>
                            </div>
                            <div class="mb-3">
                                <label for="startAt" class="labels">Start at</label>
                                <input id="startAt" type="datetime-local" class="form-control"
                                       placeholder="Category" value="">
                            </div>
                            <div class="mb-3">
                                <label for="finishAt" class="labels">Finish at</label>
                                <input id="finishAt" type="datetime-local" class="form-control"
                                       placeholder="Category" value="">
                            </div>
                            <div class="mb-3">
                                <label class="form-label" for="desc">Description</label>
                                <textarea id="desc" class="form-control" rows="6"></textarea>
                            </div>
                        </div>
                        <div id="modelMess"></div>
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
                                Page
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
                <div class="content-header">
                    <h2 class="content-title">Discounts</h2>
                    <div>
                        <button id="addBtn" class="btn btn-orange"></i>Add</button>
                    </div>
                </div>
                <div class="card mb-4">
                    <div class="card">
                        <div class="card-body">
                            <table id="table" class="table table-hover pt-3 nowrap" style="width: 100%">
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ========== title-wrapper end ========== -->
        </div>
        <!-- end container -->
    </section>
    <!-- ========== section end ========== -->
</main>
<!-- ======== main-wrapper end =========== -->

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
        let mess = $('#mess');
        let table = $('#table').DataTable({
            info: false,
            scrollX: true,
            ajax: {
                url: 'DiscountController?action=all',
                dataSrc: '',
            },

            columns: [
                {
                    title: '#id',
                    data: 'id'
                },
                {
                    title: '#Desciptions',
                    data: 'desc'
                }, {
                    title: 'Discount',
                    data: 'discountPercent',
                    render: function (data) {
                        return data + " %";
                    }
                }, {
                    title: 'Active',
                    data: 'active',
                    render: function (data) {
                        if (data == 1)
                            return '<span class="badge rounded-pill alert-success">Active</span>';
                        else
                            return '<span class="badge rounded-pill alert-danger">InActive</span>';
                    }

                }, {
                    title: 'Start',
                    data: 'startAt'
                }, {
                    title: 'Finish',
                    data: 'finishAt'
                },
                {
                    title: 'Action',
                    render: function (data) {
                        return '<button class="btn btn-warning text-white editBtn">' +
                            '<i class="fa fa-pen" style="height: 24px;" aria-hidden="true"></i></button>' +
                            '<button class="btn btn-danger removeBtn" >' +
                            '<i class="fa fa-trash" style="height: 24px;" aria-hidden="true"></i></button>';
                    }
                }
            ],
        });
        $('#modal').on('hidden.bs.modal', function (event) {
            $('#id').val('');
            $('#name').val('');
            $('#discountPercent').val('');
            $('#desc').val('');
            $('#active').val('')
            $('#startAt').val('');
            $('#finishAt').val('');
        });
        $('#addBtn').on('click', function () {
            $('#modal').modal('show');
        });
        $('#table').on('click', 'tbody .editBtn', function () {
            let data = table.row($(this).closest('tr')).data();
            console.log(data);
            $('#id').val(data.id);
            $('#name').val(data.name);
            $('#discountPercent').val(data.discountPercent);
            $('#desc').val(data.desc);
            $('#active').val(data.active);
            $('#startAt').val(data.startAt);
            $('#finishAt').val(data.finishAt);
            $('#modal').modal('show');

        });
        $('#table').on('click', 'tbody .removeBtn', function () {
            let row = table.row($(this).closest('tr'));
            let data = row.data();
            if (confirm('Delete this category?'))
                $.ajax({
                    url: 'DiscountController?id=' + data.id,
                    method: "DELETE",
                    success: function (data) {
                        row.remove().draw();
                        mess.html('<div class="alert alert-success" role="alert">' +
                            'Delete done! </div>');
                    },
                    error: function (error) {
                        mess.html('<div class="alert  alert-danger" role="alert">' +
                            'Delete Fail! </div>'
                        );
                    }
                });
        });
        $('#saveBtn').on('click', function () {
            let id = $('#id').val();
            let name = $('#name').val();
            let desc = $('#desc').val();
            let discountPercent = $('#discountPercent').val();
            let active = $('#active').val();
            let startAt = $('#startAt').val();
            let finishAt = $('#finishAt').val();
            $.ajax({
                url: 'DiscountController',
                method: "POST",
                data: {
                    id: id,
                    name: name,
                    discountPercent: discountPercent,
                    desc: desc,
                    active: active,
                    startAt: startAt,
                    finishAt: finishAt,
                },
                success: function (data) {
                    $('#modal').modal('hide');
                    mess.html('<div class="alert  alert-success" role="alert">' +
                        'Success !!!</div>'
                    );
                    table.ajax.reload();
                },
                error: function (error) {
                    mess.html('<div class="alert  alert-danger" role="alert">' +
                        'Add or edit Fail !!!</div>'
                    );
                }
            });
        });
    });

    function deleteDis(id) {

    }
</script>
</body>
</html>