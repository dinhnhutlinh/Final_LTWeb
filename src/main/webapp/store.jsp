<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <title>Store</title>

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
                    <li><a href="Home">Trang chủ</a></li>
                    <li class="">Sản phẩm</li>
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
            <!-- ASIDE -->
            <div id="aside" class="col-md-3">
                <!-- aside Widget -->
                <div class="aside card border-r10">
                    <div class="card-body">
                        <div class="filter">
                            <h4 class="aside-title">Thể loại</h4>
                            <div class="p-2">
                                <h5><a href="Store?cat=all">Tất cả BroadGame</a></h5>
                            </div>
                            <div class="p-2">
                                <h5><a href="Store?cat=sale">BroadGame khuyến mãi</a></h5>
                            </div>
                            <c:forEach var="cat" items="${listCat}">
                                <div class="p-2">
                                    <h5><a href="Store?cat=${cat.getId()}">${cat.getName()}</a></h5>
                                </div>
                            </c:forEach>
                        </div>
                        <div class="filter">
                            <div class="border mb-4"></div>
                            <h4 class="aside-title">Mức giá</h4>
                            <div class="form-check">
                                <input class="form-check-input" name="price" type="checkbox" value=""
                                       id="moneyOption1">
                                <label class="form-check-label" for="moneyOption1">
                                    0 - 150000 VND
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" name="price" type="checkbox" value=""
                                       id="moneyOption2">
                                <label class="form-check-label" for="moneyOption2">
                                    150000 - 300000 VND
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" name="price" type="checkbox" value=""
                                       id="moneyOption3">
                                <label class="form-check-label" for="moneyOption3">
                                    300000 - 500000 VND
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" name="price" type="checkbox" value=""
                                       id="moneyOption4">
                                <label class="form-check-label" for="moneyOption4">
                                    500000 VND trở lên
                                </label>
                            </div>
                        </div>
                        <div class="filter">
                            <div class="border mb-4"></div>
                            <h4 class="aside-title">Độ tuổi</h4>
                            <div class="form-check">
                                <input class="form-check-input" name="old" type="checkbox" value="" id="oldOption1">
                                <label class="form-check-label" for="oldOption1">
                                    3+
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" name="old" type="checkbox" value="" id="oldOption2">
                                <label class="form-check-label" for="oldOption2">
                                    6+
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" name="old" type="checkbox" value="" id="oldOption3">
                                <label class="form-check-label" for="oldOption3">
                                    10+
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" name="old" type="checkbox" value="" id="oldOption4">
                                <label class="form-check-label" for="oldOption4">
                                    14+
                                </label>
                            </div>
                        </div>
                    </div>
                    <!-- /aside Widget -->
                </div>
            </div>
            <!-- /ASIDE -->

            <!-- STORE -->
            <div id="store" class="col-md-9 card border-2">
                <div class="card-body">
                    <!-- store top filter -->
                    <div class="store-filter clearfix">
                        <div class="row">
                            <div class="col-6">
                                <h5 id="quantily-product">Tìm được ${total} sản phẩm</h5>
                            </div>
                            <div class="col-6 text-end">
                                <div class="store-sort">
                                    <div class="row align-items-baseline">
                                        <div class="col-6"><label class="form-label">
                                            Sắp sếp theo:</label></div>
                                        <div class="col-6">
                                            <select class="form-select" onchange="sort(this.value);">
                                                <option value="new" <c:if test="${sort=='new'}"></c:if> >Sản phẩm mới
                                                </option>
                                                <option value="-price"  <c:if test="${sort=='-price'}"></c:if>>Giá từ
                                                    thấp
                                                    đển cao
                                                </option>
                                                <option value="price"  <c:if test="${sort=='price'}"></c:if>>Giá từ cao
                                                    đển thấp
                                                </option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /store top filter -->

                    <!-- store products -->
                    <div id="product-list" class="row">
                        <!-- product -->
                        <c:forEach var="proc" items="${findOut}">
                            <div class="item col-md-4 col-xs-6">
                                <div class="product">
                                    <div class="product-img zoom">
                                        <img
                                                src=""/>
                                    </div>
                                    <div class="product-body">
                                        <h3 class="product-name"><a
                                                href="Product?id=${proc.getId()}">${proc.getName()}</a></h3>
                                        <h4 class="product-price">${proc.getPrice()}
                                            <del class="product-old-price">150.000VND</del>
                                        </h4>
                                        <div class="product-rating">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </div>
                                        <div class="add-to-cart">

                                            <button class="d-none d-xl-block add-to-cart-btn w-100">Thêm vào
                                                giỏ
                                            </button>
                                            <button class="d-xl-none add-to-cart-btn w-100"><i
                                                    class="fa fa-shopping-cart m-auto" aria-hidden="true"></i></button>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!-- /product -->
                        </c:forEach>
                    </div>
                    <!-- /store products -->
                    <ul class="reviews-pagination">
                        <c:if test="${currentPage!=1}">
                            <li><a href="Store?cat=${param["cat"]}&page=${1}"><i class="fa fa-angle-left"></i></a></li>
                        </c:if>
                        <c:forEach begin="1" end="${totalPage}" var="i">
                            <c:if test="${i==currentPage}">
                                <li class="active">
                                        ${currentPage}
                                </li>
                            </c:if>
                            <c:if test="${i!=currentPage}">
                                <li>
                                    <a href="Store?cat=${param["cat"]}&page=${i}">${i}</a>
                                </li>
                            </c:if>
                        </c:forEach>
                        <c:if test="${currentPage!=totalPage}">
                            <li><a href="Store?cat=${param["cat"]}&page=${totalPage}"><i class="fa fa-angle-right"></i></a>
                            </li>
                        </c:if>
                    </ul>
                </div>
            </div>
            <!-- /STORE -->
        </div>
        <!-- /row -->
    </div>
    <!-- /container -->
</div>
<!-- /SECTION -->
<!-- FOOTER -->
<jsp:include page="view/footer.jsp"></jsp:include>
<!-- /FOOTER -->

<!-- jQuery Plugins -->
<script src="js/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
<script src="js/slick.min.js"></script>

<script src="js/jquery.zoom.min.js"></script>
<script src="js/main.js"></script>
<script>
    function sort(option) {
        window.location = window.location.href + '&sort=' + option;
    }

    $("input:checkbox").on('click', function () {
        var $box = $(this);
        if ($box.is(":checked")) {
            var group = "input:checkbox[name='" + $box.attr("name") + "']";
            $(group).prop("checked", false);
            $box.prop("checked", true);
        } else {
            $box.prop("checked", false);
        }
    });
</script>
</body>

</html>
