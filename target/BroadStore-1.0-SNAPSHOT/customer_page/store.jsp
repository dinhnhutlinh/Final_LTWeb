<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 04/01/2022
  Time: 22:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <link rel="stylesheet" href="css/bootstrap.css">

    <!-- Slick -->
    <link type="text/css" rel="stylesheet" href="css/slick.css" />
    <link type="text/css" rel="stylesheet" href="css/slick-theme.css" />

    <!-- Font Awesome Icon -->
    <link rel="stylesheet" href="css/font-awesome.min.css">

    <!-- Custom stlylesheet -->
    <link type="text/css" rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/footer.css">

</head>

<body>
<jsp:include page="layout/header.jsp"></jsp:include>
<!-- BREADCRUMB -->
<div id="breadcrumb" class="section">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <ul class="breadcrumb-tree">
                    <li><a href="index.html">Trang chủ</a></li>
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
                                <h5><a href="#">Tất cả BroadGame</a></h5>
                            </div>
                            <div class="p-2">
                                <h5><a href="#">BroadGame khuyến mãi</a></h5>
                            </div>
                            <div class="p-2">
                                <h5><a href="#">BroadGame Chiến thuật</a></h5>
                            </div>
                            <div class="p-2">
                                <h5><a href="#">BroadGame Party</a></h5>
                            </div>
                            <div class="p-2">
                                <h5><a href="#">BroadGame Gia đình</a></h5>
                            </div>
                            <div class="p-2">
                                <h5><a href="#">BroadGame thẻ bài</a></h5>
                            </div>
                            <div class="p-2">
                                <h5><a href="#">Đồ chơi nhóm</a></h5>
                            </div>
                            <div class="p-2">
                                <h5><a href="#">Phụ kiện BroadGame</a></h5>
                            </div>
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
                                <h5 id="quantily-product">Tìm được 12 sản phẩm</h5>
                            </div>
                            <div class="col-6 text-end">
                                <div class="store-sort">
                                    <div class="row align-items-baseline">
                                        <div class="col-6"><label class="form-label">
                                            Sắp sếp theo:</label></div>
                                        <div class="col-6"><select class="form-select">
                                            <option value="popular">Được mua nhiều</option>
                                            <option value="price">Giá từ thấp đển cao</option>
                                            <option value="-price">Giá cao thấp đển thap</option>
                                            <option value="news">Sản phẩm mới</option>
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
                        <div class="item col-md-4 col-xs-6">
                            <div class="product">
                                <div class="product-img zoom">
                                    <img src="img/Cờ%20Tỷ%20Phú%20-%20Sato%20039/8936146680399-_1__1.jpg" />
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
                                        <button class="d-none d-xl-block add-to-cart-btn w-100">Thêm vào
                                            giỏ</button>
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
                                            src="img/Boardgame%20Splendor%20-%20Cuộc%20Chiến%20Đá%20Quý%20-%20SPACE%20Cowboys/3558380071068-1.jpg" />
                                </div>
                                <div class="product-body">
                                    <h3 class="product-name "><a href="product.html">Boardgame Splendor - Cuộc Chiến
                                        Đá Quý - SPACE Cowboys</a></h3>
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

                                        <button class="d-none d-xl-block add-to-cart-btn w-100">Thêm vào
                                            giỏ</button>
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
                                            src="img/Boardgame%20Thám%20Tử%20Lừng%20Danh%20Conan%20-%20Hồi%20Kết%20-%20Kèm%20Bộ%20Hồ%20Sơ%2025%20Nhân%20Vật%20Cực%20Chất/boardgameconan_1_.jpg" />
                                </div>
                                <div class="product-body">
                                    <h3 class="product-name"><a href="product.html">Boardgame Thám Tử Lừng Danh
                                        Conan - Hồi Kết - Kèm Bộ Hồ Sơ 25 Nhân Vật Cực Chất</a></h3>
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

                                        <button class="d-none d-xl-block add-to-cart-btn w-100">Thêm vào
                                            giỏ</button>
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
                                            src="img/Boardgame%20Việt%20Nam%20Ti%20Tỉ%20Từ%20-%20trò%20chơi%20giúp%20giỏi%20Tiếng%20Việt%20cho%20người%20Việt/0747a50cf8d86dc21ee6a9674b122520.jpg" />
                                </div>
                                <div class="product-body">
                                    <h3 class="product-name"><a href="product.html">Boardgame Việt Nam Ti Tỉ Từ -
                                        trò chơi giúp giỏi Tiếng Việt cho người Việt</a></h3>
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

                                        <button class="d-none d-xl-block add-to-cart-btn w-100">Thêm vào
                                            giỏ</button>
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

                                        <button class="d-none d-xl-block add-to-cart-btn w-100">Thêm vào
                                            giỏ</button>
                                        <button class="d-xl-none add-to-cart-btn w-100"><i
                                                class="fa fa-shopping-cart m-auto" aria-hidden="true"></i></button>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="item col-md-4 col-xs-6">
                            <div class="product">
                                <div class="product-img zoom">
                                    <img src="img/Bom%20Lắc%20-%20Trò%20Chơi%20Định%20Mệnh/8936130670160.jpg" />
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

                                        <button class="d-none d-xl-block add-to-cart-btn w-100">Thêm vào
                                            giỏ</button>
                                        <button class="d-xl-none add-to-cart-btn w-100"><i
                                                class="fa fa-shopping-cart m-auto" aria-hidden="true"></i></button>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <!-- /product -->

                        <!--					<div class="clearfix visible-lg visible-md visible-sm visible-xs"></div>-->

                        <!-- product -->

                        <div class="item col-md-4 col-xs-6">
                            <div class="product">
                                <div class="product-img zoom">
                                    <img src="img/Cờ%20Tỷ%20Phú%20-%20Sato%20039/8936146680399-_1__1.jpg" />
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
                                        <button class="d-none d-xl-block add-to-cart-btn w-100">Thêm vào
                                            giỏ</button>
                                        <button class="d-xl-none add-to-cart-btn w-100"><i
                                                class="fa fa-shopping-cart m-auto" aria-hidden="true"></i></button>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="item col-md-4 col-xs-6">
                            <div class="product">
                                <div class="product-img zoom">
                                    <img src="img/Cờ%20cổ%20tích/wjr1614571666.jpg" />
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

                                        <button class="d-none d-xl-block add-to-cart-btn w-100">Thêm vào
                                            giỏ</button>
                                        <button class="d-xl-none add-to-cart-btn w-100"><i
                                                class="fa fa-shopping-cart m-auto" aria-hidden="true"></i></button>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="item col-md-4 col-xs-6">
                            <div class="product">
                                <div class="product-img zoom">
                                    <img src="img/Cờ%20Domino%20AAA%20LHT%20HD3A/image_188853.jpg" />
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

                                        <button class="d-none d-xl-block add-to-cart-btn w-100">Thêm vào
                                            giỏ</button>
                                        <button class="d-xl-none add-to-cart-btn w-100"><i
                                                class="fa fa-shopping-cart m-auto" aria-hidden="true"></i></button>
                                    </div>
                                </div>

                            </div>
                        </div>
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
                        <h3 class="footer-title">Vể chúng tôi</h3>
                        <p>BroadStore là công ti phân phối và bán sảm phẩm game broad</p>
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
                        <h3 class="footer-title">Danh Mục</h3>
                        <ul class="footer-links">
                            <li><a href="#">Board Game Chiến thuật</a></li>
                            <li><a href="#">Board Game Gia đình</a></li>
                            <li><a href="#">Card Game</a></li>
                            <li><a href="#">Board Game Party</a></li>
                            <li><a href="#">Phụ kiện Board Game</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-3 col-xs-6">
                    <div class="footer">
                        <h3 class="footer-title">Thông tin</h3>
                        <ul class="footer-links">
                            <li><a href="about_us.html">Vể chúng tôi</a></li>
                            <li><a href="termsAndConditions.html">Chính sách và điều khoản</a></li>

                        </ul>
                    </div>
                </div>

                <div class="col-md-3 col-xs-6">
                    <div class="footer">
                        <h3 class="footer-title">Dịch vụ</h3>
                        <ul class="footer-links">
                            <li><a href="InforUser.html">Tài khoản</a></li>
                            <li><a href="cart.html">Giỏ hàng</a></li>
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
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.bundle.js"></script>
<script src="js/slick.min.js"></script>

<script src="js/jquery.zoom.min.js"></script>
<script src="js/main.js"></script>
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
