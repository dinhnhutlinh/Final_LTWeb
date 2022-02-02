<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Danh sách khách hàng</title>

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
                                Khách hàng
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
                            <h3>Danh sách khách hàng</h3>
                        </div>
                        <div class="card-body">
                            <table id="tableUser" class="table table-hover">
                                <thead>
                                <th style="width: 5%;">#ID</th>
                                <th style="width: 70px;">Ảnh</th>
                                <th>Khách hàng</th>
                                <th>Email</th>
                                <th>Số điện thoại</th>
                                <th>Trạng thái</th>
                                <th class="text-end">Hành động</th>
                                </thead>
                                <tbody>
                                <c:forEach var="cus" items="${listCustomer}">
                                    <tr>
                                        <td>${cus.getId()}</td>
                                        <td>
                                            <img src="images/Sample_User_Icon.png"
                                                 style="height: 70px; width: 70px;">
                                        </td>
                                        <td>
                                            <h6 class="ps-2">${cus.getLastName()} ${cus.getFirstName()}</h6>
                                        </td>
                                        <td>${cus.getEmail()}</td>
                                        <td>${cus.getPhone()}</td>

                                        <td>
                                            <c:if test="${cus.getActive()==0}">
                                                <span class="badge rounded-pill alert-warning">Chưa kích hoạt</span>
                                            </c:if>
                                            <c:if test="${cus.getActive()==1}">
                                                <span class="badge rounded-pill alert-success">Đã kích hoạt</span>
                                            </c:if>
                                        </td>
                                        <td>
                                            <a href="Admin-Customer?id=${cus.getId()}" class="btn btn-warning text-white"><i
                                                    class="fas fa-pen"></i></a>
                                            <button class="btn btn-danger" onclick="deleteUser(${cus.getId()})"><i
                                                    class="fas fa-trash"></i></button>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div> <!-- card-body end// -->
                    </div>
                </section>
            </div>
        </div> <!-- card end// -->
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
        var table = $('#tableUser').DataTable({
            language: {
                processing: "đang tải",
                search: "Tìm kiếm",
                lengthMenu: "Số dòng hiển thị _MENU_ ",
                info: "Bài viết từ _START_ đến _END_ trong _TOTAL_ Khách hàng",
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
                {"className": "text-center", "targets": 5},
                {"className": "text-end", "targets": 6},
            ],
        });


    });

    function deleteUser(id) {
        if (confirm("Delete account id: " + id) == true) {
            alert('Done')
        }
    }
</script>
</body>

</html>
