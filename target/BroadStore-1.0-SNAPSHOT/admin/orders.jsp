<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.time.format.DateTimeFormatter" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="shortcut icon" href="images/favicon.svg" type="image/x-icon"/>
    <title>Danh sách đơn hàng</title>

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
                                Đơn hàng
                            </li>
                        </ol>
                    </div>
                    <!-- end col -->
                </div>
                <!-- end row -->
            </div>
            <div class="row">
                <section class="content-main">
                    <div class="card mb-4">
                        <div class="card-header">
                            <h3 class="content-title">Danh sách đơn Hàng</h3>
                        </div>
                        <div class="card-body">
                            <table id="orderTable" class="table table-hover pt3">
                                <thead>
                                <tr class="pt-3">
                                    <th>#ID</th>
                                    <th scope="col">Tên khách hàng</th>
                                    <th scope="col">Số điện thoại</th>
                                    <th scope="col">Tổng tiền</th>
                                    <th scope="col">Trạng thái</th>
                                    <th scope="col">Ngày đặt</th>
                                    <th scope="col" class="text-end"> Hành động</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${orders}" var="order">
                                    <tr>
                                        <td>${order.getId()}</td>
                                        <td><b>${order.getName()}</b></td>
                                        <td>${order.getPhone()}</td>
                                        <td>${order.getTotal()}</td>
                                        <c:if test="${order.getStatus().getId()==1}">
                                            <td>
                                                <span class="badge rounded-pill alert-primary">Đang xử lý</span>
                                            </td>
                                        </c:if>
                                        <c:if test="${order.getStatus().getId()==2}">
                                            <td>
                                                <span class="badge rounded-pill alert-warning">Đang vận chuyển</span>
                                            </td>
                                        </c:if>
                                        <c:if test="${order.getStatus().getId()==3}">
                                            <td>
                                                <span class="badge rounded-pill alert-success">Đã Nhận</span>
                                            </td>
                                        </c:if>
                                        <c:if test="${order.getStatus().getId()==4}">
                                            <td>
                                                <span class="badge rounded-pill alert-danger">Đã Hủy</span>
                                            </td>
                                        </c:if>
                                        <td>${order.getCreateAt().format(DateTimeFormatter.ISO_OFFSET_DATE)}</td>
                                        <td class="text-end">
                                            <a href="OrderDetail?id=${order.getId()}" class="btn btn-warning text-white"><i
                                                    class="fas fa-pen"></i></a>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div> <!-- card-body end// -->
                    </div> <!-- card end// -->
                </section>
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
<script src="js/main.js"></script>
<script src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.11.3/js/dataTables.bootstrap5.min.js"></script>
<script>
    $(document).ready(function () {
        var table = $('#orderTable').DataTable({
            language: {
                processing: "đang tải",
                search: "Tìm kiếm",
                lengthMenu: "Số dòng hiển thị _MENU_ ",
                info: "Bài viết từ _START_ đến _END_ trong _TOTAL_ Đơn hàng",
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
                {"className": "text-center", "targets": 4},

            ],
        });
    });
</script>
</body>

</html>
