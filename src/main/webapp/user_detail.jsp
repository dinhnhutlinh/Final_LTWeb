<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <title>Account</title>

    <!-- Google font -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

    <!-- Bootstrap -->
    <link rel="stylesheet" href="css/bootstrap.css">

    <!-- Slick -->
    <link type="text/css" rel="stylesheet" href="css/slick.css"/>
    <link type="text/css" rel="stylesheet" href="css/slick-theme.css"/>


    <!-- Font Awesome Icon -->
    <link rel="stylesheet" href="css/font-awesome.min.css">

    <!-- Custom stlylesheet -->
    <link type="text/css" rel="stylesheet" href="css/style.css"/>
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/footer.css">


</head>

<body>

<jsp:include page="view/header.jsp"></jsp:include>
<!--BODY-->
<div class="bg">
    <div class="profile">
        <div class="content_profile">
            <div class="container">
                <div class="row mt-3 mb-3">
                    <div class="col-6">
                        <div class="info_profile">
                            <div class="info_title">
                                <div class="image center">
                                    <img src="${user.getAvatar()}" alt="">
                                </div>
                                <div class="name">
                                </div>
                                <div class="p-3 d-flex justify-content-around">
<%--                                    <a class="btn btn-orange" href="ecit_user">Edit--%>
<%--                                    </a>--%>
                                    <a class="btn btn-orange" href="change_password?id=${user.getId()}">Change password
                                    </a>
                                </div>

                            </div>
                            <div class="info_content">
                                <div class="title">
                                    <h6>Information account</h6>
                                </div>
                                <div class="content">
                                    <div class="content_text">
                                        <p>
                                        <h6>Full name: <span id="cus_name_text">${user.getName()}</span></h6>
                                        </p>
                                        <p>
                                        <h6>Address: <span id="cus_address_text">${user.getAddress()}</span></h6>
                                        </p>
                                        <p>
                                        <h6>Email: <span id="cus_email_text">${user.getMail()}</span></h6>
                                        </p>
                                        <p>
                                        <h6>Number phone: <span id="cus_phone_text">${user.getPhone()}</span></h6>
                                        </p>
                                    </div>
                                </div>
                            </div>


                        </div>
                    </div>
                    <div class="col-6">
                        <div class="orders_list">
                            <div class="title_o">
                                My orders
                            </div>
                            <div class="content_o">
                                <div class="card">
                                    <div class="card-body">
                                        <table id="orderTable" class="table table-hover">
                                            <thead>
                                            <th>ID</th>
                                            <th>State</th>
                                            <th>Price</th>
                                            <th>Qty</th>
                                            <th>Order</th>
                                            </thead>
                                            <tbody>
                                            <c:forEach var="order" items="${orders}">
                                                <tr>
                                                    <td>${order.getId()}</td>
                                                    <td>
                                                        <c:if test="${order.status==0}">
                                                            <span class="badge rounded-pill alert-info">Transmission</span>
                                                        </c:if>
                                                        <c:if test="${order.status==1}">
                                                            <span class="badge rounded-pill alert-danger">Cancel</span>
                                                        </c:if>
                                                        <c:if test="${order.status==2}">
                                                            <span class="badge rounded-pill alert-danger">Success</span>
                                                        </c:if>
                                                    </td>
                                                    <td>${order.total}</td>
                                                    <td>${order.phone}</td>
                                                    <td>
                                                        <a href="order_detail?id=${order.id}" class="btn btn-success">View</a>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--/BODY-->

        <!-- FOOTER -->
        <jsp:include page="view/footer.jsp"></jsp:include>
        <!-- /FOOTER -->

        <!-- jQuery Plugins -->
        <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
        <script src="js/bootstrap.bundle.js"></script>
        <script src="js/slick.min.js"></script>
        <script src="js/main.js"></script>
        <script src="js/cartJS.js"></script>
        <script src="js/cart_controller.js"></script>
</body>

</html>