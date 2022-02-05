<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.nhom10.broadstore.emun.Role" %>
<!-- HEADER -->
<header>
    <!-- MAIN HEADER -->
    <div id="header">
        <!-- container -->
        <div class="container">
            <!-- row -->
            <div class="row">
                <!-- LOGO -->
                <div class="col-md-3">
                    <div class="header-logo">
                        <a href="Home" class="logo">
                            <img src="img/BoardStore.png" style="height: 70px;" alt="">
                        </a>
                    </div>
                </div>
                <!-- /LOGO -->
                <!-- SEARCH BAR -->
                <div class="col-md-6">
                    <div class="header-search">
                        <form class="d-flex" action="Search" method="get">
                            <input class="input flex-grow-1" name="search" placeholder="Tìm kiếm sản phẩm">
                            <button type="submit" class="search-btn">TÌM KIẾM</button>
                        </form>
                    </div>
                </div>
                <!-- /SEARCH BAR -->
                <!-- ACCOUNT -->
                <div class="col-md-3 clearfix">
                    <div class="header-ctn">
                        <!-- Wishlist -->
                        <div class="dropdown">
                            <a href="#" class="dropdown-toggle" role="button" id="dropdownUser"
                               data-bs-toggle="dropdown" aria-expanded="false">
                                <i class="fa fa-user-circle-o"></i>
                                <c:if test='${user==null}'>
                                    <span>Tài khoản</span>
                                </c:if>
                                <c:if test='${user!=null}'>
                                    <span>${user.name}</span>
                                </c:if>
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="dropdownUser">
                                <c:if test='${user==null}'>
                                    <li><a class="dropdown-item" href="Login">Đăng nhập</a></li>
                                    <li><a class="dropdown-item" href="SignUp">Đăng ký</a></li>
                                </c:if>
                                <c:if test='${user!=null}'>
                                    <c:if test="${user.getRole()==Role.ADMIN}">
                                        <li><a class="dropdown-item" href="Admin-DashBroad">Dashbroad</a></li>
                                    </c:if>
                                    <li><a class="dropdown-item" href="UserDetail">Tài khoản</a></li>
                                    <li><a class="dropdown-item" href="Logout">Đăng xuất</a></li>
                                </c:if>
                            </ul>
                        </div>
                        <!-- /Wishlist -->
                        <!-- Cart -->
                        <div class="dropdown">
                            <a href="#" class="dropdown-toggle" id="dropdownCart" role="button"
                               data-bs-toggle="dropdown" aria-expanded="false">
                                <i class="fa fa-shopping-cart"></i>
                                <span>Giỏ hàng</span>
                                <div class="qty">3</div>
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="dropdownCart">
                                <div style="width: 360px; padding: 10px;">
                                    <div class="cart-list border-bottom">
                                        <div class="product-cart row align-items-center">
                                            <div class="product-img col-3">
                                                <img class="img-thumbnail" src="./img/product02.png" alt="">
                                            </div>
                                            <div class="product-body col-7">
                                                <h3 class="product-name"><a href="product.html">Sản phẩm 1</a></h3>
                                                <h4 class="product-price"><span class="qty">3x</span>98000</h4>
                                            </div>
                                            <a class="htn btn-close col-2" href="#"
                                               onclick="return confirm('Bạn Muốn xóa sản phẩm?');"></a>
                                        </div>

                                        <div class="product-cart row align-items-center">
                                            <div class="product-img col-3">
                                                <img class="img-thumbnail" src="./img/product02.png" alt="">
                                            </div>
                                            <div class="product-body col-7">
                                                <h3 class="product-name"><a href="product.html">Sản phẩm 2</a></h3>
                                                <h4 class="product-price"><span class="qty">3x</span>98000</h4>
                                            </div>
                                            <a class="htn btn-close col-2" href="#"
                                               onclick="return confirm('Bạn Muốn xóa sản phẩm?');"></a>
                                        </div>
                                        <div class="product-cart row align-items-center">
                                            <div class="product-img col-3">
                                                <img class="img-thumbnail" src="./img/product02.png" alt="">
                                            </div>
                                            <div class="product-body col-7">
                                                <h3 class="product-name"><a href="product.html">Sản phẩm 3</a></h3>
                                                <h4 class="product-price"><span class="qty">3x</span>98000</h4>
                                            </div>
                                            <a class="htn btn-close col-2" href="#"
                                               onclick="return confirm('Bạn Muốn xóa sản phẩm?');"></a>
                                        </div>
                                    </div>
                                    <div class="cart-summary ">
                                        <small>Số sản phẩm: 3</small>
                                        <h5>Tổng Tiền: 29400000</h5>
                                    </div>
                                    <a href="Cart" class="btn btn-orange w-100 mb-2">Xem giỏ hàng</a>
                                    <a href="CheckOut" class="p1 btn btn-dark w-100">Thanh toán</a>
                                </div>

                            </ul>
                        </div>
                        <!-- /Cart -->

                        <!-- Menu Toogle -->
                        <div class="menu-toggle">
                            <a href="#">
                                <i class="fa fa-bars"></i>
                                <span>Menu</span>
                            </a>
                        </div>
                        <!-- /Menu Toogle -->
                    </div>
                </div>
                <!-- /ACCOUNT -->
            </div>
            <!-- row -->
        </div>
        <!-- container -->
    </div>
    <!-- /MAIN HEADER -->
</header>
<!-- /HEADER -->

<!-- NAVIGATION -->
<nav id="navigation">
    <!-- container -->
    <div class="container">
        <!-- responsive-nav -->
        <div id="responsive-nav">
            <!-- NAV -->
            <ul class="main-nav nav">
                <li class="nav-item"><a href="index.html">TRANG CHỦ</a></li>
                <li class="nav-item">
                    <div class="dropdown">
                        <a class="dropdown-toggle text-white text-uppercase" id="dropdownMenuButton1"
                           data-bs-toggle="dropdown" aria-expanded="false" href="cart.html">
                            Danh Mục Sản Phẩm
                        </a>
                        <ul class="dropdown-menu" style="margin: 0px;">
                            <li><a class="dropdown-item" href="Store?cat=all">Tất Cả sản phẩm</a></li>
                            <li><a class="dropdown-item" href="Store?cat=sale">Sản phẩm sale</a></li>
                            <li><a class="dropdown-item" href="Store">Broadgame gia đình</a></li>
                            <li><a class="dropdown-item" href="Store">Broadgame trí tuệ</a></li>
                            <li><a class="dropdown-item" href="Store">Broadgame Chiến thuật</a></li>
                            <li><a class="dropdown-item" href="Store">Broadgame Thẻ bài</a></li>
                            <li><a class="dropdown-item" href="Store">Đồ chơi nhóm</a></li>
                            <li><a class="dropdown-item" href="Store">Phụ Kiện BroadGame</a></li>
                        </ul>
                    </div>
                </li>
                <li class="nav-item"><a href="news.html">TIN TỨC</a></li>
                <li class="nav-item"><a href="about_us.html">GIỚI THIỆU</a></li>
                <li class="nav-item"><a href="store.html">KHUYẾN MÃI</a></li>
            </ul>
            <!-- /NAV -->
        </div>
        <!-- /responsive-nav -->
    </div>
    <!-- /container -->
</nav>
