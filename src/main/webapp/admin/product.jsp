<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="shortcut icon" href="images/favicon.svg" type="image/x-icon"/>
    <title>Sản phẩm</title>

    <!-- ========== All CSS files linkup ========= -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <link rel="stylesheet" href="admin/css/main.css"/>
    <link rel="stylesheet" href="admin/css/uploadFile.css">
</head>

<body>
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
                                Sản phẩm
                            </li>
                        </ol>
                    </div>
                    <!-- end col -->
                </div>
                <!-- end row -->
            </div>
            <section class="content-main">
                <div class="content-header">
                    <h2 class="content-title">${title}</h2>
                    <div class="d-flex">
                        <div>
                            <a href="Admin-Products" class="btn btn-danger">Hủy</a>
                        </div>
                        <div>
                            <a href="SaveProduct" class="btn btn-orange ms-3">Xong</a>
                        </div>
                    </div>
                </div>
                <div class="row mb-4">
                    <div class="col-xl-8 col-lg-8">
                        <div class="card mb-4">
                            <div class="card-body">
                                <div class="mb-4">
                                    <label for="product_title" class="form-label">Tên sản phẩm</label>
                                    <input type="text" placeholder="Nhập tên" class="form-control"
                                           id="product_title" name="name" value="${product.getName()}">
                                </div>

                                <div class="row gx-3 mb-4">
                                    <label class="labels">Kích thước</label>
                                    <div class="row">
                                        <div class="col-4">
                                            <input type="number" step="0.1" class="form-control"
                                                   placeholder="Chiều dài" aria-label="height"
                                                   name="height" value="${product.getHeight()}">
                                        </div>
                                        <div class="col-4">
                                            <input type="number" step="0.1" class="form-control"
                                                   placeholder="Chiều rộng" aria-label="width"
                                                   name="width" value="${product.getWidth()}">
                                        </div>
                                        <div class="col-4">
                                            <input type="number" step="0.1" class="form-control"
                                                   placeholder="Chiều cao" aria-label="tall"
                                                   name="tall" value="${product.getTall()}">
                                        </div>
                                    </div>
                                </div>
                                <div class="row gx-3 mb-4">
                                    <div class="col-md-4">
                                        <label class="labels">Khối lượng</label>
                                        <input type="number" step="0.1" class="form-control" placeholder="Khối lượng"
                                               aria-label="height" name="weight" value="${product.getWeight()}">
                                    </div>
                                </div>
                                <div class="row gx-3 mb-4">
                                    <div class="col-6">
                                        <label class="labels">Số lượng người chơi</label>
                                        <div class="row">
                                            <div class="col-6">
                                                <input type="number" class="form-control" placeholder="Tối thiểu"
                                                       aria-label="height" name="minPlayer"
                                                       value="${product.getMinPlayer()}">
                                            </div>
                                            <div class="col-6">
                                                <input type="number" class="form-control" placeholder="Tối đa"
                                                       aria-label="height" name="maxPlayer"
                                                       value="${product.getMaxPlayer()}">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <label class="labels">Độ tuổi tối thiểu</label>
                                        <input type="number" class="form-control" placeholder="Tối thiểu"
                                               aria-label="height" name="age" value="${product.getAge()}">
                                    </div>
                                </div>
                            </div>
                        </div> <!-- card end// -->
                        <div class="card mb-4">
                            <div class="card-body">
                                <div>
                                    <label class="form-label">Mô tả sản phẩm</label>
                                    <textarea placeholder="Type here" rows="10" class="form-control" name="desc">
                                        ${product.getDesc()}
                                    </textarea>
                                </div>
                            </div>
                        </div> <!-- card end// -->
                        <div class="card mb-4">
                            <div class="card-body">
                                <div class="form-group">
                                    <label class="form-label" for="imageDisplay">Chọn ảnh hiện thị</label>
                                    <input type="file" name="imageDisplay" id="imageDisplay" class="form-control"
                                           required>
                                </div>
                                <div class="form-group">
                                    <div id="image_preview" style="width:100%;">
                                    </div>
                                </div>
                            </div>
                        </div> <!-- card end// -->

                        <div class="card mb-4">
                            <div class="card-body">
                                <div class="form-group">
                                    <label class="form-label" for="imageDisplay">Chọn ảnh hiện thị</label>
                                    <input type="file" name="images" id="images" class="form-control" multiple
                                           required>
                                </div>
                                <div class="form-group">
                                    <div id="image_previews" style="width:100%;">
                                    </div>
                                </div>
                            </div>
                        </div> <!-- card end// -->
                    </div> <!-- col end// -->
                    <div class="col-xl-4 col-lg-4">
                        <div class="card mb-4">
                            <div class="card-body">
                                <div class="mb-4">
                                    <label class="form-label">Giá</label>
                                    <input type="text" placeholder="Nhập ở đây" class="form-control"
                                           name="price" value="${product.getPrice()}">
                                </div>
                                <div class="mb-4">
                                    <label class="form-label">Số lượng</label>
                                    <input type="number" placeholder="Nhập ở đây" class="form-control"
                                           name="inventory" value="${product.getInventory()}">
                                </div>
                                <div class="mb-4">
                                    <label class="form-label">Danh mục</label>
                                    <select class="form-select">
                                        <option
                                                <c:if test="${cat.getId()==null}">selected</c:if>
                                                disabled>Chọn Danh Mục
                                        </option>
                                        <c:forEach var="cat" items="${listCat}">
                                            <option value="${cat.getId()}"
                                                    <c:if test="${cat.getId()==product.getCategory().getId()}">selected</c:if>>
                                                    ${cat.getName()}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                                <div class="mb-4">
                                    <label class="form-label">Nhà cung cấp</label>
                                    <select class="form-select">
                                        <option
                                                <c:if test="${prod.getId()==null}">selected</c:if>
                                                disabled>Chọn Nhà Cung Cấp
                                        </option>
                                        <c:forEach var="prod" items="${listProd}">
                                            <option value="${prod.getId()}"
                                                    <c:if test="${prod.getId()==product.getProducer().getId()}">selected</c:if>>
                                                    ${prod.getName()}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                                <div class="mb-4">
                                    <label class="form-label">Khuyến mãi</label>
                                    <select class="form-select " name="discount">
                                        <option
                                                <c:if test="${dis.getId()==null}">selected</c:if>>
                                            disabled>Chọn Giảm giá
                                        </option>
                                        <c:forEach var="dis" items="${listDis}">
                                            <option value="${dis.getId()}"
                                                    <c:if test="${dis.getId()==product.getDiscount().getId()}"> selected</c:if>>
                                                    ${dis.getName()}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>
                        </div> <!-- card end// -->
                    </div> <!-- col end// -->
                </div> <!-- row end// -->
            </section>
        </div>
        <!-- end container -->
    </section>
    <!-- ========== section end ========== -->
</main>
<!-- ======== main-wrapper end =========== -->

<!-- ========= All Javascript files linkup ======== -->\
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
<script src="admin/js/main.js"></script>
<script>
    $(document).ready(function () {
        var imgDisplay = [];
        var imgArr = [];

        $("#imageDisplay").change(function () {
            if (imgDisplay.length > 0) imgDisplay = [];
            $('#image_preview').html("");
            var total_file = document.getElementById("imageDisplay").files;
            if (!total_file.length) return;
            for (var i = 0; i < total_file.length; i++) {
                if (total_file[i].size > 1048576) {
                    return false;
                } else {
                    imgDisplay.push(total_file[i]);
                    $('#image_preview').append("<div class='img-div' id='img-div" + i + "'><img src='"
                        + URL.createObjectURL(event.target.files[i]) + "' class='img-responsive image img-thumbnail'" +
                        " title='" + total_file[i].name + "'><div class='middle'><button id='action-icon' value='img-div"
                        + i + "' class='btn btn-danger' role='" + total_file[i].name + "'><i class='fa fa-trash'></i>" +
                        "</button></div></div>");
                }
            }
        });
        $("#images").change(function () {
            $('#images').html("");
            var total_file = document.getElementById("images").files;
            if (!total_file.length) return;
            for (var i = 0; i < total_file.length; i++) {
                if (total_file[i].size > 1048576) {
                    return false;
                } else {
                    imgArr.push(total_file[i]);
                    $('#image_previews').append("<div class='img-div' id='img-div" + i + "'><img src='" +
                        URL.createObjectURL(event.target.files[i]) + "' class='img-responsive image img-thumbnail' title='"
                        + total_file[i].name + "'><div class='middle'><button id='action-icon' value='img-div" + i +
                        "' class='btn btn-danger' role='" + total_file[i].name + "'><i class='fa fa-trash'></i></button>" +
                        "</div></div>");
                }
            }
        });
        $('body').on('click', '#action-icon', function (evt) {
            var divName = this.value;
            var fileName = $(this).attr('role');
            $('#' + divName).remove();
            if ($('#' + divName).parent().parent().attr('id') === 'imageDisplay') {
                imgDisplay = [];
                $('#imageDisplay').files = imgDisplay;
                $('#imageDisplay').val('');
            } else {
                for (var i = 0; i < imgArr.length; i++) {
                    if (imgArr[i].name === fileName) {
                        imgArr.splice(i, 1);
                    }
                }
                $('#images').files = FileListItem(imgArr);
            }
        });

        function FileListItem(file) {
            file = [].slice.call(Array.isArray(file) ? file : arguments)
            for (var c, b = c = file.length, d = !0; b-- && d;) d = file[b] instanceof File
            if (!d) throw new TypeError("expected argument to FileList is File or array of File objects")
            for (b = (new ClipboardEvent("")).clipboardData || new DataTransfer; c--;) b.items.add(file[c])
            return b.files
        }
    });
</script>
</body>

</html>
