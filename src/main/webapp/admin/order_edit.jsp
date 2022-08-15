<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="blConfig" scope="application" class="com.nhom10.broadstore.beans.Order"/>
<jsp:useBean id="o" scope="application" class="com.nhom10.broadstore.beans.OrderItem"/>
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
        <div class="container-fluid">
            <!-- ========== title-wrapper start ========== -->
            <div class="title-wrapper pt-3">
                <div class="d-flex align-items-center">
                    <!-- end col -->
                    <div class="breadcrumb-wrapper">

                        <ol class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="/dashboard">Dashboard</a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">
                                Order
                            </li>
                        </ol>

                    </div>
                    <!-- end col -->
                </div>
                <!-- end row -->
            </div>
            <div class="row">
                <div class="card">
                    <header class="card-header bg-white">
                        <div class="row align-items-center">
                            <div class="col-6 ">
                            </div>
                            <div class="col-6 text-end">
                                <button class="btn btn-orange">Save</button>
                            </div>
                        </div>
                    </header> <!-- card-header end// -->
                    <div class="card-body">
                        <div class="row mb-5">
                            <div class="col-5">
                                <div class="row pb-3">
                                    <div class="col-6 fw-bold">#Id</div>
                                    <div class="col-6"><input type="text" id="id" class="form-control"
                                                              value="${order.getId()}" disabled></div>
                                </div>
                                <div class="row pb-3">
                                    <div class="col-6 fw-bold">Customer</div>
                                    <div class="col-6"><input type="text" id="name" class="form-control"
                                                              value="${order.getName()}"></div>
                                </div>
                                <div class="row pb-3">
                                    <div class="col-6 fw-bold">Price</div>
                                    <div class="col-6">${order.getTotal()}$</div>
                                </div>
                                <div class="row pb-3">
                                    <div class="col-6 fw-bold">Ship</div>
                                    <div class="col-6">${order.getShipPrice()} $</div>
                                </div>
                                <div class="row pb-3">
                                    <div class="col-6 fw-bold">Total</div>
                                    <div class="col-6">${order.getShipPrice()+order.getTotal()} $</div>
                                </div>
                                <div class="row pb-3">
                                    <div class="col-6 fw-bold">Status</div>
                                    <div class="col-6"><select class="form-select">
                                        <option value="0"
                                                <c:if test="${order.status==0}">selected</c:if>>Transmision
                                        </option>
                                        <option value="1"
                                                <c:if test="${order.status==1}">selected</c:if>>Cancel
                                        </option>
                                        <option value="2"
                                                <c:if test="${order.status==2}">selected</c:if>>Success
                                        </option>
                                    </select></div>
                                </div>
                            </div>
                            <div class="col-2"></div>
                            <div class="col-5 ">
                                <div class="row pb-3">
                                    <div class="col-6 fw-bold">Phone</div>
                                    <div class="col-6"><input type="phone" id="phone" class="form-control"
                                                              value="${order.phone}"></div>
                                </div>
                                <div class="row pb-3">
                                    <div class="col-6 fw-bold">Address</div>
                                    <div class="col-6"><input type="text" id="address" class="form-control"
                                                              value="${order.address}"></div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12">
                                <div class="table-responsive">
                                    <table id="productTable" class="table table-hover">
                                        <thead>
                                        <th width="10%">#ID</th>
                                        <th width="10%">Image</th>
                                        <th width="50%">Product</th>
                                        <th width="10%">Quantity</th>
                                        <th width="20%">Price</th>
                                        </thead>
                                        <tbody>
                                        <c:forEach var="item" items="${order.orderItems}">
                                            <tr>
                                                <td>1</td>
                                                <td><img src="${item.product.imgDisplay}" width="70px"
                                                         height="70px"
                                                         alt=""></td>
                                                <td>${item.product.name}</td>
                                                <td>${item.quantity}</td>
                                                <td>${item.price}$</td>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>
                                </div> <!-- table-responsive// -->
                            </div> <!-- col// -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
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
<!-- Include the Quill library -->
<script src="https://cdn.quilljs.com/1.3.6/quill.js"></script>
<!-- the main fileinput plugin script JS file -->
<script src="https://cdn.jsdelivr.net/gh/kartik-v/bootstrap-fileinput@5.5.0/js/plugins/buffer.min.js"
        type="text/javascript"></script>
<script src="https://cdn.jsdelivr.net/gh/kartik-v/bootstrap-fileinput@5.5.0/js/fileinput.min.js"></script>
<script src="https://cdn.jsdelivr.net/gh/kartik-v/bootstrap-fileinput@5.5.0/js/plugins/sortable.min.js"
        type="text/javascript"></script>
<script src="admin/js/quill.js"></script>
<script>
    quill.root.innerHTML = "${blog.getContent()}";
</script>
<script>
    $("#file-input").fileinput({
        initialPreview: [
            <c:if test="${blog.getImage()!=null}"> '${blog.getImage()}'</c:if>
        ],
        showUpload: false,
        initialPreviewAsData: true,
        initialPreviewFileType: 'image',
    }).on('filesorted', function (e, params) {
        console.log('File sorted params', params);
    }).on('fileuploaded', function (e, params) {
        console.log('File uploaded params', params);
    });
</script>
<script>

    $(document).ready(function () {
        let mess = $('#mess');
        $('#saveBtn').on('click', function () {
            let formData = new FormData();
            formData.append('id', $('#id').val());
            formData.append('title', $('#title').val());
            formData.append('image', $('#file-input').prop('files')[0]);
            formData.append('content', quill.root.innerHTML);
            for (const value of formData.values()) {
                console.log(value);
            }
            $.ajax({
                url: 'BlogController',
                method: "POST",
                processData: false,
                contentType: false,
                data: formData,
                success: function (data) {
                    $('#modal').modal('hide');
                    let resp = JSON.parse(data);
                    $('#id').val(resp.data.id);
                    mess.html('<div class="alert  alert-success" role="alert">' + resp.mess +
                        '</div>'
                    );

                },
                error: function (error) {
                    mess.html('<div class="alert  alert-danger" role="alert">' +
                        'Add or edit Fail !!!</div>'
                    );
                }
            });
        });
    });
</script>
</body>
</html>