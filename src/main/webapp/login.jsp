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
    <div class="container">
        <div class="two_main shadow">
            <div class="left">
                <div class="signIn">

                    <p class="text"> SIGN IN</p>
                </div>
                <div class="text_mini">
                    <p> Sign in to purchase and explore the rich world of Board games from www.vuigame.vui. Coming to fun game you will experience super hot board games and buy at SUPER CHEAP prices!!!</p>

                </div>
                <div class="end_text">
                    <p class="not_acc"> Do not have an account?</p>
                    <a href="SignUp" class="sign_in">Sign up</a>
                </div>
            </div>
            <div class="right">
                <form action="Login" method="post">
                    <div class="mb-3">
                        <label for="email" class="form-label">Email</label>
                        <input type="email" class="form-control" name="email" id="email" placeholder="Email">
                    </div>
                    <div class="mb-3">
                        <label for="password" class="form-label">Password</label>
                        <input type="password" minlength="6" class="form-control" name="password" id="password"
                               placeholder="Forget password">
                        <span id="err-mes" class="text-danger d-none">Email or password not exactly</span>
                    </div>
                    <c:if test='${mess!=null&&mess!=""}'>
                        <div class="mb-3">
                            <div class="alert alert-danger" role="alert">${mess}</div>
                        </div>
                    </c:if>
                    <div class="forgot pb-3">
                        <a href="forget_password" class="text">Forget password?</a>
                    </div>
                    <button type="submit" class="btn w-100 text-white">
                        SIGN IN
                    </button>
                </form>
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
