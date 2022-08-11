<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.nhom10.broadstore.emun.Role" %>
<%@ page import="com.nhom10.broadstore.beans.User" %>
<%@ page import="com.nhom10.broadstore.util.Define" %>
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
                        <form class="d-flex" action="Store" method="get">
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

                                <c:if test='${userSession==null}'>
                                    <span>account</span>

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
                            <a href="Cart" class="dropdown-toggle" id="dropdownCart" role="button"
                               data-bs-toggle="dropdown" aria-expanded="false">
                                <i class="fa fa-shopping-cart"></i>
                                <span>Cart</span>
                                <c:if test='${userSession!=null}'>
                                    <div class="qty">${userSession.numCartItems()}</div>
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
                <li class="nav-item"><a href="Home">Home</a></li>
                <li class="nav-item">
                    <div class="dropdown">
                        <a class="dropdown-toggle text-white text-uppercase" id="dropdownMenuButton1"
                           data-bs-toggle="dropdown" aria-expanded="false" >
                            Category
                        </a>
                        <ul class="dropdown-menu" style="margin: 0px;">
                            <li><a class="dropdown-item" href="Store?cat=all">All products</a></li>
                            <li><a class="dropdown-item" href="Store?cat=family">Family Game</a></li>
                            <li><a class="dropdown-item" href="Store?cat=card">Card Game</a></li>
                            <li><a class="dropdown-item" href="Store?cat=combat">Combat</a></li>
                            <li><a class="dropdown-item" href="Store?cat=art">Art</a></li>
                            <li><a class="dropdown-item" href="Store?cat=adventure">Adventure</a></li>
                            <li><a class="dropdown-item" href="Store?cat=dice">Dice</a></li>
                            <li><a class="dropdown-item" href="Store?cat=battle">Battle Royale</a></li>
                            <li><a class="dropdown-item" href="Store?cat=fighting">Fighting</a></li>
                            <li><a class="dropdown-item" href="Store?cat=puzzle">Puzzle</a></li>
                            <li><a class="dropdown-item" href="Store?cat=party">Party Game</a></li>
                            <li><a class="dropdown-item" href="Store?cat=fantasy">Fantasy</a></li>
                        </ul>
                    </div>
                </li>
                <li class="nav-item"><a href="Blog">NEWS</a></li>
                <li class="nav-item"><a href="about_us.html">INTRODUCE</a></li>
                <li class="nav-item"><a href="store.html">SALE</a></li>
            </ul>
            <!-- /NAV -->
        </div>
        <!-- /responsive-nav -->
    </div>
    <!-- /container -->
</nav>
