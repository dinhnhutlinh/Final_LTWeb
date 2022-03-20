<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Blog</title>

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
                                <a href="Admin-DashBroad">Dashboard</a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">
                                Blog
                            </li>
                        </ol>

                    </div>
                    <!-- end col -->
                </div>
                <!-- end row -->
            </div>
            <div class="row">
                <div class="card">
                    <div class="card-header">
                        <div class="d-flex justify-content-between">
                            <h3>Danh sách bài viết</h3>
                            <a href="Admin-Blog?id=new" class="btn btn-orange"><i class="fas fa-plus"></i> Thêm bài blog</a>
                        </div>

                    </div>
                    <div class="card-body">
                        <table id="tableNews" class="table table-hover">
                            <thead>
                            <tr>
                                <th>ID</th>
                                <th class="w-50">Tiêu đề</th>
                                <th>Người tạo</th>
                                <th>Ngày tạo</th>
                                <th class="text-end">Hành động</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>1</td>
                                <td>Tiêu đề B</td>
                                <td>Nguyễn văn B</td>
                                <td>25/02/2021</td>
                                <td>
                                    <a href="Admin-Blog?=${blog.getId()}" class="btn btn-warning"><i
                                            class="fas fa-pen"></i></a>
                                    <button href="deleteBlog(${blog.getId()})" class="btn btn-danger"><i
                                            class="fas fa-trash"></i></button>
                                </td>
                            </tr>

                            </tbody>
                        </table>
                    </div> <!-- card body .// -->
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
        $('#tableNews').DataTable({
            language: {
                processing: "đang tải",
                search: "Tìm kiếm",
                lengthMenu: "Số dòng hiển thị _MENU_ ",
                info: "Bài viết từ _START_ đến _END_ trong _TOTAL_ bài viết",
                infoEmpty: "",
                loadingRecords: "",
                infoFiltered: "",
                zeroRecords: "Không tìm thấy",
                emptyTable: "Không có dữ liệu",
                paginate: {
                    first: "Trang đầu",
                    previous: "Trang trước",
                    next: "Trang sau",
                    last: "Trang cuối"
                },
            },
            columnDefs: [
                {"className": "text-end", "targets": 4}
            ],
        });
    });
</script>
</body>

</html>