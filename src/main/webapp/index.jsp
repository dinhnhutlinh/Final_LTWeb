<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <title>Home</title>

    <!-- Google font -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <!-- Slick-->
    <link type="text/css" rel="stylesheet" href="css/slick.css"/>
    <link type="text/css" rel="stylesheet" href="css/slick-theme.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.css"
          integrity="sha512-yHknP1/AwR+yx26cB1y0cjvQUMvEa2PFzt1c9LlS4pRQ5NOTZFWbhBig+X9G9eYW/8m0/4OXNx8pxJ6z57x0dw=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>

    <!-- Font Awesome Icon -->
    <link rel="stylesheet" href="css/font-awesome.min.css">

    <!-- Custom stlylesheet -->
    <link type="text/css" rel="stylesheet" href="css/style.css"/>
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/footer.css">


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link rel="stylesheet" href="css/display-a-div-item.css">

</head>

<body>
<jsp:include page="view/header.jsp"></jsp:include>
<!-- /NAVIGATION -->
<div class="container-fluid ps-0 pe-0">
    <!--slide show-->
    <div id="myCarousel" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner " style=" height: 600px !important;">
            <c:forEach var="slider" items="${sliders}">
                <div class=" carousel-item <c:if test="${slider.getId()==sliders.get(0).getId()}">active</c:if>">
                    <a href="${slider.getLink()}">
                        <img style=" width: 100%;  height: 600px    ; object-fit: cover;"
                             src="${slider.image}" class="d-block w-100"
                             alt="...">
                    </a>
                    <div class="carousel-caption w-100 bg-lg-shadow bottom-0">
                        <h4 class="text-white">${slider.getName()}</h4>
                    </div>
                </div>
            </c:forEach>
        </div>
        <button class="carousel-control-prev" style="width: 10%;" type="button" data-bs-target="#myCarousel"
                data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" style="width: 10%;" type="button" data-bs-target="#myCarousel"
                data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
    <!--/slide show-->
</div>
<!-- SECTION -->
<div class="section">
    <!-- container -->
    <div class="container">
        <c:forEach var="item" items="${map}">
            <div class="mb-3">
                <div class="d-flex align-items-baseline">
                    <h4>${item.getKey()}</h4>
                    <a class="ps-3" href="/Store?name=${item.getKey()}">View all</a>
                </div>
                <div>
                    <div class="row filtering  pe-3 ps-3">
                        <c:forEach var="p" items="${item.getValue()}">
                            <div class="item col-md-4 col-xs-6">
                                <div class="product">
                                    <div class="product-img zoom d-flex justify-content-center">
                                        <img src="${p.imgDisplay}" style="width: 200px; height: 250px"/>
                                    </div>
                                    <div class="product-body">
                                        <h3 class="product-name"><a href="product?id=${p.id}">${p.name}</a>
                                        </h3>
                                        <h4 class="product-price">${p.getPrice()}
                                            <del class="product-old-price">${p.getPrice()}</del>
                                        </h4>
                                        <div class="product-rating">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </div>
                                        <div class="add-to-cart">

                                            <button class="d-none d-xl-block add-to-cart-btn w-100" data-id="${p.id}">
                                                Add to card
                                            </button>
                                            <button class="d-xl-none add-to-cart-btn w-100"><i
                                                    class="fa fa-shopping-cart m-auto" aria-hidden="true"></i></button>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </c:forEach>

                    </div>
                </div>
            </div>
        </c:forEach>
    </div>

</div>
<jsp:include page="view/footer.jsp"></jsp:include>

<!-- jQuery Plugins -->
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="js/jquery.zoom.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
<script src="js/slick.min.js"></script>
<script src="js/main.js"></script>
<script src="js/cartJS.js"></script>


<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.js"
        integrity="sha512-HGOnQO9+SP1V92SrtZfjqxxtLmVzqZpjFFekvzZVWoiASSQgSr4cw9Kqd2+l8Llp4Gm0G8GIFJ4ddwZilcdb8A=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script>
    $(document).ready(function () {
        var myCarousel = document.querySelector('#myCarousel');
        var carousel = new bootstrap.Carousel(myCarousel, {
            // interval: 2000,
            // swap: false
        });
        $('.filtering').slick({
            slidesToShow: 5,
            slidesToScroll: 1
        });
        var filtered = false;

        $('.js-filter').on('click', function () {
            if (filtered === false) {
                $('.filtering').slick('slickFilter', ':even');
                $(this).text('Unfilter Slides');
                filtered = true;
            } else {
                $('.filtering').slick('slickUnfilter');
                $(this).text('Filter Slides');
                filtered = false;
            }
        });
    });
</script>
</body>

</html>