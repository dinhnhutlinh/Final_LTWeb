<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="shortcut icon" href="images/favicon.svg" type="image/x-icon"/>
    <title>Chỉnh sửa người dunhg</title>

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
                                <a href="listCustomer.html">Dashboard</a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">
                                Người dùng
                            </li>
                        </ol>

                    </div>
                    <!-- end col -->
                </div>
                <!-- end row -->
            </div>
            <section class="content-main">
                <div class="card">
                    <div class="card-header">
                        <div class="d-flex justify-content-between">
                            <h3>Chỉnh sửa thông tin khách hàng</h3>
                            <div>
                                <button class="btn btn-orange">Lưu</button>
                                <button class="btn btn-orange">Đổi mật khẩu</button>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <form action="">
                            <div class="row pt-3 g-3 align-items-center">
                                <div class="col-3">
                                    <label for="userID" class="col-form-label">ID</label>
                                </div>
                                <div class="col-9">
                                    <input disabled type="text" id="userID" class="form-control"
                                           value="${customer.getId()}">
                                </div>
                            </div>
                            <div class="row pt-3 g-3 align-items-center">
                                <div class="col-3">
                                    <label for="name" class="col-form-label">Tên Khách Hàng</label>
                                </div>
                                <div class="col-9">
                                    <input type="text" id="name" class="form-control"
                                           value="${customer.getLastName()} ${customer.getFirstName()}">
                                </div>
                            </div>
                            <div class="row pt-3 g-3 align-items-center">
                                <div class="col-3">
                                    <label for="email" class="col-form-label">Email</label>
                                </div>
                                <div class="col-9">
                                    <input type="email" id="email" class="form-control"
                                           value="${customer.getEmail()}">
                                </div>
                            </div>
                            <div class="row pt-3 g-3 align-items-center">
                                <div class="col-3">
                                    <label for="phone" class="col-form-label">Số điện thoại</label>
                                </div>
                                <div class="col-9">
                                    <input type="phone" id="phone" class="form-control" value="${customer.getPhone()}">
                                </div>
                            </div>
                            <div class="row pt-3 g-3 align-items-center">
                                <div class="col-3">
                                    <label for="address" class="col-form-label">Địa chỉ</label>
                                </div>
                                <div class="col-9">
                                    <input type="text" id="address" class="form-control"
                                           value="${customer.getAddress().getDetailsAddress()}">
                                </div>
                            </div>
                            <div class="row pt-3 g-3 align-items-center">
                                <div class="col-3">
                                    <label for="address" class="col-form-label">Tỉnh/Thành phố</label>
                                </div>
                                <div class="col-9">
                                    <select class="form-select" aria-label="Default select example">
                                        <option value="An Giang">An Giang</option>
                                        <option value="Bà Rịa - Vũng Tàu">Bà Rịa - Vũng Tàu</option>
                                        <option value="Bắc Giang">Bắc Giang</option>
                                        <option value="Bắc Kạn">Bắc Kạn</option>
                                        <option value="Bạc Liêu">Bạc Liêu</option>
                                        <option value="Bắc Ninh">Bắc Ninh</option>
                                        <option value="Bến Tre">Bến Tre</option>
                                        <option value="Bình Định">Bình Định</option>
                                        <option value="Bình Dương">Bình Dương</option>
                                        <option value="Bình Phước">Bình Phước</option>
                                        <option value="Bình Thuận">Bình Thuận</option>
                                        <option value="Bình Thuận">Bình Thuận</option>
                                        <option value="Cà Mau">Cà Mau</option>
                                        <option value="Cao Bằng">Cao Bằng</option>
                                        <option value="Đắk Lắk">Đắk Lắk</option>
                                        <option value="Đắk Nông">Đắk Nông</option>
                                        <option value="Điện Biên">Điện Biên</option>
                                        <option value="Đồng Nai">Đồng Nai</option>
                                        <option value="Đồng Tháp">Đồng Tháp</option>
                                        <option value="Đồng Tháp">Đồng Tháp</option>
                                        <option value="Gia Lai">Gia Lai</option>
                                        <option value="Hà Giang">Hà Giang</option>
                                        <option value="Hà Nam">Hà Nam</option>
                                        <option value="Hà Tĩnh">Hà Tĩnh</option>
                                        <option value="Hải Dương">Hải Dương</option>
                                        <option value="Hậu Giang">Hậu Giang</option>
                                        <option value="Hòa Bình">Hòa Bình</option>
                                        <option value="Hưng Yên">Hưng Yên</option>
                                        <option value="Khánh Hòa">Khánh Hòa</option>
                                        <option value="Kiên Giang">Kiên Giang</option>
                                        <option value="Kon Tum">Kon Tum</option>
                                        <option value="Lai Châu">Lai Châu</option>
                                        <option value="Lâm Đồng">Lâm Đồng</option>
                                        <option value="Lạng Sơn">Lạng Sơn</option>
                                        <option value="Lào Cai">Lào Cai</option>
                                        <option value="Long An">Long An</option>
                                        <option value="Nam Định">Nam Định</option>
                                        <option value="Nghệ An">Nghệ An</option>
                                        <option value="Ninh Bình">Ninh Bình</option>
                                        <option value="Ninh Thuận">Ninh Thuận</option>
                                        <option value="Phú Thọ">Phú Thọ</option>
                                        <option value="Quảng Bình">Quảng Bình</option>
                                        <option value="Quảng Bình">Quảng Bình</option>
                                        <option value="Quảng Ngãi">Quảng Ngãi</option>
                                        <option value="Quảng Ninh">Quảng Ninh</option>
                                        <option value="Quảng Trị">Quảng Trị</option>
                                        <option value="Sóc Trăng">Sóc Trăng</option>
                                        <option value="Sơn La">Sơn La</option>
                                        <option value="Tây Ninh">Tây Ninh</option>
                                        <option value="Thái Bình">Thái Bình</option>
                                        <option value="Thái Nguyên">Thái Nguyên</option>
                                        <option value="Thanh Hóa">Thanh Hóa</option>
                                        <option value="Thừa Thiên Huế">Thừa Thiên Huế</option>
                                        <option value="Tiền Giang">Tiền Giang</option>
                                        <option value="Trà Vinh">Trà Vinh</option>
                                        <option value="Tuyên Quang">Tuyên Quang</option>
                                        <option value="Vĩnh Long">Vĩnh Long</option>
                                        <option value="Vĩnh Phúc">Vĩnh Phúc</option>
                                        <option value="Yên Bái">Yên Bái</option>
                                        <option value="Phú Yên">Phú Yên</option>
                                        <option value="Tp.Cần Thơ">Tp.Cần Thơ</option>
                                        <option value="Tp.Đà Nẵng">Tp.Đà Nẵng</option>
                                        <option value="Tp.Hải Phòng">Tp.Hải Phòng</option>
                                        <option value="Tp.Hà Nội">Tp.Hà Nội</option>
                                        <option value="TP  HCM">TP HCM</option>
                                    </select>
                                </div>
                            </div>
                            <div class="row pt-3 g-3 align-items-center">
                                <div class="col-3">
                                    <label for="address" class="col-form-label">Quận/Huyện</label>
                                </div>
                                <div class="col-9">
                                    <select class="form-select" aria-label="Default select example">
                                        <option value="1" selected>Quận 1</option>
                                        <option value="2">Quận 2</option>
                                        <option value="3">Quận 3</option>
                                        <option value="4">Quận 4</option>
                                        <option value="5">Quận 5</option>
                                        <option value="6">Quận 6</option>
                                        <option value="7">Quận 7</option>
                                        <option value="8">Quận 8</option>
                                        <option value="9">Quận 9</option>
                                        <option value="10">thủ Đức</option>
                                    </select>
                                </div>
                            </div>
                            <div class="pt-4">
                                <h4>Danh sách đơn hàng</h4>
                            </div>
                            <div class="pt-3">
                                <table id="orderTable" class="table table-hover">
                                    <thead>
                                    <th>#ID</th>
                                    <th>Ngày đặt</th>
                                    <th>Giá</th>
                                    <th>Trạng thái</th>
                                    <th class="text-end">Xem</th>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>14/11/2021</td>
                                        <td>133000VND</td>
                                        <td><span class="badge rounded-pill alert-success">Đã Nhận</span></td>
                                        <td><a href="orderDetail.html" class="btn btn-orange"><i
                                                class="fas fa-eye"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>14/11/2021</td>
                                        <td>133000VND</td>
                                        <td><span class="badge rounded-pill alert-success">Đã Nhận</span></td>
                                        <td><a href="orderDetail.html" class="btn btn-orange"><i
                                                class="fas fa-eye"></i></a></td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </form>
                    </div>
                </div>
            </section>
        </div>
        <!-- end container -->
    </section>
    <!-- ========== section end ========== -->
</main>
<!-- ======== main-wrapper end =========== -->

<!-- ========= All Javascript files linkup ======== -->
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
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
            searching: false,
            paging: false,
            language: {
                processing: "đang tải",
                search: "Tìm kiếm",
                lengthMenu: "Số dòng hiển thị _MENU_ ",
                info: "Bài viết từ _START_ đến _END_ trong _TOTAL_",
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
                {"className": "text-end", "targets": 4},
            ],
        });


    });
</script>
</body>

</html>
