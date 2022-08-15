<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <title>News</title>

    <!-- Google font -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

    <!-- Bootstrap -->
    <link rel="stylesheet" href="css/bootstrap.css">

    <!-- Slick -->
    <link type="text/css" rel="stylesheet" href="css/slick.css"/>
    <link type="text/css" rel="stylesheet" href="css/slick-theme.css"/>


    <!-- Font Awesome Icon -->
    <link rel="stylesheet" href="css/font-awesome.min.css">

    <!-- Custom stlylesheet -->
    <link type="text/css" rel="stylesheet" href="css/style.css"/>
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="css/news.css">

</head>

<body>

<jsp:include page="view/header.jsp"></jsp:include>
<!-- HEADER -->

<!-- /HEADER -->
<!-- BREADCRUMB -->
<div id="breadcrumb" class="section">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <ul class="breadcrumb-tree">
                    <li><a href="Home">Home</a></li>
                    <li class=""><a href="Blog">News</a></li>
                    <li> ${blog.getTitle()}</li>
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
        <div class="head-title">
            <h3>
                ${blog.getTitle()}
            </h3>
            <div class="card-subtitle">DATE: ${blog.getUpdateAt()}</div>
                <div class="line"></div>
            </div>
            <div class="content_description w-75 m-auto	">
                ${blog.getContent()}
            </div>
        </div>
        <!-- /container -->
    </div>
    <!-- /SECTION -->
    <!-- FOOTER -->
    <jsp:include page="view/footer.jsp"></jsp:include>
    <!-- /FOOTER -->

    <!-- jQuery Plugins -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.bundle.js"></script>
    <script src="js/slick.min.js"></script>

    <script src="js/jquery.zoom.min.js"></script>
    <script src="js/main.js"></script>

</body>

</html>