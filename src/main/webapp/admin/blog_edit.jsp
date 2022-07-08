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
            <!--title-wrapper start -->
            <div class="title-wrapper pt-3">
                <div class="d-flex align-items-center">
                    <!-- end col -->
                    <div class="breadcrumb-wrapper">

                        <ol class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="Admin-Dashboard">Dashboard</a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">
                                Edit Blog
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
                    <h2 class="content-title">Edit Blogs</h2>
                    <div>
                        <button id="saveBtn" class="btn btn-orange"></i>Save</button>
                    </div>
                </div>
                <div class="card mb-4">
                    <div class="card-body">
                        <div class="mb-3">
                            <label for="id" class="labels">ID</label>
                            <fieldset disabled>
                                <input id="id" type="text" class="form-control disabled"
                                       placeholder="ID" value="${blog.getId()}">
                            </fieldset>
                        </div>
                        <div class="mb-3">
                            <label for="title" class="labels">Title</label>
                            <input id="title" type="text" class="form-control"
                                   placeholder="Title" value="${blog.getTitle()}">
                        </div>
                        <div class="mb-3">
                            <label class="form-label" for="file-input">Upload Image</label>
                            <div class="file-loading">
                                <input id="file-input" name="file-input[]" type="file" class="file">
                            </div>
                        </div>

                        <div class="custom-file-container" data-upload-id="myUploader"></div>
                        <div class="mb-3">
                            <label for="title" class="form-label">Nội dung</label>
                            <div id="editor"></div>
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
<script>
    $("#file-input").fileinput({
        initialPreview: [
            'upload/blogs/${blog.getImage()}'
        ],
        initialPreviewAsData: true,
        initialPreviewFileType: 'image',
    }).on('filesorted', function (e, params) {
        console.log('File sorted params', params);
    }).on('fileuploaded', function (e, params) {
        console.log('File uploaded params', params);
    });
</script>
<script>
    let toolbarOptions = [
        ['bold', 'italic', 'underline', 'strike'],        // toggled buttons
        ['blockquote', 'code-block'],

        [{'header': 1}, {'header': 2}],               // custom button values
        [{'list': 'ordered'}, {'list': 'bullet'}],
        [{'script': 'sub'}, {'script': 'super'}],      // superscript/subscript
        [{'indent': '-1'}, {'indent': '+1'}],          // outdent/indent
        [{'direction': 'rtl'}],                         // text direction

        [{'size': ['small', false, 'large', 'huge']}],  // custom dropdown
        [{'header': [1, 2, 3, 4, 5, 6, false]}],
        ['link', 'image'],          // add's image support
        [{'color': []}, {'background': []}],          // dropdown with defaults from theme
        [{'font': []}],
        [{'align': []}],

        ['clean']                                         // remove formatting button
    ];

    let quill = new Quill('#editor', {
        modules: {
            toolbar: toolbarOptions
        },
        ImageResize: {
            modules: ['Resize', 'DisplaySize', 'Toolbar']
        },
        theme: 'snow'
    });
    quill.root.innerHTML = "${blog.getContent()}";
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
            $.ajax({
                url: 'BlogController',
                method: "POST",
                processData: false,
                contentType: false,
                data: formData,
                success: function (data) {
                    $('#modal').modal('hide');
                    mess.html('<div class="alert  alert-success" role="alert">' +
                        'Success !!!</div>'
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