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
        <div class="card  w-25 m-auto">
            <div class="card-body">
                <h5 class="mx-auto">Reset password</h5>
                <c:if test='${mess!=null && mess!=""}'>
                    <div class="mb-3">
                        <div class="alert alert-danger" role="alert">${mess}</div>
                    </div>
                </c:if>
                <form action="change_password" method="post">
                    <input type="hidden" name="id" class="form-control" value="${param["id"]}">
                    <div class="mt-3">
                        <label for="inputNewPassword" class="form-label">Enter your new password:</label>
                        <input type="password" name="password" class="form-control" id="inputNewPassword">
                    </div>
                    <div class="mt-3">
                        <label for="inputNewPassword2" class="form-label ">Enter your new password again:</label>
                        <input type="password" name="repassword" class="form-control" id="inputNewPassword2">
                    </div>

                    <button type="submit" class="btn mt-3 btn-orange w-100">Submit</button>

                </form>
            </div>

        </div>
        <!-- /row -->
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
