<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <title>Search</title>

    <!-- Google font -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

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
<!-- BREADCRUMB -->
<div id="breadcrumb" class="section">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <ul class="breadcrumb-tree">
                    <li><a href="index.html">Trang chủ</a></li>
                    <li class="active">Tìm kiếm</li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- /BREADCRUMB -->

<!-- SECTION -->
<div class="section">
    <!-- container -->
    <div class="container">
        <!-- row -->
        <div class="row">
            <h4>Tìm kiếm được ${total} sản phẩm với từ khóa ${param["search"]}</h4>
            <div class="card shadow">
                <div class="card-body">
                    <!-- store products -->
                    <div class="row">
                        <c:forEach var="product" items="${findOut}">
                            <div class="item col-md-3 col-xs-6">
                                <div class="product">
                                    <div class="product-img zoom">
                                        <img src="img/icon-timeline/sp.png"/>
                                    </div>
                                    <div class="product-body">
                                        <h3 class="product-name"><a
                                                href="Product?id=${product.getId()}">${product.getName()}</a></h3>
                                        <h4 class="product-price">${product.getPrice()}
                                            <del class="product-old-price">${product.getPrice()}</del>
                                        </h4>
                                        <div class="product-rating">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </div>
                                        <div class="add-to-cart">
                                            <button class="add-to-cart-btn">Thêm vào giỏ</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                    <!-- /store products -->
                    <ul class="reviews-pagination">
                        <c:if test="${currentPage==1}">
                            <li><a href="#"><i class="fa fa-angle-left"></i></a></li>
                        </c:if>
                        <c:forEach begin="1" end="${totalPage}" var="i">
                            <c:if test="${i==currentPage}">
                                <li class="active">
                                        ${currentPage}
                                </li>
                            </c:if>
                            <c:if test="${i!=currentPage}">
                                <li>
                                    <a href="Search?search=${param["search"]}&page=${i}">${i}</a>
                                </li>
                            </c:if>
                        </c:forEach>
                        <c:if test="${currentPage==1}">
                            <li><a href="#"><i class="fa fa-angle-right"></i></a></li>
                        </c:if>
                    </ul>
                </div>
            </div>
        </div>
        <!-- /row -->
    </div>
    <!-- /container -->
</div>
<!-- /SECTION -->

<jsp:include page="view/footer.jsp"></jsp:include>
<!-- jQuery Plugins -->
<script src="js/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
<script src="js/slick.min.js"></script>

<script src="js/jquery.zoom.min.js"></script>
<script src="js/main.js"></script>

</body>

</html>
