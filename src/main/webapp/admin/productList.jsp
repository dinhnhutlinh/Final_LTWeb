<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="shortcut icon" href="images/favicon.svg" type="image/x-icon"/>
    <title>Danh sách sản phẩm</title>

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
                                <a href="#0">Dashboard</a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">
                                Sản phẩm
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
                        <div class="card">
                            <div class="card-header">
                                <div class="d-flex justify-content-between">
                                    <h3 class="content-title">Danh sách sản phẩm </h3>
                                    <div>
                                        <a href="Admin-Product" class="btn btn-orange"></i> Thêm sản phẩm</a>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body">
                                <table id="productTable" class="table table-hover pt-3">
                                    <thead>
                                    <th>#ID</th>
                                    <th>Ảnh</th>
                                    <th class="w-25">Sản phẩm</th>
                                    <th>Giá</th>
                                    <th>SL</th>
                                    <th>Nhà cung cấp</th>
                                    <th>Khuyến mãi</th>
                                    <th class="text-end">Hành động</th>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="prod" items="${products}">
                                        <tr>
                                            <td>${prod.getId()}</td>
                                            <td><img src="${prod.getImgDisplay()}" class="img-sm"
                                                     alt=""></td>
                                            <td>
                                                <a href="Admin-Product?id=${prod.getId()}">${prod.getName()}</a></h6>
                                            </td>
                                            <td>${prod.getPrice()}</td>
                                            <td>${prod.getInventory()}</td>
                                            <td>${prod.getProducer().getName()}</td>
                                            <td>${prod.getDiscount().getName()}</td>
                                            <td>
                                                <a href="Admin-ProductDetail?id=${prod.getId()}&type=edit"
                                                   class="btn btn-warning text-white"><i
                                                        class="fas fa-pen"></i></a>
                                                <button class="btn btn-danger"><i class="fas fa-trash"></i></button>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div> <!-- card-body end// -->
                </section>
            </div>
        </div> <!-- card end// -->
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
        var table = $('#productTable').DataTable({
            language: {
                processing: "đang tải",
                search: "Tìm kiếm",
                lengthMenu: "Số dòng hiển thị _MENU_ ",
                info: "Từ _START_ đến _END_ trong _TOTAL_ Đơn hàng",
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
                {"className": "text-center", "targets": 6},
                {"className": "text-end", "targets": 7},
            ],
        });

    });
</script>
</body>

</html>
