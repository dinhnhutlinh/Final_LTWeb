<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <title>store</title>

    <!-- Google font -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

    <!-- Bootstrap -->
    <link rel="stylesheet" href="css/bootstrap.css">

    <!-- Slick -->
    <link type="text/css" rel="stylesheet" href="css/slick.css"/>
    <link type="text/css" rel="stylesheet" href="css/slick-theme.css"/>

    <!-- Font Awesome Icon -->
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <!-- Custom stlylesheet -->
    <link type="text/css" rel="stylesheet" href="css/style.css"/>
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/footer.css">

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
                    <li><a href="/Home">Home</a></li>
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
                        <form id="form" action="Store" method="get">
                            <div class="filter">
                                <h4 class="aside-title">Category</h4>
                                <div class="p-2">
                                    <h5><a href="Store?cat=all">All BroadGame</a></h5>
                                </div>
                                <c:forEach var="cat" items="${categories}">
                                    <div class="p-2">
                                        <h5><a href="Store?cat=${cat.getId()}">${cat.getName()}</a></h5>
                                    </div>
                                </c:forEach>
                            </div>
                            <input type="hidden" name="cat" value="${param["cat"]}">
                            <div class="store-sort">
                                <div class="row align-items-baseline">
                                    <div class="col-6"><label class="form-label">
                                        Sort by:</label></div>
                                    <div class="col-6"><select id="sort" class="form-select" name="sort">
                                        <option value="price" <c:if test="${param['sort']=='price'}">selected</c:if>>
                                            Price up
                                        </option>
                                        <option value="-price" <c:if test="${param['sort']=='-price'}">selected</c:if>>
                                            Price down
                                        </option>
                                    </select></div>
                                </div>
                            </div>
                            <div class="filter">
                                <div class="border mb-4"></div>
                                <h4 class="aside-title">Age</h4>
                                <div class="form-check">
                                    <input class="form-check-input" name="old" type="checkbox" value="3"
                                           id="oldOption1" <c:if test="${param['old']=='3'}">checked</c:if>>
                                    <label class="form-check-label" for="oldOption1">
                                        3+
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" name="old" type="checkbox" value="6"
                                           id="oldOption2" <c:if test="${param['old']=='6'}">checked</c:if>>
                                    <label class="form-check-label" for="oldOption2">
                                        6+
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" name="old" type="checkbox" value="10"
                                           id="oldOption3" <c:if test="${param['old']=='10'}">checked</c:if>>
                                    <label class="form-check-label" for="oldOption3">
                                        10+
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" name="old" type="checkbox" value="14"
                                           id="oldOption4" <c:if test="${param['old']=='14'}">checked</c:if>>
                                    <label class="form-check-label" for="oldOption4">
                                        14+
                                    </label>
                                </div>
                            </div>
                        </form>
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
                                <h5 id="quantily-product">${products.size()} products</h5>
                            </div>

                        </div>
                    </div>
                    <!-- /store top filter -->

                    <!-- store products -->
                    <div id="product-list" class="row">
                        <!-- product -->
                        <c:forEach var="p" items="${products}">
                            <div class="item col-md-4 col-xs-6">
                                <div class="product">
                                    <div class="product-img zoom d-flex justify-content-center">
                                        <img src="${p.imgDisplay}" style="width: 200px; height: 250px"/>
                                    </div>
                                    <div class="product-body">
                                        <h3 class="product-name"><a href="product?id=${p.id}">${p.name}</a>
                                        </h3>
                                        <h4 class="product-price">${p.price} $</h4>
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

                                            <button class="d-xl-none add-to-cart-btn w-100" data-id="${product.id}"><i
                                                    class="fa fa-shopping-cart m-auto" aria-hidden="true"></i>
                                            </button>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </c:forEach>

                        <!-- /product -->
                    </div>
                </div>
            </div>
            <!-- /STORE -->
        </div>
        <!-- /row -->
    </div>
    <!-- /container -->
</div>
<!-- /SECTION -->
<jsp:include page="view/footer.jsp"></jsp:include>


<!-- jQuery Plugins -->
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="js/bootstrap.bundle.js"></script>
<script src="js/slick.min.js"></script>
<script src="js/main.js"></script>
<script src="js/cartJS.js"></script>
<script src="js/cart_controller.js"></script>
<script>
    $("input:checkbox").on('click', function () {
        $("#form").submit();
    });
    $("#sort").change(function () {
        $("#form").submit();
    });
</script>
</body>

</html>