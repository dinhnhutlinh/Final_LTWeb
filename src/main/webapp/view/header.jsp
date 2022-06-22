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
                            <input class="input flex-grow-1" name="search" placeholder="SEARCH PRODUCT">
                            <button type="submit" class="search-btn">SEARCH</button>
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
                                    <span>account</span>
                                </c:if>
                                <c:if test='${user!=null}'>
                                    <span>${user.name}</span>
                                </c:if>
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="dropdownUser">
                                <c:if test='${user==null}'>
                                    <li><a class="dropdown-item" href="Login">Sign in</a></li>
                                    <li><a class="dropdown-item" href="SignUp">Sign up</a></li>
                                </c:if>
                                <c:if test='${user!=null}'>
                                    <c:if test="${user.getRole()==Role.ADMIN}">
                                        <li><a class="dropdown-item" href="Admin-DashBroad">Dashbroad</a></li>
                                    </c:if>
                                    <li><a class="dropdown-item" href="UserDetail">Account</a></li>
                                    <li><a class="dropdown-item" href="Logout">Log out</a></li>
                                </c:if>
                            </ul>
                        </div>
                        <!-- /Wishlist -->
                        <!-- Cart -->
                        <div class="dropdown">
                            <a href="#" class="dropdown-toggle" id="dropdownCart" role="button"
                               data-bs-toggle="dropdown" aria-expanded="false">
                                <i class="fa fa-shopping-cart"></i>
                                <span>Cart</span>
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
                                                <h3 class="product-name"><a href="product.html">Product 1</a></h3>
                                                <h4 class="product-price"><span class="qty">3x</span>98000</h4>
                                            </div>
                                            <a class="htn btn-close col-2" href="#"
                                               onclick="return confirm('Do you delete product?');"></a>
                                        </div>

                                        <div class="product-cart row align-items-center">
                                            <div class="product-img col-3">
                                                <img class="img-thumbnail" src="./img/product02.png" alt="">
                                            </div>
                                            <div class="product-body col-7">
                                                <h3 class="product-name"><a href="product.html">Product 2</a></h3>
                                                <h4 class="product-price"><span class="qty">3x</span>98000</h4>
                                            </div>
                                            <a class="htn btn-close col-2" href="#"
                                               onclick="return confirm('Do you delete product?');"></a>
                                        </div>
                                        <div class="product-cart row align-items-center">
                                            <div class="product-img col-3">
                                                <img class="img-thumbnail" src="./img/product02.png" alt="">
                                            </div>
                                            <div class="product-body col-7">
                                                <h3 class="product-name"><a href="product.html">Product 3</a></h3>
                                                <h4 class="product-price"><span class="qty">3x</span>98000</h4>
                                            </div>
                                            <a class="htn btn-close col-2" href="#"
                                               onclick="return confirm('Do you delete product?');"></a>
                                        </div>
                                    </div>
                                    <div class="cart-summary ">
                                        <small>Qty: 3</small>
                                        <h5>Total money: 29400000</h5>
                                    </div>
                                    <a href="Cart" class="btn btn-orange w-100 mb-2">View Cart</a>
                                    <a href="CheckOut" class="p1 btn btn-dark w-100">Payment</a>
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
                <li class="nav-item"><a href="index.html">Home</a></li>
                <li class="nav-item">
                    <div class="dropdown">
                        <a class="dropdown-toggle text-white text-uppercase" id="dropdownMenuButton1"
                           data-bs-toggle="dropdown" aria-expanded="false" href="cart.html">
                            Category
                        </a>
                        <ul class="dropdown-menu" style="margin: 0px;">
                            <li><a class="dropdown-item" href="Store?cat=all">All products</a></li>
                            <li><a class="dropdown-item" href="Store?cat=sale">Sale products</a></li>
                            <li><a class="dropdown-item" href="Store">Family Broadgame</a></li>
                            <li><a class="dropdown-item" href="Store">Tactic Broadgame</a></li>
                            <li><a class="dropdown-item" href="Store">Wisdom Broadgame</a></li>
                            <li><a class="dropdown-item" href="Store">Cards Broadgame</a></li>
                            <li><a class="dropdown-item" href="Store">Group toys</a></li>
                            <li><a class="dropdown-item" href="Store">AccessoryBroadGame</a></li>
                        </ul>
                    </div>
                </li>
                <li class="nav-item"><a href="news.html">NEWS</a></li>
                <li class="nav-item"><a href="about_us.html">INTRODUCE</a></li>
                <li class="nav-item"><a href="store.html">SALE</a></li>
            </ul>
            <!-- /NAV -->
        </div>
        <!-- /responsive-nav -->
    </div>
    <!-- /container -->
</nav>
