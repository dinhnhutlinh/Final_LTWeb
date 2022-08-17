<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <title>${product.name}</title>

    <!-- Google font -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <!-- Slick -->
    <link type="text/css" rel="stylesheet" href="css/slick.css"/>
    <link type="text/css" rel="stylesheet" href="css/slick-theme.css"/>

    <!-- nouislider -->
    <link type="text/css" rel="stylesheet" href="css/nouislider.min.css"/>

    <!-- Font Awesome Icon -->
    <link rel="stylesheet" href="css/font-awesome.min.css">

    <!-- Custom stlylesheet -->
    <link type="text/css" rel="stylesheet" href="css/style.css"/>
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/footer.css">
</head>

<body>
<jsp:include page="view/header.jsp"></jsp:include>

<div id="breadcrumb" class="section">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <ul class="breadcrumb-tree">
                    <li><a href="Home">Home</a></li>
                    <li><a href="Store">Product</a></li>
                    <li class="">${product.getName()}</li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- SECTION -->

<div class="section">
    <!-- container -->
    <div class="container">
        <!-- row -->
        <div class="row">
            <!-- Product main img -->
            <div class="col-md-5 col-md-push-2 border rounded-1">
                <div id="product-main-img">
                    <c:forEach var="i" items="${images}">
                        <div class="product-preview d-flex ">
                            <img src="${i}"/>
                        </div>
                    </c:forEach>

                </div>
            </div>
            <!-- /Product main img -->

            <!-- Product thumb imgs -->
            <div class="col-md-2  col-md-pull-5">
                <div id="product-imgs">

                    <c:forEach var="i" items="${images}">
                        <div class="product-preview">
                            <img src="${i}"/>
                        </div>
                    </c:forEach>
                </div>
            </div>
            <!-- /Product thumb imgs -->
            <!-- Product details -->
            <div class="col-md-5">
                <div class="product-details">
                    <h2 class="product-name">${product.name}</h2>
                    <div>
                        <c:if test="${product.getPriceWasDiscount()==product.price}">
                            <h3 class="product-price">${product.price} $</h3>
                        </c:if>
                        <c:if test="${product.getPriceWasDiscount()!=product.price}">
                            <h3 class="product-price">${product.getPriceWasDiscount()} $
                                <del class="product-old-price">${product.price} $</del>
                            </h3>
                        </c:if>

                        <c:if test="${product.inventory>0}">
                            <span class="product-available"> ${product.inventory} Stocking</span>
                        </c:if>
                        <c:if test="${product.inventory==0}">
                            <span class="product-available">Out of stock</span>
                        </c:if>
                    </div>
                    <div class="product-rating">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                    </div>
                    <div class="product-options d-flex flex-column">
                        <label class="mb-3">
                            <b>Player: </b>
                            <output>${product.minPlayer} - ${product.maxPlayer} player</output>
                        </label>

                        <label class="mb-3">
                            <b>Playtime: </b>
                            <output>${product.minPlaytime} - ${product.maxPlaytime} Mins</output>
                        </label>

                        <label class="mb-3">
                            <b>Min age: </b>
                            <output>${product.minAge} years old</output>
                        </label>
                    </div>
                    <div class="add-to-cart">
                        <div class="qty-label mb-3">
                            Qty ${product.inventory}
                        </div>
                    </div>

                    <button class="add-to-cart-btn" data-id="${product.id}"><i class="fa fa-shopping-cart"></i> Add to
                        cart
                    </button>

                </div>
            </div>
            <!-- /Product details -->
        </div>
        <!-- Product tab -->
        <div class="col-md-12">
            <div id="product-tab">
                <!-- product tab nav -->
                <ul class="tab-nav">
                    <li id="details"><a data-toggle="tab">Product Details </a></li>
                    <li id="description" class="active"><a data-toggle="tab">Product Description </a></li>
                </ul>
                <!-- /product tab nav -->

                <!-- product tab content -->
                <div class="tab-content">
                    <!-- tab1  -->
                    <div id="tab1" class="tab-pane  in active">
                        <div class="row">
                            <div class="col-md-12">
                                <p>${product.desc}</p>
                            </div>
                        </div>
                    </div>
                    <!-- /tab1  -->

                    <!-- tab2  -->
                    <div id="tab2" class="tab-pane  in">
                        <div class="row">
                            <div class="col-md-12">
                                <h6>${product.name}</h6>
                                <h6>Code: <p id="product-id">${product.id}</p></h6>
                                <h6>Age: ${product.minAge} +</h6>
                                <%--                                <h6>Producer: ${product.getProducer().getName()}</h6>--%>
                                <h6>Weight (gr): ${product.weightAmount}</h6>
                                <h6>Size: ${product.weightAmount} x ${product.sizeHeight} x ${product.sizeDepth}
                                    cm</h6>
                            </div>
                        </div>
                    </div>
                    <!-- /tab2  -->
                </div>
                <!-- /product tab content  -->
            </div>
        </div>
        <!-- /product tab -->
    </div>
    <!-- /row -->
</div>
<%--</c:>--%>
<!-- /container -->
<!-- /SECTION -->

<!--san pham goi y-->

<!--San pham goi y-->

<jsp:include page="view/footer.jsp"></jsp:include>

<!-- jQuery Plugins -->
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="js/jquery.zoom.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
<script src="js/slick.min.js"></script>
<script src="js/nouislider.min.js"></script>
<script src="js/main.js"></script>
<script src="js/cartJS.js"></script>
<script>

    $(document).ready(function () {

        $("#description").click(function () {
            $(this).addClass("active")
            $("#details").removeClass("active")
            $("#rating_pro").removeClass("active")
            $("#tab1").show();
            $("#tab2").hide();
            $("#tab3").hide();
        })

        $("#details").click(function () {
            $("#description").removeClass("active")
            $(this).addClass("active")
            $("#rating_pro").removeClass("active")
            $("#tab1").hide();
            $("#tab2").show();
            $("#tab3").hide();
        })

        $("#rating_pro").click(function () {
            $("#description").removeClass("active")
            $("#details").removeClass("active")
            $(this).addClass("active")
            $("#tab1").hide();
            $("#tab2").hide();
            $("#tab3").show();
        })
    })


</script>
</body>

</html>
