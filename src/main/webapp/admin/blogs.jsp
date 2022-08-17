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
    <title>Admin Blogs</title>

    <!-- ========== All CSS files linkup ========= -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <link rel="stylesheet" href="admin/css/main.css"/>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.11.3/css/dataTables.bootstrap5.min.css">
    <link href="https://cdn.quilljs.com/1.3.6/quill.snow.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css"
          href="https://unpkg.com/file-upload-with-preview/dist/file-upload-with-preview.min.css">
    <link href="https://cdn.jsdelivr.net/gh/kartik-v/bootstrap-fileinput@5.5.0/css/fileinput.min.css" media="all"
          rel="stylesheet" type="text/css"/>
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
   System.out.println(id);
        System.out.println(name);
        System.out.println(phone);
        System.out.println(address);
        <div class="container-fluid">
            <!--title-wrapper start -->
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
                    <h2 class="content-title">Blogs</h2>
                    <div>
                        <a href="blog_edit" id="addBtn" class="btn btn-orange"></i>Add</a>
                    </div>
                </div>
                <div class="card mb-4">
                    <div class="card-body">
                        <table id="table" class="table table-hover pt-3 nowrap" style="width: 100%">
                        </table>
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
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.min.css"
      crossorigin="anonymous">
<script src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.11.3/js/dataTables.bootstrap5.min.js"></script>
<!-- Include the Quill library -->
<script src="https://cdn.quilljs.com/1.3.6/quill.js"></script>
<!-- the main fileinput plugin script JS file -->
<script src="https://cdn.jsdelivr.net/gh/kartik-v/bootstrap-fileinput@5.5.0/js/fileinput.min.js"></script>

<script>

    $(document).ready(function () {
        let mess = $('#mess');
        $("#input-id").fileinput();
        let table = $('#table').DataTable({
            info: false,
            scrollX: true,
            ajax: {
                url: 'BlogController?action=all',
                dataSrc: '',
            },
            columns: [
                {
                    title: '#id',
                    data: 'id'
                },
                {
                    title: 'Title',
                    data: 'title'
                },
                {
                    title: 'Image',
                    data: 'image',
                    render: function (data) {
                        return '<img src="' + data +
                            '" height="100 px">';
                    }
                },
                {
                    title: 'Action',
                    data: 'id',
                    render: function (data) {
                        return '<a href="blog_edit?id=' + data + '" class="btn btn-warning text-white editBtn">' +
                            '<i class="fa fa-pen" style="height: 24px;" aria-hidden="true"></i></a>' +
                            '<button class="btn btn-danger removeBtn" >' +
                            '<i class="fa fa-trash" style="height: 24px;" aria-hidden="true"></i></button>';
                    }
                }
            ],
        });
        $('#table').on('click', 'tbody .removeBtn', function () {
            let row = table.row($(this).closest('tr'));
            let data = row.data();
            if (confirm('Delete this blog?'))
                $.ajax({
                    url: 'BlogController?id=' + data.id,
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

    });
</script>
</body>
</html>