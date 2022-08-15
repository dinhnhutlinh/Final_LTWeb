<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <title>Sign in</title>

    <!-- Google font -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <!-- Slick -->
    <link type="text/css" rel="stylesheet" href="css/slick.css"/>
    <link type="text/css" rel="stylesheet" href="css/slick-theme.css"/>


    <!-- Font Awesome Icon -->
    <link rel="stylesheet" href="css/font-awesome.min.css">

    <!-- Custom stlylesheet -->
    <link type="text/css" rel="stylesheet" href="css/style.css"/>
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="css/SignIn.css">

</head>

<body>
<jsp:include page="view/header.jsp"></jsp:include>
<!--BODY-->
<div id="main">
    <!--/BODY-->

    <div class="container ">
        <div class="two_main shadow m-auto mt-5 mb-5 p-4">
            <div class="left">
                <div class="d-flex justify-content-center">
                    <i class="fa fa-user"></i>
                    <p class="ps-2"> FORGET PASSWORD?</p>
                </div>
                <div class="text_mini">
                    <p> Sign in to purchase and explore the rich world of Board games from the BoradStore. Coming to fun
                        game you will experience super hot board games and buy at SUPER CHEAP prices!!!</p>
                </div>
                <div class="end_text">
                    <p class="not_acc"> Do you have an account?</p>
                    <a href="Login" class="sign_in"></a>
                </div>
            </div>
            <div class="right">
                <div class="text-foget">
                    <p class="text">Enter the Gmail address registered with this account. Click the continue button the
                        password will be sent to your Gmail!!!</p>
                </div>
                <c:if test='${mess!=null&&mess!=""}'>
                    <div class="mb-3">
                        <div class="alert alert-danger" role="alert">${mess}</div>
                    </div>
                </c:if>
                <div class="same">
                    <form action="forget_password" method="post">
                        <p class="nav1"> Your gmail address?</p>
                        <div class="input-group mb-3">
                            <span class="input-group-text" id="basic-addon1">@</span>
                            <input type="email" class="form-control" placeholder="email" aria-label="email"
                                   aria-describedby="basic-addon1" name="email">
                            <span id="err-mes" class="text-danger d-none">Email esxits</span>
                        </div>

                        <button class="btn btn-orange w-100" type="submit">
                            Send confirmation
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </div>

</div>
<jsp:include page="view/footer.jsp"></jsp:include>

<!-- jQuery Plugins -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
<script src="js/slick.min.js"></script>

<script src="js/jquery.zoom.min.js"></script>
<script src="js/main.js"></script>
</body>

</html>
