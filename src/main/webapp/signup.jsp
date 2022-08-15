<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <title>Sign up</title>

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
    <link rel="stylesheet" href="css/SignUp.css">

</head>

<body>
<jsp:include page="view/header.jsp"></jsp:include>
<!--BODY-->
<div id="main">
    <div class="container">
        <div class="two_main shadow">
            <div class="left">
                <div class="signIn">
                    <!--						<i class="fa fa-user-circle-o"></i>-->
                    <p class="text"> SIGN UP</p>
                </div>
                <div class="text_mini">
                    <p> Sign in to purchase and explore the rich world of Board games from www.boardstore.vui. Coming to
                        fun game you will experience super hot board games and buy at SUPER CHEAP prices!!!</p>

                </div>
                <div class="end_text">
                    <p class="not_acc"> Do you have account?</p>
                    <a href="Login" class="sign_in">Sign in</a>
                </div>
            </div>
            <div class="right">
                <form class="needs-validation" action="SignUp" method="post">
                    <c:if test='${mess!=null && mess!=""}'>
                        <div class="mb-3">
                            <div class="alert alert-danger" role="alert">${mess}</div>
                        </div>
                    </c:if>
                    <div class="mb-3">
                        <label for="lastname" class="form-label">First name</label>
                        <input class="form-control" id="lastname" name="first_name"
                               placeholder="First name" required>
                    </div>
                    <div class="mb-3">
                        <label for="firstname" class="form-label">Last name</label>
                        <input class="form-control" id="firstname" name="last_name"
                               placeholder="Last name" required>
                    </div>
                    <div class="mb-3">
                        <label for="email" class="form-label">Email</label>
                        <input type="email" class="form-control" id="email" name="email" placeholder="Email" required>
                    </div>
                    <div class="mb-3">
                        <label for="phone" class="form-label">Number phone</label>
                        <input type="text" class="form-control" id="phone" name="phone"
                               placeholder="Number phone" required>
                    </div>
                    <div class="mb-3">
                        <label for="password" class="form-label">Enter your password</label>
                        <input type="password" minlength="6" class="form-control" name="password" id="password"
                               placeholder="Password" required>
                    </div>
                    <div class="mb-3">
                        <label for="rePassword" class="form-label">Enter your password again</label>
                        <input type="password" minlength="6" class="form-control" name="re_password" id="rePassword"
                               placeholder="Password" required>
                        <span id="err-mes" class="text-danger d-none">Enter your password again not exacly!</span>
                    </div>
                    <div class="sign_up">
                        <button type="submit" class="btn btn-orange w-100">
                            <span>CREATE ACCOUNT</span></button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- /BODY-->
<jsp:include page="view/footer.jsp"></jsp:include>

<!-- jQuery Plugins -->
<script src="js/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
<script src="js/slick.min.js"></script>
<script src="js/jquery.zoom.min.js"></script>
<script src="js/main.js"></script>
<script>
    // (function () {
    //     'use strict'
    //     var forms = document.querySelectorAll('.needs-validation')
    //
    //     // Loop over them and prevent submission
    //     Array.prototype.slice.call(forms)
    //         .forEach(function (form) {
    //             form.addEventListener('submit', function (event) {
    //
    //                 if (!form.checkValidity() || !verifyPassword()) {
    //                     event.preventDefault()
    //                     event.stopPropagation()
    //                 }
    //             }, false)
    //         })
    // })()

    function verifyPassword() {
        var pw = document.getElementById("password").value;
        var rpw = document.getElementById("rePassword").value;
        if (pw === rpw)
            return true;
        else {
            var element = document.getElementById("err-mes");
            element.classList.remove("d-none");
            return false;
        }
    }
</script>

</body>

</html>
