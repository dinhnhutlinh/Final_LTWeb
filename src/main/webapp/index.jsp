<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <title>Home</title>

    <!-- Google font -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

    <!-- Bootstrap -->
    <link rel="stylesheet" href="css/bootstrap.css">

    <!-- Slick-->
    <link type="text/css" rel="stylesheet" href="css/slick.css" />
    <link type="text/css" rel="stylesheet" href="css/slick-theme.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.css"
          integrity="sha512-yHknP1/AwR+yx26cB1y0cjvQUMvEa2PFzt1c9LlS4pRQ5NOTZFWbhBig+X9G9eYW/8m0/4OXNx8pxJ6z57x0dw=="
          crossorigin="anonymous" referrerpolicy="no-referrer" />

    <!-- Font Awesome Icon -->
    <link rel="stylesheet" href="css/font-awesome.min.css">

    <!-- Custom stlylesheet -->
    <link type="text/css" rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/footer.css">


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link rel="stylesheet" href="css/display-a-div-item.css">

</head>

<body>
<jsp:include page="layout/header.jsp"></jsp:include>
<!-- /NAVIGATION -->
<div class="container-fluid ps-0 pe-0">
    <!--slide show-->
    <div id="myCarousel" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner " style=" width:100%; height: 600px !important;">
            <div class=" carousel-item active">
                <a href="product.html"><img style=" width:100%; height: 600px !important;"
                                            src="img/slider/8464f02e806c667286ffa47153243965.jpg" class="d-block w-100" alt="...">
                </a>
                <div class="carousel-caption w-100 bg-lg-shadow bottom-0">
                    <h4 class="text-white">Lớp Học Mật Mã</h4>
                </div>
            </div>
            <div class=" carousel-item ">
                <a href="product.html"><img style=" width:100%; height: 600px !important;"
                                            src="img/slider/10-tro-choi-board-game-kinh-dien-cua-tre-em-my-1280x720.jpg"
                                            class="d-block w-100" alt="...">
                </a>
                <div class="carousel-caption w-100 bg-lg-shadow bottom-0">
                    <h4 class="text-white">Top 10 trò chơi broadgame kinh điển</h4>
                </div>
            </div>
            <div class=" carousel-item">
                <a href="product.html"><img style=" width:100%; height: 600px !important;"
                                            src="img/slider/8464f02e806c667286ffa47153243965.jpg" class="d-block w-100" alt="...">
                </a>
                <div class="carousel-caption w-100 bg-lg-shadow bottom-0">
                    <h4 class="text-white">Lớp Học Mật Mã</h4>
                </div>
            </div>
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
        <!--san pham ban chay-->
        <div class="mb-3">
            <div class="d-flex align-items-baseline">
                <h4 class="">Sản phẩm bán chạy</h4>
                <a class="ps-3" href="store.html">Xem tất cả</a>
            </div>
            <div>
                <div class="row filtering  pe-3 ps-3">
                    <div class="item col-md-4 col-xs-6">
                        <div class="product">
                            <div class="product-img zoom">
                                <img src="img/Cờ Tỷ Phú - Sato 039/8936146680399-_1__1.jpg" />
                            </div>
                            <div class="product-body">
                                <h3 class="product-name"><a href="product.html">Cờ Tỷ Phú - Sato 039</a></h3>
                                <h4 class="product-price">140.000VND
                                    <del class="product-old-price">190.000VND</del>
                                </h4>
                                <div class="product-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="add-to-cart">
                                    <button class="d-none d-xl-block add-to-cart-btn w-100">Thêm vào giỏ</button>
                                    <button class="d-xl-none add-to-cart-btn w-100"><i
                                            class="fa fa-shopping-cart m-auto" aria-hidden="true"></i></button>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="item col-md-4 col-xs-6">
                        <div class="product">
                            <div class="product-img zoom">
                                <img
                                        src="img/Boardgame Splendor - Cuộc Chiến Đá Quý - SPACE Cowboys/3558380071068-1.jpg" />
                            </div>
                            <div class="product-body">
                                <h3 class="product-name "><a href="product.html">Boardgame Splendor - Cuộc Chiến Đá
                                    Quý - SPACE Cowboys</a></h3>
                                <h4 class="product-price">250.000VND
                                    <del class="product-old-price">330.000VND</del>
                                </h4>
                                <div class="product-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="add-to-cart">

                                    <button class="d-none d-xl-block add-to-cart-btn w-100">Thêm vào giỏ</button>
                                    <button class="d-xl-none add-to-cart-btn w-100"><i
                                            class="fa fa-shopping-cart m-auto" aria-hidden="true"></i></button>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="item col-md-4 col-xs-6">
                        <div class="product">
                            <div class="product-img zoom">
                                <img
                                        src="img/Boardgame Thám Tử Lừng Danh Conan - Hồi Kết - Kèm Bộ Hồ Sơ 25 Nhân Vật Cực Chất/boardgameconan_1_.jpg" />
                            </div>
                            <div class="product-body">
                                <h3 class="product-name"><a href="product.html">Boardgame Thám Tử Lừng Danh Conan -
                                    Hồi Kết - Kèm Bộ Hồ Sơ 25 Nhân Vật Cực Chất</a></h3>
                                <h4 class="product-price">100.000VND
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

                                    <button class="d-none d-xl-block add-to-cart-btn w-100">Thêm vào giỏ</button>
                                    <button class="d-xl-none add-to-cart-btn w-100"><i
                                            class="fa fa-shopping-cart m-auto" aria-hidden="true"></i></button>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="item col-md-4 col-xs-6">
                        <div class="product">
                            <div class="product-img zoom">
                                <img
                                        src="img/Boardgame Việt Nam Ti Tỉ Từ - trò chơi giúp giỏi Tiếng Việt cho người Việt/0747a50cf8d86dc21ee6a9674b122520.jpg" />
                            </div>
                            <div class="product-body">
                                <h3 class="product-name"><a href="product.html">Boardgame Việt Nam Ti Tỉ Từ - trò
                                    chơi giúp giỏi Tiếng Việt cho người Việt</a></h3>
                                <h4 class="product-price">220.000VND
                                    <del class="product-old-price">280.000VND</del>
                                </h4>
                                <div class="product-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="add-to-cart">

                                    <button class="d-none d-xl-block add-to-cart-btn w-100">Thêm vào giỏ</button>
                                    <button class="d-xl-none add-to-cart-btn w-100"><i
                                            class="fa fa-shopping-cart m-auto" aria-hidden="true"></i></button>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="item col-md-4 col-xs-6">
                        <div class="product">
                            <div class="product-img zoom">
                                <img
                                        src="img/Board-Game-Dungeon-Mayhem-Dragons-mở-rộng-Battle-for-Baldur_s-Gate/00d975a7f27271fe9dc95617b192dc33.jpg" />
                            </div>
                            <div class="product-body">
                                <h3 class="product-name"><a
                                        href="product.html">Board-Game-Dungeon-Mayhem-Dragons-mở-rộng-Battle-for-Baldur_s-Gate</a>
                                </h3>
                                <h4 class="product-price">320.000VND
                                    <del class="product-old-price">350.000VND</del>
                                </h4>
                                <div class="product-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="add-to-cart">

                                    <button class="d-none d-xl-block add-to-cart-btn w-100">Thêm vào giỏ</button>
                                    <button class="d-xl-none add-to-cart-btn w-100"><i
                                            class="fa fa-shopping-cart m-auto" aria-hidden="true"></i></button>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="item col-md-4 col-xs-6">
                        <div class="product">
                            <div class="product-img zoom">
                                <img src="img/Bom Lắc - Trò Chơi Định Mệnh/8936130670160.jpg" />
                            </div>
                            <div class="product-body">
                                <h3 class="product-name"><a href="product.html">Bom Lắc - Trò Chơi Định Mệnh</a>
                                </h3>
                                <h4 class="product-price">240.000VND
                                    <del class="product-old-price">260.000VND</del>
                                </h4>
                                <div class="product-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="add-to-cart">

                                    <button class="d-none d-xl-block add-to-cart-btn w-100">Thêm vào giỏ</button>
                                    <button class="d-xl-none add-to-cart-btn w-100"><i
                                            class="fa fa-shopping-cart m-auto" aria-hidden="true"></i></button>
                                </div>
                            </div>

                        </div>
                    </div>

                </div>
            </div>
        </div>
        <!--San pham ban chay-->
        <!--Đang giảm giá-->
        <div class="mb-3">
            <div class="d-flex align-items-baseline">
                <h4 class="">Sản phẩm đang giảm giá</h4>
                <a class="ps-3" href="store.html">Xem tất cả</a>
            </div>
            <div>
                <div class="row filtering  pe-3 ps-3">
                    <div class="item col-md-4 col-xs-6">
                        <div class="product">
                            <div class="product-img zoom">
                                <img src="img/Bom Lắc - Trò Chơi Định Mệnh/8936130670160.jpg" />
                            </div>
                            <div class="product-body">
                                <h3 class="product-name"><a href="product.html">Bom Lắc - Trò Chơi Định Mệnh</a>
                                </h3>
                                <h4 class="product-price">240.000VND
                                    <del class="product-old-price">260.000VND</del>
                                </h4>
                                <div class="product-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="add-to-cart">

                                    <button class="d-none d-xl-block add-to-cart-btn w-100">Thêm vào giỏ</button>
                                    <button class="d-xl-none add-to-cart-btn w-100"><i
                                            class="fa fa-shopping-cart m-auto" aria-hidden="true"></i></button>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="item col-md-4 col-xs-6">
                        <div class="product">
                            <div class="product-img zoom">
                                <img
                                        src="img/Boardgame Việt Nam Ti Tỉ Từ - trò chơi giúp giỏi Tiếng Việt cho người Việt/0747a50cf8d86dc21ee6a9674b122520.jpg" />
                            </div>
                            <div class="product-body">
                                <h3 class="product-name"><a href="product.html">Boardgame Việt Nam Ti Tỉ Từ - trò
                                    chơi giúp giỏi Tiếng Việt cho người Việt</a></h3>
                                <h4 class="product-price">220.000VND
                                    <del class="product-old-price">280.000VND</del>
                                </h4>
                                <div class="product-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="add-to-cart">

                                    <button class="d-none d-xl-block add-to-cart-btn w-100">Thêm vào giỏ</button>
                                    <button class="d-xl-none add-to-cart-btn w-100"><i
                                            class="fa fa-shopping-cart m-auto" aria-hidden="true"></i></button>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="item col-md-4 col-xs-6">
                        <div class="product">
                            <div class="product-img zoom">
                                <img src="img/Cờ Tỷ Phú - Sato 039/8936146680399-_1__1.jpg" />
                            </div>
                            <div class="product-body">
                                <h3 class="product-name"><a href="product.html">Cờ Tỷ Phú - Sato 039</a></h3>
                                <h4 class="product-price">140.000VND
                                    <del class="product-old-price">190.000VND</del>
                                </h4>
                                <div class="product-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="add-to-cart">
                                    <button class="d-none d-xl-block add-to-cart-btn w-100">Thêm vào giỏ</button>
                                    <button class="d-xl-none add-to-cart-btn w-100"><i
                                            class="fa fa-shopping-cart m-auto" aria-hidden="true"></i></button>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="item col-md-4 col-xs-6">
                        <div class="product">
                            <div class="product-img zoom">
                                <img src="img/Cờ cổ tích/wjr1614571666.jpg" />
                            </div>
                            <div class="product-body">
                                <h3 class="product-name"><a href="product.html">Cờ cổ tích</a></h3>
                                <h4 class="product-price">520.000VND
                                    <del class="product-old-price">550.000VND</del>
                                </h4>
                                <div class="product-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="add-to-cart">

                                    <button class="d-none d-xl-block add-to-cart-btn w-100">Thêm vào giỏ</button>
                                    <button class="d-xl-none add-to-cart-btn w-100"><i
                                            class="fa fa-shopping-cart m-auto" aria-hidden="true"></i></button>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="item col-md-4 col-xs-6">
                        <div class="product">
                            <div class="product-img zoom">
                                <img src="img/Cờ Domino AAA LHT HD3A/image_188853.jpg" />
                            </div>
                            <div class="product-body">
                                <h3 class="product-name"><a href="product.html">Cờ Domino AAA LHT HD3A</a></h3>
                                <h4 class="product-price">220.000VND
                                    <del class="product-old-price">230.000VND</del>
                                </h4>
                                <div class="product-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="add-to-cart">

                                    <button class="d-none d-xl-block add-to-cart-btn w-100">Thêm vào giỏ</button>
                                    <button class="d-xl-none add-to-cart-btn w-100"><i
                                            class="fa fa-shopping-cart m-auto" aria-hidden="true"></i></button>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="item col-md-4 col-xs-6">
                        <div class="product">
                            <div class="product-img zoom">
                                <img
                                        src="img/Boardgame Việt Nam Ti Tỉ Từ - trò chơi giúp giỏi Tiếng Việt cho người Việt/0747a50cf8d86dc21ee6a9674b122520.jpg" />
                            </div>
                            <div class="product-body">
                                <h3 class="product-name"><a href="product.html">Boardgame Việt Nam Ti Tỉ Từ - trò
                                    chơi giúp giỏi Tiếng Việt cho người Việt</a></h3>
                                <h4 class="product-price">220.000VND
                                    <del class="product-old-price">280.000VND</del>
                                </h4>
                                <div class="product-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="add-to-cart">

                                    <button class="d-none d-xl-block add-to-cart-btn w-100">Thêm vào giỏ</button>
                                    <button class="d-xl-none add-to-cart-btn w-100"><i
                                            class="fa fa-shopping-cart m-auto" aria-hidden="true"></i></button>
                                </div>
                            </div>

                        </div>
                    </div>

                </div>
            </div>
        </div>
        <!--Đang giảm giá-->
        <!--BroadGame chiến thuật-->
        <div class="mb-3">
            <div class="d-flex align-items-baseline">
                <h4 class="">BroadGame Chiến thuật</h4>
                <a class="ps-3" href="store.html">Xem tất cả</a>
            </div>
            <div>
                <div class="row filtering  pe-3 ps-3">
                    <div class="item col-md-4 col-xs-6">
                        <div class="product">
                            <div class="product-img zoom">
                                <img
                                        src="img/Cờ Tướng Gỗ KINGDOM TOYS - 0111/co_tuong_go_0111_2_2020_07_29_14_38_45.jpg" />
                            </div>
                            <div class="product-body">
                                <h3 class="product-name"><a href="product.html">Cờ Tướng Gỗ KINGDOM TOYS - 0111</a>
                                </h3>
                                <h4 class="product-price">220.000VND
                                    <del class="product-old-price">280.000VND</del>
                                </h4>
                                <div class="product-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="add-to-cart">

                                    <button class="d-none d-xl-block add-to-cart-btn w-100">Thêm vào giỏ</button>
                                    <button class="d-xl-none add-to-cart-btn w-100"><i
                                            class="fa fa-shopping-cart m-auto" aria-hidden="true"></i></button>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="item col-md-4 col-xs-6">
                        <div class="product">
                            <div class="product-img zoom">
                                <img src="img/Cờ trí tuệ U_K.N.O.W phiên bản Star Wars/image_188801 (1).jpg" />
                            </div>
                            <div class="product-body">
                                <h3 class="product-name"><a href="product.html">Cờ trí tuệ U_K.N.O.W phiên bản Star
                                    Wars</a></h3>
                                <h4 class="product-price">320.000VND
                                    <del class="product-old-price">340.000VND</del>
                                </h4>
                                <div class="product-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="add-to-cart">

                                    <button class="d-none d-xl-block add-to-cart-btn w-100">Thêm vào giỏ</button>
                                    <button class="d-xl-none add-to-cart-btn w-100"><i
                                            class="fa fa-shopping-cart m-auto" aria-hidden="true"></i></button>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="item col-md-4 col-xs-6">
                        <div class="product">
                            <div class="product-img zoom">
                                <img src="img/Cờ Tỷ Phú - Sato 039/image_244718_1_1762.jpg" />
                            </div>
                            <div class="product-body">
                                <h3 class="product-name"><a href="product.html">Cờ Tỷ Phú - Sato 039</a></h3>
                                <h4 class="product-price">120.000VND
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

                                    <button class="d-none d-xl-block add-to-cart-btn w-100">Thêm vào giỏ</button>
                                    <button class="d-xl-none add-to-cart-btn w-100"><i
                                            class="fa fa-shopping-cart m-auto" aria-hidden="true"></i></button>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="item col-md-4 col-xs-6">
                        <div class="product">
                            <div class="product-img zoom">
                                <img src="img/Cờ Tỷ Phú - Sato 039/8936146680399-_1__1.jpg" />
                            </div>
                            <div class="product-body">
                                <h3 class="product-name"><a href="product.html">Cờ Tỷ Phú - Sato 039</a></h3>
                                <h4 class="product-price">140.000VND
                                    <del class="product-old-price">190.000VND</del>
                                </h4>
                                <div class="product-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="add-to-cart">
                                    <button class="d-none d-xl-block add-to-cart-btn w-100">Thêm vào giỏ</button>
                                    <button class="d-xl-none add-to-cart-btn w-100"><i
                                            class="fa fa-shopping-cart m-auto" aria-hidden="true"></i></button>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="item col-md-4 col-xs-6">
                        <div class="product">
                            <div class="product-img zoom">
                                <img src="img/Cờ cổ tích/wjr1614571666.jpg" />
                            </div>
                            <div class="product-body">
                                <h3 class="product-name"><a href="product.html">Cờ cổ tích</a></h3>
                                <h4 class="product-price">520.000VND
                                    <del class="product-old-price">550.000VND</del>
                                </h4>
                                <div class="product-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="add-to-cart">

                                    <button class="d-none d-xl-block add-to-cart-btn w-100">Thêm vào giỏ</button>
                                    <button class="d-xl-none add-to-cart-btn w-100"><i
                                            class="fa fa-shopping-cart m-auto" aria-hidden="true"></i></button>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="item col-md-4 col-xs-6">
                        <div class="product">
                            <div class="product-img zoom">
                                <img src="img/Cờ Tỷ Phú - Sato 039/8936146680399-_1__1.jpg" />
                            </div>
                            <div class="product-body">
                                <h3 class="product-name"><a href="product.html">Cờ Tỷ Phú - Sato 039</a></h3>
                                <h4 class="product-price">140.000VND
                                    <del class="product-old-price">190.000VND</del>
                                </h4>
                                <div class="product-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="add-to-cart">
                                    <button class="d-none d-xl-block add-to-cart-btn w-100">Thêm vào giỏ</button>
                                    <button class="d-xl-none add-to-cart-btn w-100"><i
                                            class="fa fa-shopping-cart m-auto" aria-hidden="true"></i></button>
                                </div>
                            </div>

                        </div>
                    </div>

                </div>
            </div>
        </div>
        <!--BroadGame chiến thuật-->
        <!--BroadGame Party-->
        <div class="mb-3">
            <div class="d-flex align-items-baseline">
                <h4>BroadGame Party</h4>
                <a class="ps-3" href="store.html">Xem tất cả</a>
            </div>
            <div>
                <div class="row filtering  pe-3 ps-3">
                    <div class="item col-md-4 col-xs-6">
                        <div class="product">
                            <div class="product-img zoom">
                                <img src="img/Cờ cổ tích/wjr1614571666.jpg" />
                            </div>
                            <div class="product-body">
                                <h3 class="product-name"><a href="product.html">Cờ cổ tích</a></h3>
                                <h4 class="product-price">520.000VND
                                    <del class="product-old-price">550.000VND</del>
                                </h4>
                                <div class="product-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="add-to-cart">

                                    <button class="d-none d-xl-block add-to-cart-btn w-100">Thêm vào giỏ</button>
                                    <button class="d-xl-none add-to-cart-btn w-100"><i
                                            class="fa fa-shopping-cart m-auto" aria-hidden="true"></i></button>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="item col-md-4 col-xs-6">
                        <div class="product">
                            <div class="product-img zoom">
                                <img
                                        src="img/Boardgame Việt Nam Ti Tỉ Từ - trò chơi giúp giỏi Tiếng Việt cho người Việt/0747a50cf8d86dc21ee6a9674b122520.jpg" />
                            </div>
                            <div class="product-body">
                                <h3 class="product-name"><a href="product.html">Boardgame Việt Nam Ti Tỉ Từ - trò
                                    chơi giúp giỏi Tiếng Việt cho người Việt</a></h3>
                                <h4 class="product-price">220.000VND
                                    <del class="product-old-price">280.000VND</del>
                                </h4>
                                <div class="product-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="add-to-cart">

                                    <button class="d-none d-xl-block add-to-cart-btn w-100">Thêm vào giỏ</button>
                                    <button class="d-xl-none add-to-cart-btn w-100"><i
                                            class="fa fa-shopping-cart m-auto" aria-hidden="true"></i></button>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="item col-md-4 col-xs-6">
                        <div class="product">
                            <div class="product-img zoom">
                                <img src="img/Cờ Domino AAA LHT HD3A/image_188853.jpg" />
                            </div>
                            <div class="product-body">
                                <h3 class="product-name"><a href="product.html">Cờ Domino AAA LHT HD3A</a></h3>
                                <h4 class="product-price">220.000VND
                                    <del class="product-old-price">230.000VND</del>
                                </h4>
                                <div class="product-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="add-to-cart">

                                    <button class="d-none d-xl-block add-to-cart-btn w-100">Thêm vào giỏ</button>
                                    <button class="d-xl-none add-to-cart-btn w-100"><i
                                            class="fa fa-shopping-cart m-auto" aria-hidden="true"></i></button>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="item col-md-4 col-xs-6">
                        <div class="product">
                            <div class="product-img zoom">
                                <img src="img/Cờ Tỷ Phú - Sato 039/8936146680399-_1__1.jpg" />
                            </div>
                            <div class="product-body">
                                <h3 class="product-name"><a href="product.html">Cờ Tỷ Phú - Sato 039</a></h3>
                                <h4 class="product-price">140.000VND
                                    <del class="product-old-price">190.000VND</del>
                                </h4>
                                <div class="product-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="add-to-cart">
                                    <button class="d-none d-xl-block add-to-cart-btn w-100">Thêm vào giỏ</button>
                                    <button class="d-xl-none add-to-cart-btn w-100"><i
                                            class="fa fa-shopping-cart m-auto" aria-hidden="true"></i></button>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="item col-md-4 col-xs-6">
                        <div class="product">
                            <div class="product-img zoom">
                                <img
                                        src="img/Boardgame Splendor - Cuộc Chiến Đá Quý - SPACE Cowboys/3558380071068-1.jpg" />
                            </div>
                            <div class="product-body">
                                <h3 class="product-name "><a href="product.html">Boardgame Splendor - Cuộc Chiến Đá
                                    Quý - SPACE Cowboys</a></h3>
                                <h4 class="product-price">250.000VND
                                    <del class="product-old-price">330.000VND</del>
                                </h4>
                                <div class="product-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="add-to-cart">

                                    <button class="d-none d-xl-block add-to-cart-btn w-100">Thêm vào giỏ</button>
                                    <button class="d-xl-none add-to-cart-btn w-100"><i
                                            class="fa fa-shopping-cart m-auto" aria-hidden="true"></i></button>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="item col-md-4 col-xs-6">
                        <div class="product">
                            <div class="product-img zoom">
                                <img src="img/Cờ Tỷ Phú - Sato 039/8936146680399-_1__1.jpg" />
                            </div>
                            <div class="product-body">
                                <h3 class="product-name"><a href="product.html">Cờ Tỷ Phú - Sato 039</a></h3>
                                <h4 class="product-price">140.000VND
                                    <del class="product-old-price">190.000VND</del>
                                </h4>
                                <div class="product-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="add-to-cart">
                                    <button class="d-none d-xl-block add-to-cart-btn w-100">Thêm vào giỏ</button>
                                    <button class="d-xl-none add-to-cart-btn w-100"><i
                                            class="fa fa-shopping-cart m-auto" aria-hidden="true"></i></button>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--BroadGame Party-->
        <!--Đang Gia Đình-->
        <div class="mb-3">
            <div class="d-flex align-items-baseline">
                <h4 class="">Đồ chơi nhóm</h4>
                <a class="ps-3" href="store.html">Xem tất cả</a>
            </div>
            <div>
                <div class="row filtering  pe-3 ps-3">
                    <div class="item col-md-4 col-xs-6">
                        <div class="product">
                            <div class="product-img zoom">
                                <img src="img/Bom Lắc - Trò Chơi Định Mệnh/8936130670160.jpg" />
                            </div>
                            <div class="product-body">
                                <h3 class="product-name"><a href="product.html">Bom Lắc - Trò Chơi Định Mệnh</a>
                                </h3>
                                <h4 class="product-price">240.000VND
                                    <del class="product-old-price">260.000VND</del>
                                </h4>
                                <div class="product-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="add-to-cart">

                                    <button class="d-none d-xl-block add-to-cart-btn w-100">Thêm vào giỏ</button>
                                    <button class="d-xl-none add-to-cart-btn w-100"><i
                                            class="fa fa-shopping-cart m-auto" aria-hidden="true"></i></button>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="item col-md-4 col-xs-6">
                        <div class="product">
                            <div class="product-img zoom">
                                <img
                                        src="img/Boardgame Việt Nam Ti Tỉ Từ - trò chơi giúp giỏi Tiếng Việt cho người Việt/0747a50cf8d86dc21ee6a9674b122520.jpg" />
                            </div>
                            <div class="product-body">
                                <h3 class="product-name"><a href="product.html">Boardgame Việt Nam Ti Tỉ Từ - trò
                                    chơi giúp giỏi Tiếng Việt cho người Việt</a></h3>
                                <h4 class="product-price">220.000VND
                                    <del class="product-old-price">280.000VND</del>
                                </h4>
                                <div class="product-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="add-to-cart">

                                    <button class="d-none d-xl-block add-to-cart-btn w-100">Thêm vào giỏ</button>
                                    <button class="d-xl-none add-to-cart-btn w-100"><i
                                            class="fa fa-shopping-cart m-auto" aria-hidden="true"></i></button>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="item col-md-4 col-xs-6">
                        <div class="product">
                            <div class="product-img zoom">
                                <img src="img/Cờ Tỷ Phú - Sato 039/8936146680399-_1__1.jpg" />
                            </div>
                            <div class="product-body">
                                <h3 class="product-name"><a href="product.html">Cờ Tỷ Phú - Sato 039</a></h3>
                                <h4 class="product-price">140.000VND
                                    <del class="product-old-price">190.000VND</del>
                                </h4>
                                <div class="product-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="add-to-cart">
                                    <button class="d-none d-xl-block add-to-cart-btn w-100">Thêm vào giỏ</button>
                                    <button class="d-xl-none add-to-cart-btn w-100"><i
                                            class="fa fa-shopping-cart m-auto" aria-hidden="true"></i></button>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="item col-md-4 col-xs-6">
                        <div class="product">
                            <div class="product-img zoom">
                                <img src="img/Cờ cổ tích/wjr1614571666.jpg" />
                            </div>
                            <div class="product-body">
                                <h3 class="product-name"><a href="product.html">Cờ cổ tích</a></h3>
                                <h4 class="product-price">520.000VND
                                    <del class="product-old-price">550.000VND</del>
                                </h4>
                                <div class="product-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="add-to-cart">

                                    <button class="d-none d-xl-block add-to-cart-btn w-100">Thêm vào giỏ</button>
                                    <button class="d-xl-none add-to-cart-btn w-100"><i
                                            class="fa fa-shopping-cart m-auto" aria-hidden="true"></i></button>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="item col-md-4 col-xs-6">
                        <div class="product">
                            <div class="product-img zoom">
                                <img src="img/Cờ Domino AAA LHT HD3A/image_188853.jpg" />
                            </div>
                            <div class="product-body">
                                <h3 class="product-name"><a href="product.html">Cờ Domino AAA LHT HD3A</a></h3>
                                <h4 class="product-price">220.000VND
                                    <del class="product-old-price">230.000VND</del>
                                </h4>
                                <div class="product-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="add-to-cart">

                                    <button class="d-none d-xl-block add-to-cart-btn w-100">Thêm vào giỏ</button>
                                    <button class="d-xl-none add-to-cart-btn w-100"><i
                                            class="fa fa-shopping-cart m-auto" aria-hidden="true"></i></button>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="item col-md-4 col-xs-6">
                        <div class="product">
                            <div class="product-img zoom">
                                <img
                                        src="img/Boardgame Việt Nam Ti Tỉ Từ - trò chơi giúp giỏi Tiếng Việt cho người Việt/0747a50cf8d86dc21ee6a9674b122520.jpg" />
                            </div>
                            <div class="product-body">
                                <h3 class="product-name"><a href="product.html">Boardgame Việt Nam Ti Tỉ Từ - trò
                                    chơi giúp giỏi Tiếng Việt cho người Việt</a></h3>
                                <h4 class="product-price">220.000VND
                                    <del class="product-old-price">280.000VND</del>
                                </h4>
                                <div class="product-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="add-to-cart">

                                    <button class="d-none d-xl-block add-to-cart-btn w-100">Thêm vào giỏ</button>
                                    <button class="d-xl-none add-to-cart-btn w-100"><i
                                            class="fa fa-shopping-cart m-auto" aria-hidden="true"></i></button>
                                </div>
                            </div>

                        </div>
                    </div>

                </div>
            </div>
        </div>
        <!--Đang Gia đình-->
        <!--BroadGame Thẻ bài-->
        <div class="mb-3">
            <div class="d-flex align-items-baseline">
                <h4 class="">BroadGame Thẻ Bài</h4>
                <a class="ps-3" href="store.html">Xem tất cả</a>
            </div>
            <div>
                <div class="row filtering  pe-3 ps-3">
                    <div class="item col-md-4 col-xs-6">
                        <div class="product">
                            <div class="product-img zoom">
                                <img
                                        src="img/Cờ Tướng Gỗ KINGDOM TOYS - 0111/co_tuong_go_0111_2_2020_07_29_14_38_45.jpg" />
                            </div>
                            <div class="product-body">
                                <h3 class="product-name"><a href="product.html">Cờ Tướng Gỗ KINGDOM TOYS - 0111</a>
                                </h3>
                                <h4 class="product-price">220.000VND
                                    <del class="product-old-price">280.000VND</del>
                                </h4>
                                <div class="product-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="add-to-cart">

                                    <button class="d-none d-xl-block add-to-cart-btn w-100">Thêm vào giỏ</button>
                                    <button class="d-xl-none add-to-cart-btn w-100"><i
                                            class="fa fa-shopping-cart m-auto" aria-hidden="true"></i></button>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="item col-md-4 col-xs-6">
                        <div class="product">
                            <div class="product-img zoom">
                                <img src="img/Cờ trí tuệ U_K.N.O.W phiên bản Star Wars/image_188801 (1).jpg" />
                            </div>
                            <div class="product-body">
                                <h3 class="product-name"><a href="product.html">Cờ trí tuệ U_K.N.O.W phiên bản Star
                                    Wars</a></h3>
                                <h4 class="product-price">320.000VND
                                    <del class="product-old-price">340.000VND</del>
                                </h4>
                                <div class="product-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="add-to-cart">

                                    <button class="d-none d-xl-block add-to-cart-btn w-100">Thêm vào giỏ</button>
                                    <button class="d-xl-none add-to-cart-btn w-100"><i
                                            class="fa fa-shopping-cart m-auto" aria-hidden="true"></i></button>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="item col-md-4 col-xs-6">
                        <div class="product">
                            <div class="product-img zoom">
                                <img src="img/Cờ Tỷ Phú - Sato 039/image_244718_1_1762.jpg" />
                            </div>
                            <div class="product-body">
                                <h3 class="product-name"><a href="product.html">Cờ Tỷ Phú - Sato 039</a></h3>
                                <h4 class="product-price">120.000VND
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

                                    <button class="d-none d-xl-block add-to-cart-btn w-100">Thêm vào giỏ</button>
                                    <button class="d-xl-none add-to-cart-btn w-100"><i
                                            class="fa fa-shopping-cart m-auto" aria-hidden="true"></i></button>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="item col-md-4 col-xs-6">
                        <div class="product">
                            <div class="product-img zoom">
                                <img src="img/Cờ Tỷ Phú - Sato 039/8936146680399-_1__1.jpg" />
                            </div>
                            <div class="product-body">
                                <h3 class="product-name"><a href="product.html">Cờ Tỷ Phú - Sato 039</a></h3>
                                <h4 class="product-price">140.000VND
                                    <del class="product-old-price">190.000VND</del>
                                </h4>
                                <div class="product-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="add-to-cart">
                                    <button class="d-none d-xl-block add-to-cart-btn w-100">Thêm vào giỏ</button>
                                    <button class="d-xl-none add-to-cart-btn w-100"><i
                                            class="fa fa-shopping-cart m-auto" aria-hidden="true"></i></button>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="item col-md-4 col-xs-6">
                        <div class="product">
                            <div class="product-img zoom">
                                <img src="img/Cờ cổ tích/wjr1614571666.jpg" />
                            </div>
                            <div class="product-body">
                                <h3 class="product-name"><a href="product.html">Cờ cổ tích</a></h3>
                                <h4 class="product-price">520.000VND
                                    <del class="product-old-price">550.000VND</del>
                                </h4>
                                <div class="product-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="add-to-cart">

                                    <button class="d-none d-xl-block add-to-cart-btn w-100">Thêm vào giỏ</button>
                                    <button class="d-xl-none add-to-cart-btn w-100"><i
                                            class="fa fa-shopping-cart m-auto" aria-hidden="true"></i></button>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="item col-md-4 col-xs-6">
                        <div class="product">
                            <div class="product-img zoom">
                                <img src="img/Cờ Tỷ Phú - Sato 039/8936146680399-_1__1.jpg" />
                            </div>
                            <div class="product-body">
                                <h3 class="product-name"><a href="product.html">Cờ Tỷ Phú - Sato 039</a></h3>
                                <h4 class="product-price">140.000VND
                                    <del class="product-old-price">190.000VND</del>
                                </h4>
                                <div class="product-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="add-to-cart">
                                    <button class="d-none d-xl-block add-to-cart-btn w-100">Thêm vào giỏ</button>
                                    <button class="d-xl-none add-to-cart-btn w-100"><i
                                            class="fa fa-shopping-cart m-auto" aria-hidden="true"></i></button>
                                </div>
                            </div>

                        </div>
                    </div>

                </div>
            </div>
        </div>
        <!--BroadGame chiến thuật-->
        <!--Đang Gia Đình-->
        <div class="mb-3">
            <div class="d-flex align-items-baseline">
                <h4 class="">BroadGame Gia đình</h4>
                <a class="ps-3" href="store.html">Xem tất cả</a>
            </div>
            <div>
                <div class="row filtering  pe-3 ps-3">
                    <div class="item col-md-4 col-xs-6">
                        <div class="product">
                            <div class="product-img zoom">
                                <img src="img/Bom Lắc - Trò Chơi Định Mệnh/8936130670160.jpg" />
                            </div>
                            <div class="product-body">
                                <h3 class="product-name"><a href="product.html">Bom Lắc - Trò Chơi Định Mệnh</a>
                                </h3>
                                <h4 class="product-price">240.000VND
                                    <del class="product-old-price">260.000VND</del>
                                </h4>
                                <div class="product-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="add-to-cart">

                                    <button class="d-none d-xl-block add-to-cart-btn w-100">Thêm vào giỏ</button>
                                    <button class="d-xl-none add-to-cart-btn w-100"><i
                                            class="fa fa-shopping-cart m-auto" aria-hidden="true"></i></button>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="item col-md-4 col-xs-6">
                        <div class="product">
                            <div class="product-img zoom">
                                <img
                                        src="img/Boardgame Việt Nam Ti Tỉ Từ - trò chơi giúp giỏi Tiếng Việt cho người Việt/0747a50cf8d86dc21ee6a9674b122520.jpg" />
                            </div>
                            <div class="product-body">
                                <h3 class="product-name"><a href="product.html">Boardgame Việt Nam Ti Tỉ Từ - trò
                                    chơi giúp giỏi Tiếng Việt cho người Việt</a></h3>
                                <h4 class="product-price">220.000VND
                                    <del class="product-old-price">280.000VND</del>
                                </h4>
                                <div class="product-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="add-to-cart">

                                    <button class="d-none d-xl-block add-to-cart-btn w-100">Thêm vào giỏ</button>
                                    <button class="d-xl-none add-to-cart-btn w-100"><i
                                            class="fa fa-shopping-cart m-auto" aria-hidden="true"></i></button>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="item col-md-4 col-xs-6">
                        <div class="product">
                            <div class="product-img zoom">
                                <img src="img/Cờ Tỷ Phú - Sato 039/8936146680399-_1__1.jpg" />
                            </div>
                            <div class="product-body">
                                <h3 class="product-name"><a href="product.html">Cờ Tỷ Phú - Sato 039</a></h3>
                                <h4 class="product-price">140.000VND
                                    <del class="product-old-price">190.000VND</del>
                                </h4>
                                <div class="product-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="add-to-cart">
                                    <button class="d-none d-xl-block add-to-cart-btn w-100">Thêm vào giỏ</button>
                                    <button class="d-xl-none add-to-cart-btn w-100"><i
                                            class="fa fa-shopping-cart m-auto" aria-hidden="true"></i></button>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="item col-md-4 col-xs-6">
                        <div class="product">
                            <div class="product-img zoom">
                                <img src="img/Cờ cổ tích/wjr1614571666.jpg" />
                            </div>
                            <div class="product-body">
                                <h3 class="product-name"><a href="product.html">Cờ cổ tích</a></h3>
                                <h4 class="product-price">520.000VND
                                    <del class="product-old-price">550.000VND</del>
                                </h4>
                                <div class="product-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="add-to-cart">

                                    <button class="d-none d-xl-block add-to-cart-btn w-100">Thêm vào giỏ</button>
                                    <button class="d-xl-none add-to-cart-btn w-100"><i
                                            class="fa fa-shopping-cart m-auto" aria-hidden="true"></i></button>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="item col-md-4 col-xs-6">
                        <div class="product">
                            <div class="product-img zoom">
                                <img src="img/Cờ Domino AAA LHT HD3A/image_188853.jpg" />
                            </div>
                            <div class="product-body">
                                <h3 class="product-name"><a href="product.html">Cờ Domino AAA LHT HD3A</a></h3>
                                <h4 class="product-price">220.000VND
                                    <del class="product-old-price">230.000VND</del>
                                </h4>
                                <div class="product-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="add-to-cart">

                                    <button class="d-none d-xl-block add-to-cart-btn w-100">Thêm vào giỏ</button>
                                    <button class="d-xl-none add-to-cart-btn w-100"><i
                                            class="fa fa-shopping-cart m-auto" aria-hidden="true"></i></button>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="item col-md-4 col-xs-6">
                        <div class="product">
                            <div class="product-img zoom">
                                <img
                                        src="img/Boardgame Việt Nam Ti Tỉ Từ - trò chơi giúp giỏi Tiếng Việt cho người Việt/0747a50cf8d86dc21ee6a9674b122520.jpg" />
                            </div>
                            <div class="product-body">
                                <h3 class="product-name"><a href="product.html">Boardgame Việt Nam Ti Tỉ Từ - trò
                                    chơi giúp giỏi Tiếng Việt cho người Việt</a></h3>
                                <h4 class="product-price">220.000VND
                                    <del class="product-old-price">280.000VND</del>
                                </h4>
                                <div class="product-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="add-to-cart">

                                    <button class="d-none d-xl-block add-to-cart-btn w-100">Thêm vào giỏ</button>
                                    <button class="d-xl-none add-to-cart-btn w-100"><i
                                            class="fa fa-shopping-cart m-auto" aria-hidden="true"></i></button>
                                </div>
                            </div>

                        </div>
                    </div>

                </div>
            </div>
        </div>
        <!--Đang Gia đình-->
    </div>

    <!-- /SECTION -->
</div>
<jsp:include page="layout/footer.jsp"></jsp:include>

<!-- jQuery Plugins -->
<script src="js/bootstrap.bundle.js"></script>
<script src="js/slick.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="js/jquery.zoom.min.js"></script>
<script src="js/main.js"></script>


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