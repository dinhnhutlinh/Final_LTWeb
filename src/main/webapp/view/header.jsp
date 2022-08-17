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
                        <form class="d-flex" action="search" method="get">
                            <input class="input flex-grow-1" name="keyword" placeholder="SEARCH PRODUCT">
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

                                <c:if test='${userSession==null}'>
                                    <span>Account</span>

                                </c:if>
                                <c:if test='${userSession!=null}'>
                                    <span>${userSession.getName()}</span>

                                </c:if>
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="dropdownUser">
                                <c:if test='${userSession==null}'>
                                    <li><a class="dropdown-item" href="Login">Sign in</a></li>
                                    <li><a class="dropdown-item" href="SignUp">Sign up</a></li>
                                </c:if>
                                <c:if test='${userSession!=null}'>
                                    <c:if test="${userSession.getRole()==Role.ADMIN}">
                                        <li><a class="dropdown-item" href="dashboard">Dashbroad</a></li>
                                    </c:if>
                                    <li><a class="dropdown-item" href="user_detail">Account</a></li>
                                    <li><a class="dropdown-item" href="Logout">Log out</a></li>
                                </c:if>
                            </ul>
                        </div>
                        <!-- /Wishlist -->
                        <!-- Cart -->
                        <div class="dropdown">
                            <a href="cart" class="dropdown-toggle" id="dropdownCart" role="button"
                               aria-expanded="false">
                                <i class="fa fa-shopping-cart"></i>
                                <span>Cart</span>
                                <c:if test='${userSession!=null}'>
                                    <div id="cartQty" class="qty"></div>
                                </c:if>
                            </a>
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
                <li class="nav-item"><a href="Home">HOME</a></li>
                <li class="nav-item"><a href="Store?cat=all">CATEGORY</a></li>
                <li class="nav-item"><a href="Blog">NEWS</a></li>
                <li class="nav-item"><a href="about_us">INTRODUCE</a></li>

            </ul>
            <!-- /NAV -->
        </div>
        <!-- /responsive-nav -->
    </div>
    <!-- /container -->
</nav>
