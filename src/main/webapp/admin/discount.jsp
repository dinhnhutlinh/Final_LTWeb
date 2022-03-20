<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="shortcut icon" href="images/favicon.svg" type="image/x-icon"/>
    <title>Danh sách chương trình giảm giá</title>

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
                                Page
                            </li>
                        </ol>

                    </div>
                    <!-- end col -->
                </div>
                <!-- end row -->
            </div>
            <div class="row">
                <div class="content-header">
                    <h2 class="content-title">Danh sách giảm giá </h2>
                    <div>
                        <a href="addDiscount.html" class="btn btn-orange"></i> Thêm giảm giá</a>
                    </div>
                </div>
                <div class="card mb-4">
                    <div class="card">
                        <div class="card-body">
                            <table id="tableDiscount" class="table table-hover pt-3">
                                <thead>
                                <th>#ID</th>
                                <th>Chương trình</th>
                                <th class="w-25">Nội dung</th>
                                <th>Giảm(%)</th>
                                <th>Bắt đầu</th>
                                <th>Kết thúc</th>
                                <th>Trạng Thái</th>
                                <th>Hành động</th>
                                </thead>
                                <tbody>
                                <c:forEach var="dis" items="disLiet">
                                    <tr>
                                        <td>${dis.getId()}</td>
                                        <td>${dis.getName()}</td>
                                        <td>${dis.getDesc()}</td>
                                        <td>${dis.getDiscountPercent()}</td>
                                        <td><fmt:parseDate value="${dis.getFromAt()}" pattern="yyyy-MM-dd"
                                                           var="patientDob" type="date"/>
                                            <fmt:formatDate pattern="dd/MM/yyyy" value="${patientDob}"/></td>
                                        <td>
                                            <fmt:parseDate value="${dis.getEndAt()}" pattern="yyyy-MM-dd"
                                                           var="patientDob" type="date"/>
                                            <fmt:formatDate pattern="dd/MM/yyyy" value="${patientDob}"/>
                                        </td>
                                        <td>
                                            <c:if test="${dis.getActive()==0}">
                                                <span class="badge rounded-pill alert-danger">Đã kích hoạt</span>
                                            </c:if>
                                            <c:if test="${dis.getActive()==1}">
                                                <span class="badge rounded-pill alert-success">Chưa kích hoạt</span>
                                            </c:if>
                                        </td>
                                        <td>
                                            <a href="Admin-DiscountDetail?id=${dis.getId()}"
                                               class="btn btn-warning text-white"><i class="fas fa-pen"></i>
                                            </a>
                                            <button class="btn btn-danger" onclick="deleteDis(${dis.getId()})"><i
                                                    class="fas fa-trash"></i></button>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
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
        var table = $('#tableDiscount').DataTable({
            searching: false,
            paging: false,
            language: {
                processing: "đang tải",
                search: "Tìm kiếm",
                lengthMenu: "Số dòng hiển thị _MENU_ ",
                info: "",
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
            columnDefs: [],
        });
    });

    function deleteDis(id) {

    }
</script>
</body>
</html>