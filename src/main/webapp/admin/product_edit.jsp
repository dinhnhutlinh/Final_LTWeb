<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="shortcut icon" href="images/favicon.svg" type="image/x-icon"/>
    <title>Product Edit</title>

    <!-- ========== All CSS files linkup ========= -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <link rel="stylesheet" href="admin/css/main.css"/>
    <link rel="stylesheet" href="admin/css/uploadFile.css">
    <link href="https://cdn.quilljs.com/1.3.6/quill.snow.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css"
          href="https://unpkg.com/file-upload-with-preview/dist/file-upload-with-preview.min.css">
    <link href="https://cdn.jsdelivr.net/gh/kartik-v/bootstrap-fileinput@5.5.0/css/fileinput.min.css" media="all"
          rel="stylesheet" type="text/css"/>
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
                                <a href="dashboard">Dashboard</a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">
                                Product
                            </li>
                        </ol>
                    </div>
                    <!-- end col -->
                </div>
                <!-- end row -->
            </div>
            <div id="mess">
            </div>
            <section class="content-main">
                <div class="content-header">

                    <div class="d-flex justify-content-between">
                        <h2 class="content-title">Edit Product</h2>
                        <div>
                            <button class="btn btn-orange ms-3 btnSave">Save</button>
                        </div>
                    </div>
                </div>
                <div class="row mb-4">

                    <div class="card">
                        <div class="card-body">
                            <div class="form-group mb-3">
                                <label for="id">#ID</label>
                                <input type="text" class="form-control" id="id"
                                       placeholder="id" value="${product.id}" disabled>
                            </div>
                            <div class="form-group mb-3">
                                <label for="name">Name</label>
                                <input type="text" class="form-control" id="name"
                                       placeholder="name" value="${product.name}">
                            </div>
                            <div class="row">
                                <div class="col-6">
                                    <div class="form-group mb-3">
                                        <label for="price">Price</label>
                                        <input type="number" step="0.1" class="form-control" id="price"
                                               placeholder="price" value="${product.price}">
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="form-group mb-3">
                                        <label for="minAge">Min Age</label>
                                        <input type="number" step="1" class="form-control" id="minAge"
                                               placeholder="minAge" value="${product.minAge}">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-6">
                                    <div class="form-group mb-3">
                                        <label for="minPlayer">Min Player</label>
                                        <input type="number" step="1" class="form-control" id="minPlayer"
                                               placeholder="minPlayer" value="${product.minPlayer}">
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="form-group mb-3">
                                        <label for="maxPlayer">Max Player</label>
                                        <input type="number" step="1" class="form-control" id="maxPlayer"
                                               placeholder="maxPlayer" value="${product.maxPlayer}">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-6">
                                    <div class="form-group mb-3">
                                        <label for="minPlaytime">Min Playtime</label>
                                        <input type="number" step="1" class="form-control" id="minPlaytime"
                                               placeholder="minPlaytime" value="${product.minPlaytime}">
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="form-group mb-3">
                                        <label for="maxPlaytime">Max Playtime</label>
                                        <input type="number" step="1" class="form-control" id="maxPlaytime"
                                               placeholder="maxPlaytime" value="${product.maxPlaytime}">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group mb-3">
                                <label for="imgDisplay">Image Display</label>

                                <div class="file-loading">
                                    <input id="imgDisplay" name="file-input[]" type="file" class="file">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-6">
                                    <div class="form-group mb-3">
                                        <label for="weightAmount">Weight Amount</label>
                                        <input type="number" step="0.1" class="form-control" id="weightAmount"
                                               placeholder="weightAmount" value="${product.weightAmount}">
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="form-group mb-3">
                                        <label for="weightUnits">Weight Units</label>
                                        <input type="text" class="form-control" id="weightUnits"
                                               placeholder="weightUnits" value="${product.weightUnits}">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-4">
                                    <div class="form-group mb-3">
                                        <label for="sizeHeight">Size Height</label>
                                        <input type="number" step="0.1" class="form-control" id="sizeHeight"
                                               placeholder="sizeHeight" value="${product.sizeHeight}">
                                    </div>
                                </div>
                                <div class="col-4">
                                    <div class="form-group mb-3">
                                        <label for="sizeDepth">Size Depth</label>
                                        <input type="number" step="0.1" class="form-control" id="sizeDepth"
                                               placeholder="sizeDepth" value="${product.sizeDepth}">
                                    </div>
                                </div>
                                <div class="col-4">
                                    <div class="form-group mb-3">
                                        <label for="sizeUnits">Size Units</label>
                                        <input type="text" class="form-control" id="sizeUnits"
                                               placeholder="sizeUnits" value="${product.sizeUnits}">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-6">
                                    <div class="form-group mb-3">
                                        <label for="active">Status</label>
                                        <select id="active" class="form-select" aria-label="Select status">
                                            <option value="0"
                                                    <c:if test="${product.active==0}">selected</c:if>>Inactive
                                            </option>
                                            <option value="1"
                                                    <c:if test="${product.active==0}">selected</c:if>>Active
                                            </option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="form-group mb-3">
                                        <label for="inventory">inventory</label>
                                        <input type="number" step="1" class="form-control" id="inventory"
                                               placeholder="inventory" value="${product.inventory}">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-4">
                                    <div class="form-group mb-3">
                                        <label for="producerId">Producer</label>
                                        <select id="producerId" class="form-select" aria-label="Select status">
                                            <c:forEach var="producer" items="${producers}">
                                                <option value="${producer.getId()}"
                                                        <c:if test="${product.getProducerId()==producer.getId()}">selected</c:if>>${producer.getName()}
                                                </option>
                                            </c:forEach>

                                        </select>
                                    </div>
                                </div>
                                <div class="col-4">
                                    <div class="form-group mb-3">
                                        <label for="categoryId">Category</label>
                                        <select id="categoryId" class="form-select" aria-label="Select status">
                                            <c:forEach var="category" items="${categories}">
                                                <option value="${category.getId()}"
                                                        <c:if test="${product.getCategoryId()==category.getId()}">selected</c:if>>
                                                        ${category.getName()}
                                                </option>
                                            </c:forEach>

                                        </select>
                                    </div>
                                </div>
                                <div class="col-4">
                                    <div class="form-group mb-3">
                                        <label for="discountId">discountId</label>
                                        <select id="discountId" class="form-select" aria-label="Select status">
                                            <c:forEach var="discount" items="${discounts}">
                                                <option value="${discount.getId()}"
                                                        <c:if test="${product.getDiscountId()==discount.getId()}">selected</c:if>>
                                                        ${discount.getName()}
                                                </option>
                                            </c:forEach>

                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-6">
                                    <div class="form-group mb-3">
                                        <label for="createAt">Create At</label>
                                        <input type="text" class="form-control" id="createAt"
                                               placeholder="createAt" value="${product.createAt}" disabled>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="form-group mb-3">
                                        <label for="updateAt">Update At</label>
                                        <input type="text" class="form-control" id="updateAt"
                                               placeholder="updateAt" value="${product.updateAt}" disabled>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card mt-3">
                        <div class="card-body">
                            <div class="form-group mb-3">
                                <label for="imageProducts">Image Display</label>
                                <div class="file-loading">
                                    <input id="imageProducts" name="file-input[]" type="file" class="file" multiple >
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card mt-3">
                        <div class="card-body">
                            <label for="editor" class="form-label">Desc
                            </label>
                            <div id="editor"></div>
                        </div>
                    </div>

                </div> <!-- row end// -->
            </section>
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
<!-- Include the Quill library -->
<script src="https://cdn.quilljs.com/1.3.6/quill.js"></script>
<!-- the main fileinput plugin script JS file -->
<script src="https://cdn.jsdelivr.net/gh/kartik-v/bootstrap-fileinput@5.5.0/js/plugins/buffer.min.js"
        type="text/javascript"></script>
<script src="https://cdn.jsdelivr.net/gh/kartik-v/bootstrap-fileinput@5.5.0/js/fileinput.min.js"></script>
<script src="https://cdn.jsdelivr.net/gh/kartik-v/bootstrap-fileinput@5.5.0/js/plugins/sortable.min.js"
        type="text/javascript"></script>
<script src="admin/js/quill.js"></script>
<script src="admin/js/product_edit.js"></script>
<script>
    $("#imgDisplay").fileinput({
        initialPreview: [
            <c:if test="${product.getImgDisplay()!=null}"> '${product.getImgDisplay()}'</c:if>
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

    $("#productImages").fileinput({
        initialPreview: [
            <c:if test="${imageProducts!=null}">
                <c:forEach var="imageProduct" items="${imageProducts}">
                    "${imageProduct.getLink()}",
                </c:forEach>
            </c:if>
        ],
        maxFileCount: 10,
        allowedFileTypes: ["image"],
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
        quill.root.innerHTML = "${product.getDesc()}";
    });
</script>
</body>

</html>
