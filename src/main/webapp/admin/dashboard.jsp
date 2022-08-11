<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Dashboard</title>

    <!-- ========== All CSS files linkup ========= -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <link rel="stylesheet" href="admin/css/main.css"/>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.11.3/css/dataTables.bootstrap5.min.css">
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
            <div class="title-wrapper pt-3">
                <div class="d-flex align-items-center">
                    <!-- end col -->
                    <div class="breadcrumb-wrapper">

                        <ol class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="dashboard">Dashboard</a>
                            </li>
                        </ol>
                    </div>
                    <!-- end col -->
                </div>
                <!-- end row -->
            </div>
            <div class="row mt-3 mb-3">
                <div class="col-3">
                    <div class="card border-left-primary shadow h-100 py-2 rounded-3">
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div class="col mr-2">
                                    <h5 class=" font-weight-bold text-primary text-uppercase mb-1">
                                        Lược xem trong ngày</h5>
                                    <div class="h5 mb-0 font-weight-bold text-gray-800">40000 lượt xem</div>
                                </div>
                                <div class="col-auto">
                                    <i class="fas fa-street-view text-primary" style="font-size: 36px;"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-3">
                    <div class="card border-left-success shadow h-100 py-2 rounded-3">
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div class="col mr-2">
                                    <h5 class=" font-weight-bold text-success text-uppercase mb-1">
                                        Đơn hàng mới</h5>
                                    <div class="h5 mb-0 font-weight-bold text-gray-800">50 đơn hàng</div>
                                </div>
                                <div class="col-auto">
                                    <i class="fas fa-cart-plus text-success" style="font-size: 36px;"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-3">
                    <div class="card border-left-info shadow h-100 py-2 rounded-3">
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div class="col mr-2">
                                    <h5 class="font-weight-bold text-info text-uppercase mb-1">
                                        Số lượng khách hàng</h5>
                                    <div class="h5 mb-0 font-weight-bold text-gray-800">4000</div>
                                </div>
                                <div class="col-auto">
                                    <i class="fas fa-users text-info" style="font-size: 36px;"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-3">
                    <div class="card border-left-warning shadow h-100 py-2 rounded-3">
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div class="col mr-2">
                                    <h5 class="ont-weight-bold text-warning text-uppercase mb-1">
                                        Blog</h5>
                                    <div class="h5 mb-0 font-weight-bold text-gray-800">20 bài</div>
                                </div>
                                <div class="col-auto">
                                    <i class="far fa-newspaper text-warning" style="font-size: 36px;"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-6">
                    <div class="card">
                        <div class="card-header">
                            <h3>Khách hàng mới</h3>
                        </div>
                        <div class="card-body">
                            <table id="newUser" class="table table-hover">
                                <thead>
                                <tr>
                                    <th>#ID</th>
                                    <th>Tên khách hàng</th>
                                    <th>Email</th>
                                    <th class="text-end">Hành động</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>21</td>
                                    <td>Nguyễn Văn A</td>
                                    <td>Alasao@gmail.com</td>
                                    <td class="text-end">
                                        <div class="dropdown">
                                            <a href="#" data-bs-toggle="dropdown" class="btn btn-light">
                                                <i class="fas fa-ellipsis-h"></i> </a>
                                            <div class="dropdown-menu" style="margin: 0px;">

                                                <a class="dropdown-item" href="#">Chỉnh sửa thông tin</a>
                                                <a class="dropdown-item text-danger" href="#">Xóa</a>
                                            </div>
                                        </div>
                                        <!-- dropdown //end -->
                                    </td>
                                </tr>
                                <tr>
                                    <td>22</td>
                                    <td>Nguyễn Văn B</td>
                                    <td>Blasao@gmail.com</td>
                                    <td class="text-end">
                                        <div class="dropdown">
                                            <a href="#" data-bs-toggle="dropdown" class="btn btn-light">
                                                <i class="fas fa-ellipsis-h"></i> </a>
                                            <div class="dropdown-menu" style="margin: 0px;">
                                                <a class="dropdown-item" href="#">Chỉnh sửa thông tin</a>
                                                <a class="dropdown-item text-danger" href="#">Xóa</a>
                                            </div>
                                        </div>
                                        <!-- dropdown //end -->
                                    </td>
                                </tr>
                                <tr>
                                    <td>23</td>
                                    <td>Nguyễn Văn C</td>
                                    <td>Clasao@gmail.com</td>
                                    <td class="text-end">
                                        <div class="dropdown">
                                            <a href="#" data-bs-toggle="dropdown" class="btn btn-light">
                                                <i class="fas fa-ellipsis-h"></i> </a>
                                            <div class="dropdown-menu" style="margin: 0px;">

                                                <a class="dropdown-item" href="#">Chỉnh sửa thông tin</a>
                                                <a class="dropdown-item text-danger" href="#">Xóa</a>
                                            </div>
                                        </div>
                                        <!-- dropdown //end -->
                                    </td>
                                </tr>
                                <tr>
                                    <td>24</td>
                                    <td>Nguyễn Văn D</td>
                                    <td>Dlasao@gmail.com</td>
                                    <td class="text-end">
                                        <div class="dropdown">
                                            <a href="#" data-bs-toggle="dropdown" class="btn btn-light">
                                                <i class="fas fa-ellipsis-h"></i> </a>
                                            <div class="dropdown-menu" style="margin: 0px;">

                                                <a class="dropdown-item" href="#">Chỉnh sửa thông tin</a>
                                                <a class="dropdown-item text-danger" href="#">Xóa</a>
                                            </div>
                                        </div>
                                        <!-- dropdown //end -->
                                    </td>
                                </tr>
                                <tr>
                                    <td>25</td>
                                    <td>Nguyễn Văn D</td>
                                    <td>Dlasao@gmail.com</td>
                                    <td class="text-end">
                                        <div class="dropdown">
                                            <a href="#" data-bs-toggle="dropdown" class="btn btn-light">
                                                <i class="fas fa-ellipsis-h"></i> </a>
                                            <div class="dropdown-menu" style="margin: 0px;">

                                                <a class="dropdown-item" href="#">Chỉnh sửa thông tin</a>
                                                <a class="dropdown-item text-danger" href="#">Xóa</a>
                                            </div>
                                        </div>
                                        <!-- dropdown //end -->
                                    </td>
                                </tr>
                                <tr>
                                    <td>26</td>
                                    <td>Nguyễn Văn E</td>
                                    <td>Elasao@gmail.com</td>
                                    <td class="text-end">
                                        <div class="dropdown">
                                            <a href="#" data-bs-toggle="dropdown" class="btn btn-light">
                                                <i class="fas fa-ellipsis-h"></i> </a>
                                            <div class="dropdown-menu" style="margin: 0px;">

                                                <a class="dropdown-item" href="#">Chỉnh sửa thông tin</a>
                                                <a class="dropdown-item text-danger" href="#">Xóa</a>
                                            </div>
                                        </div>
                                        <!-- dropdown //end -->
                                    </td>
                                </tr>
                                <tr>
                                    <td>27</td>
                                    <td>Nguyễn Văn F</td>
                                    <td>Alasao@gmail.com</td>
                                    <td class="text-end">
                                        <div class="dropdown">
                                            <a href="#" data-bs-toggle="dropdown" class="btn btn-light">
                                                <i class="fas fa-ellipsis-h"></i> </a>
                                            <div class="dropdown-menu" style="margin: 0px;">

                                                <a class="dropdown-item" href="#">Chỉnh sửa thông tin</a>
                                                <a class="dropdown-item text-danger" href="#">Xóa</a>
                                            </div>
                                        </div>
                                        <!-- dropdown //end -->
                                    </td>
                                </tr>
                                <tr>
                                    <td>28</td>
                                    <td>Nguyễn Văn G</td>
                                    <td>Glasao@gmail.com</td>
                                    <td class="text-end">
                                        <div class="dropdown">
                                            <a href="#" data-bs-toggle="dropdown" class="btn btn-light">
                                                <i class="fas fa-ellipsis-h"></i> </a>
                                            <div class="dropdown-menu" style="margin: 0px;">

                                                <a class="dropdown-item" href="#">Chỉnh sửa thông tin</a>
                                                <a class="dropdown-item text-danger" href="#">Xóa</a>
                                            </div>
                                        </div>
                                        <!-- dropdown //end -->
                                    </td>
                                </tr>
                                <tr>
                                    <td>29</td>
                                    <td>Nguyễn Văn H</td>
                                    <td>Hlasao@gmail.com</td>
                                    <td class="text-end">
                                        <div class="dropdown">
                                            <a href="#" data-bs-toggle="dropdown" class="btn btn-light">
                                                <i class="fas fa-ellipsis-h"></i> </a>
                                            <div class="dropdown-menu" style="margin: 0px;">

                                                <a class="dropdown-item" href="#">Chỉnh sửa thông tin</a>
                                                <a class="dropdown-item text-danger" href="#">Xóa</a>
                                            </div>
                                        </div>
                                        <!-- dropdown //end -->
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div> <!-- card body .// -->
                    </div>
                </div>
                <div class="col-6">
                    <div class="card">
                        <div class="card-header">
                            <h3>Đơn hàng mới</h3>
                        </div>
                        <div class="card-body">
                            <table id="newOrder" class="table table-hover">
                                <thead>
                                <tr>
                                    <th>#ID</th>
                                    <th style="width: 40%;">Tên người đặt</th>
                                    <th class="text-center">Trạng thái</th>
                                    <th class="text-end">Hành động</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>Nguyễn Văn A</td>
                                    <td><span class="badge rounded-pill alert-warning">Đang vận chuyển</span></td>
                                    <td class="text-end">
                                        <div class="dropdown">
                                            <a href="#" data-bs-toggle="dropdown" class="btn btn-light">
                                                <i class="fas fa-ellipsis-h"></i> </a>
                                            <div class="dropdown-menu" style="margin: 0px;">

                                                <a class="dropdown-item" href="#">Chỉnh sửa thông tin</a>
                                                <a class="dropdown-item text-danger" href="#">Xóa</a>
                                            </div>
                                        </div>
                                        <!-- dropdown //end -->
                                    </td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Nguyễn Văn B</td>
                                    <td><span class="badge rounded-pill alert-warning">Đang vận chuyển</span></td>
                                    <td class="text-end">
                                        <div class="dropdown">
                                            <a href="#" data-bs-toggle="dropdown" class="btn btn-light">
                                                <i class="fas fa-ellipsis-h"></i> </a>
                                            <div class="dropdown-menu" style="margin: 0px;">

                                                <a class="dropdown-item" href="#">Chỉnh sửa thông tin</a>
                                                <a class="dropdown-item text-danger" href="#">Xóa</a>
                                            </div>
                                        </div>
                                        <!-- dropdown //end -->
                                    </td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>Nguyễn Văn C</td>
                                    <td><span class="badge rounded-pill alert-warning">Đang vận chuyển</span></td>
                                    <td class="text-end">
                                        <div class="dropdown">
                                            <a href="#" data-bs-toggle="dropdown" class="btn btn-light">
                                                <i class="fas fa-ellipsis-h"></i> </a>
                                            <div class="dropdown-menu" style="margin: 0px;">

                                                <a class="dropdown-item" href="#">Chỉnh sửa thông tin</a>
                                                <a class="dropdown-item text-danger" href="#">Xóa</a>
                                            </div>
                                        </div>
                                        <!-- dropdown //end -->
                                    </td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>Nguyễn Văn D</td>
                                    <td><span class="badge rounded-pill alert-danger">Đã Hủy</span></td>
                                    <td class="text-end">
                                        <div class="dropdown">
                                            <a href="#" data-bs-toggle="dropdown" class="btn btn-light">
                                                <i class="fas fa-ellipsis-h"></i> </a>
                                            <div class="dropdown-menu" style="margin: 0px;">

                                                <a class="dropdown-item" href="#">Chỉnh sửa thông tin</a>
                                                <a class="dropdown-item text-danger" href="#">Xóa</a>
                                            </div>
                                        </div>
                                        <!-- dropdown //end -->
                                    </td>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td>Nguyễn Văn E</td>
                                    <td><span class="badge rounded-pill alert-danger">Đã Hủy</span></td>
                                    <td class="text-end">
                                        <div class="dropdown">
                                            <a href="#" data-bs-toggle="dropdown" class="btn btn-light">
                                                <i class="fas fa-ellipsis-h"></i> </a>
                                            <div class="dropdown-menu" style="margin: 0px;">

                                                <a class="dropdown-item" href="#">Chỉnh sửa thông tin</a>
                                                <a class="dropdown-item text-danger" href="#">Xóa</a>
                                            </div>
                                        </div>
                                        <!-- dropdown //end -->
                                    </td>
                                </tr>
                                <tr>
                                    <td>6</td>
                                    <td>Nguyễn Văn F</td>
                                    <td><span class="badge rounded-pill alert-danger">Đã Hủy</span></td>
                                    <td class="text-end">
                                        <div class="dropdown">
                                            <a href="#" data-bs-toggle="dropdown" class="btn btn-light">
                                                <i class="fas fa-ellipsis-h"></i> </a>
                                            <div class="dropdown-menu" style="margin: 0px;">

                                                <a class="dropdown-item" href="#">Chỉnh sửa thông tin</a>
                                                <a class="dropdown-item text-danger" href="#">Xóa</a>
                                            </div>
                                        </div>
                                        <!-- dropdown //end -->
                                    </td>
                                </tr>
                                <tr>
                                    <td>7</td>
                                    <td>Nguyễn Văn G</td>
                                    <td><span class="badge rounded-pill alert-success">Đã Nhận</span></td>
                                    <td class="text-end">
                                        <div class="dropdown">
                                            <a href="#" data-bs-toggle="dropdown" class="btn btn-light">
                                                <i class="fas fa-ellipsis-h"></i> </a>
                                            <div class="dropdown-menu" style="margin: 0px;">

                                                <a class="dropdown-item" href="#">Chỉnh sửa thông tin</a>
                                                <a class="dropdown-item text-danger" href="#">Xóa</a>
                                            </div>
                                        </div>
                                        <!-- dropdown //end -->
                                    </td>
                                </tr>
                                <tr>
                                    <td>8</td>
                                    <td>Nguyễn Văn H</td>
                                    <td><span class="badge rounded-pill alert-success">Đã Nhận</span></td>
                                    <td class="text-end">
                                        <div class="dropdown">
                                            <a href="#" data-bs-toggle="dropdown" class="btn btn-light">
                                                <i class="fas fa-ellipsis-h"></i> </a>
                                            <div class="dropdown-menu" style="margin: 0px;">

                                                <a class="dropdown-item" href="#">Chỉnh sửa thông tin</a>
                                                <a class="dropdown-item text-danger" href="#">Xóa</a>
                                            </div>
                                        </div>
                                        <!-- dropdown //end -->
                                    </td>
                                </tr>
                                <tr>
                                    <td>9</td>
                                    <td>Nguyễn Văn I</td>
                                    <td><span class="badge rounded-pill alert-success">Đã Nhận</span></td>
                                    <td class="text-end">
                                        <div class="dropdown">
                                            <a href="#" data-bs-toggle="dropdown" class="btn btn-light">
                                                <i class="fas fa-ellipsis-h"></i> </a>
                                            <div class="dropdown-menu" style="margin: 0px;">

                                                <a class="dropdown-item" href="#">Chỉnh sửa thông tin</a>
                                                <a class="dropdown-item text-danger" href="#">Xóa</a>
                                            </div>
                                        </div>
                                        <!-- dropdown //end -->
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div> <!-- card body .// -->
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
        $('#newOrder').DataTable({
            paging: false,
            searching: false,
            info: false,
            columnDefs: [
                {"className": "dt-center", "targets": 2}
            ],
        });
        $('#newUser').DataTable({
            paging: false,
            searching: false,
            info: false,
        });
    });
</script>
</body>

</html>
v
