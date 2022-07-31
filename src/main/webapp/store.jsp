<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">


<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <title>store</title>

    <!-- Google font -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

    <!-- Bootstrap -->
    <link rel="stylesheet" href="templete/css/bootstrap.css">

    <!-- Slick -->
    <link type="text/css" rel="stylesheet" href="templete/css/slick.css"/>
    <link type="text/css" rel="stylesheet" href="templete/css/slick-theme.css"/>

    <!-- Font Awesome Icon -->
    <link rel="stylesheet" href="templete/css/font-awesome.min.css">

    <!-- Custom stlylesheet -->
    <link type="text/css" rel="stylesheet" href="templete/css/style.css"/>
    <link rel="stylesheet" href="templete/css/header.css">
    <link rel="stylesheet" href="templete/css/footer.css">

</head>

<body>
<!-- HEADER -->
<jsp:include page="view/header.jsp"></jsp:include>
<!-- /HEADER -->

<!-- NAVIGATION -->

<!-- /NAVIGATION -->
<!-- BREADCRUMB -->
<div id="breadcrumb" class="section">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <ul class="breadcrumb-tree">
                    <li><a href="templete/index.html">Home</a></li>
                    <li class="">Product</li>
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
                            <h4 class="aside-title">Category</h4>
                            <div class="p-2">
                                <h5><a href="#">All BroadGame</a></h5>
                            </div>
                            <div class="p-2">
                                <h5><a href="#">Sale BroadGame</a></h5>
                            </div>
                            <div class="p-2">
                                <h5><a href="#">Wisdom BroadGame</a></h5>
                            </div>
                            <div class="p-2">
                                <h5><a href="#">BroadGame Party</a></h5>
                            </div>
                            <div class="p-2">
                                <h5><a href="#">Family BroadGame</a></h5>
                            </div>
                            <div class="p-2">
                                <h5><a href="#">Card BroadGame</a></h5>
                            </div>
                            <div class="p-2">
                                <h5><a href="#">Group Toys</a></h5>
                            </div>
                            <div class="p-2">
                                <h5><a href="#">Accessory BroadGame</a></h5>
                            </div>
                        </div>
                        <div class="filter">
                            <div class="border mb-4"></div>
                            <h4 class="aside-title">Price</h4>
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
                                    500000 VND up
                                </label>
                            </div>
                        </div>
                        <div class="filter">
                            <div class="border mb-4"></div>
                            <h4 class="aside-title">Age</h4>
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
                                <h5 id="quantily-product">12 products</h5>
                            </div>
                            <div class="col-6 text-end">
                                <div class="store-sort">
                                    <div class="row align-items-baseline">
                                        <div class="col-6"><label class="form-label">
                                            Sort by:</label></div>
                                        <div class="col-6"><select class="form-select">
                                            <option value="popular">Selling</option>
                                            <option value="price">Price up</option>
                                            <option value="-price">Price down</option>
                                            <option value="news">New product</option>
                                        </select></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /store top filter -->

                    <!-- store products -->
                    <div id="product-list" class="row">
                        <!-- product -->
                        <jsp:useBean id="products" scope="request" type="java.util.List"/>
                        <c:forEach var="p" items="${products}">

                            <div class="item col-md-4 col-xs-6">
                                <div class="product">
                                    <div class="product-img zoom d-flex justify-content-center">
                                        <img src="${p.imgDisplay}" style="width: 200px; height: 250px"/>
                                    </div>
                                    <div class="product-body">
                                        <h3 class="product-name"><a href="DetailProduct?idproduct=${p.id}">${p.name}</a></h3>
                                        <h4 class="product-price">${p.price} $
<%--                                            <c:if test="${p.discount_id !=null}"> <del class="product-old-price">190.000VND</del></c:if>--%>

                                        </h4>
                                        <div class="product-rating">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </div>
                                        <div class="add-to-cart">
                                            <button class="d-none d-xl-block add-to-cart-btn w-100">Add to cart
                                            </button>
                                            <button class="d-xl-none add-to-cart-btn w-100"><i
                                                    class="fa fa-shopping-cart m-auto" aria-hidden="true"></i>
                                            </button>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </c:forEach>
                        <%--                        </jsp:useBean>--%>

                        <!-- /product -->
                    </div>
                    <!-- /store products -->
                    <ul id="page" class="reviews-pagination">
                        <li class="active">1</li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#"><i class="fa fa-angle-right"></i></a></li>
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
<footer id="footer">
    <!-- top footer -->
    <div class="section">
        <!-- container -->
        <div class="container">
            <!-- row -->
            <div class="row">
                <div class="col-md-3 col-xs-6">
                    <div class="footer">
                        <h3 class="footer-title">about us</h3>
                        <p>BroadStore is a copamy provider and sale board game</p>
                        <ul class="footer-links">
                            <li><a href="#"><i class="fa fa-map-marker"></i>25/5 Thăng Long, Phường 4, Quận Tân
                                Bình, TP. Hồ Chí Minh</a></li>
                            <li><a href="#"><i class="fa fa-phone"></i>0938 424 289
                            </a></li>
                            <li><a href="#"><i class="fa fa-envelope-o"></i>admin@BoardStore.vn</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-3 col-xs-6">
                    <div class="footer">
                        <h3 class="footer-title">Category</h3>
                        <ul class="footer-links">
                            <li><a href="#">Wisdom Board Game</a></li>
                            <li><a href="#">Family Board Game</a></li>
                            <li><a href="#">Card Game</a></li>
                            <li><a href="#">Board Game Party</a></li>
                            <li><a href="#">Accessory Board Game</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-3 col-xs-6">
                    <div class="footer">
                        <h3 class="footer-title">Information</h3>
                        <ul class="footer-links">
                            <li><a href="templete/about_us.html">About us</a></li>
                            <li><a href="templete/termsAndConditions.html">Terms and Conditions</a></li>

                        </ul>
                    </div>
                </div>

                <div class="col-md-3 col-xs-6">
                    <div class="footer">
                        <h3 class="footer-title">Service</h3>
                        <ul class="footer-links">
                            <li><a href="templete/InforUser.html">Account</a></li>
                            <li><a href="templete/cart.html">Shopping cart</a></li>

                        </ul>
                    </div>
                </div>
            </div>
            <!-- /row -->
        </div>
        <!-- /container -->
    </div>
    <!-- /top footer -->

    <!-- bottom footer -->
    <div id="bottom-footer" class="section">
        <div class="container">
            <!-- row -->
            <div class="row">
                <div class="col-md-12 text-center">
                    <ul class="footer-payments">
                        <li><a href="#"><i class="fa fa-cc-visa"></i></a></li>
                        <li><a href="#"><i class="fa fa-credit-card"></i></a></li>
                        <li><a href="#"><i class="fa fa-cc-paypal"></i></a></li>
                        <li><a href="#"><i class="fa fa-cc-mastercard"></i></a></li>
                        <li><a href="#"><i class="fa fa-cc-discover"></i></a></li>
                        <li><a href="#"><i class="fa fa-cc-amex"></i></a></li>
                    </ul>
                </div>
            </div>
            <!-- /row -->
        </div>
        <!-- /container -->
    </div>
    <!-- /bottom footer -->
</footer>
<!-- /FOOTER -->

<!-- jQuery Plugins -->
<script src="templete/js/jquery.min.js"></script>
<script src="templete/js/bootstrap.bundle.js"></script>
<script src="templete/js/slick.min.js"></script>

<script src="templete/js/jquery.zoom.min.js"></script>
<script src="templete/js/main.js"></script>
<script>
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