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
    <title>Customers</title>

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
        <%--        modal--%>
        <div class="modal fade" id="modelAdmin" tabindex="-1"
             aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-scrollable modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Admin</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="mb-3">
                            <img id="avatar" src="" class="rounded-circle" style="width: 150px;"
                                 alt="Avatar"/>
                        </div>

                        <div class="mb-3">
                            <label for="id" class="form-label">Id</label>
                            <input id="id" class="form-control" disabled>
                        </div>
                        <div class="mb-3">
                            <label for="lastName" class="form-label">Last name</label>
                            <input id="lastName" type="text" class="form-control" disabled>
                        </div>
                        <div class="mb-3">
                            <label for="firstName" class="form-label">First name</label>
                            <input id="firstName" type="text" class="form-control" disabled>
                        </div>
                        <div class="mb-3">
                            <label for="mail" class="form-label">Email</label>
                            <input id="mail" type="email" class="form-control" disabled>
                        </div>
                        <div class="mb-3">
                            <label for="phone" class="form-label">Phone</label>
                            <input id="phone" class="form-control" disabled>
                        </div>
                        <div class="mb-3">
                            <label for="address" class="form-label">Address</label>
                            <input id="address" class="form-control" disabled>
                        </div>
                        <div class="mb-3">
                            <label for="active" class="form-label">Active</label>
                            <select id="active" class="form-select" aria-label="Default select example">
                                <option value="0">Inactive</option>
                                <option value="1">Active</option>
                                <option value="2">Block</option>
                            </select>
                        </div>
                        <div class="mb-3 row">
                            <div class="p-2">
                                <button id="activeBtn" class="btn btn-success">Set active</button>
                            </div>
                            <div class="p-2">
                                <button id="resetPassword" class="btn btn-success">Reset password</button>
                            </div>
                        </div>
                    </div>
                    <div id="messModel">
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">
                            Close
                        </button>
                    </div>
                </div>
            </div>
        </div>
        <%--        modal--%>
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
                                Admins
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
                                    <h3>Customer</h3>
                                </div>
                            </div>
                            <div class="card-body">
                                <table id="table" class="table table-hover nowrap" style="width: 100%">
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
<script src="admin/js/customers.js"></script>
</body>

</html>