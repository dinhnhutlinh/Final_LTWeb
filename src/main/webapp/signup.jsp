<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

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
                    <p class="text"> ĐĂNG KÝ</p>
                </div>
                <div class="text_mini">
                    <p> Đăng nhập để mua hàng và khám phá thế giới Board game phong phú từ www.vuigame.vui
                        Đến với vui game bạn sẽ được trải nghiệm những board game siêu hot và mua với mức giá SIÊU
                        HỜI!!!</p>
                </div>
                <div class="end_text">
                    <p class="not_acc"> Bạn đã có tài khoản?</p>
                    <a href="signIn" class="sign_in">Đăng nhập</a>
                </div>
            </div>
            <div class="right">
                <form class="needs-validation" action="SignUp" method="post">
                    <div class="mb-3">
                        <label for="lastname" class="form-label">Họ</label>
                        <input class="form-control" id="lastname" name="lastname"
                               placeholder="Họ" required>
                    </div>
                    <div class="mb-3">
                        <label for="firstname" class="form-label">Tên</label>
                        <input class="form-control" id="firstname" name="firstname"
                               placeholder="Tên" required>
                    </div>
                    <div class="mb-3">
                        <label for="email" class="form-label">Email</label>
                        <input type="email" class="form-control" id="email" name="email" placeholder="Email" required>
                    </div>
                    <div class="mb-3">
                        <label for="phone" class="form-label">Số điện thoại</label>
                        <input type="text" class="form-control" id="phone" name="phone"
                               placeholder="Số điện thoại" required>
                    </div>
                    <div class="mb-3">
                        <label for="password" class="form-label">Nhập mật khẩu</label>
                        <input type="password" minlength="6" class="form-control" name="password" id="password"
                               placeholder="Mật khẩu của bạn" required>
                    </div>
                    <div class="mb-3">
                        <label for="rePassword" class="form-label">Nhập lại mật khẩu</label>
                        <input type="password" minlength="6" class="form-control" name="password" id="rePassword"
                               placeholder="Mật khẩu của bạn" required>
                        <span id="err-mes" class="text-danger d-none">Nhập lại mật khẩu không chính xác!</span>
                    </div>
                    <div class="sign_up">
                        <button type="submit" class="btn btn-orange w-100">
                            <span>TẠO TÀI KHOẢN</span></button>
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
