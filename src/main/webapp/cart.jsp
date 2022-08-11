<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

	<title>Cart</title>

	<!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

	<!-- Bootstrap -->
	<link rel="stylesheet" href="css/bootstrap.css">

	<!-- Slick -->
	<link type="text/css" rel="stylesheet" href="css/slick.css" />
	<link type="text/css" rel="stylesheet" href="css/slick-theme.css" />



	<!-- Font Awesome Icon -->
	<link rel="stylesheet" href="css/font-awesome.min.css">

	<!-- Custom stlylesheet -->
	<link type="text/css" rel="stylesheet" href="css/style.css" />
	<link rel="stylesheet" href="css/header.css">
	<link rel="stylesheet" href="css/footer.css">

</head>

<body>

<jsp:include page="view/header.jsp"></jsp:include>

	<!-- BREADCRUMB -->
	<div id="breadcrumb" class="section">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<ul class="breadcrumb-tree">
						<li><a href="index.html">Home</a></li>
						<li class="active">Cart</li>
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
			<!--Cart-->
			<div id="cart">
				<div class="products p-3 card flex-grow-1 border-r10 shadow">
					<div class="">
						<div class="row">
							<div class="col">
								<h4><b>Cart</b></h4>
							</div>
							<div class="col align-self-center text-end text-muted">3 products</div>
						</div>
					</div>
					<div class="row border-bottom pt-2">
						<div class="col-7">
							<h6>Products</h6>
						</div>
						<div class="col-1">
							<h6>Quantity</h6>
						</div>
						<div class="col-2">
							<h6>Money</h6>
						</div>
						<div class="col-2 text-end">
							<h6>Delete</h6>
						</div>
					</div>
					<div class="row align-items-center border-bottom pt-2 pb-2">
						<div class="col-2"><img class="img-thumbnail rounded"
								src="img/Cờ Tỷ Phú 5 Trong 1/8936007793107_1_.jpg" alt=""></div>
						<div class="col-5">
							<h6><a href="product.html">
									Cờ Tỷ Phú 5 Trong 1
								</a></h6>
							<small>200000 VND</small>
						</div>
						<div class="col-1"><input class="form-control" type="number" min="1" value="1"></div>
						<div class="col-2">200000</div>
						<div class="col-2 text-end"><a class="btn btn-close"></a></div>
					</div>
					<div class="row align-items-center border-bottom pt-2 pb-2">
						<div class="col-2"><img class="img-thumbnail rounded"
								src="img/Boardgame Splendor - Cuộc Chiến Đá Quý - SPACE Cowboys/image_229736.jpg"
								alt=""></div>
						<div class="col-5">
							<h6><a href="product.html">
									Boardgame Splendor - Cuộc Chiến Đá Quý - SPACE Cowboy
								</a></h6>
							<small>500000 VND</small>
						</div>
						<div class="col-1"><input class="form-control" type="number" min="1" value="1"></div>
						<div class="col-2">500000</div>
						<div class="col-2 text-end"><a class="btn btn-close"></a></div>
					</div>
					<div class="row align-items-center border-bottom pt-2 pb-2">
						<div class="col-2"><img class="img-thumbnail rounded"
								src="img/Board-Game-Dungeon-Mayhem-Dragons-mở-rộng-Battle-for-Baldur_s-Gate/00d975a7f27271fe9dc95617b192dc33.jpg"
								alt=""></div>
						<div class="col-5">
							<h6><a href="product.html">
									Board-Game-Dungeon-Mayhem-Dragons-mở-rộng-Battle-for-Baldur_s-Gate
								</a></h6>
							<small>200000 VND</small>
						</div>
						<div class="col-1"><input class="form-control" type="number" min="1" value="1"></div>
						<div class="col-2">200000</div>
						<div class="col-2 text-end"><a class="btn btn-close"></a></div>
					</div>
					<div class="row pt-3">
						<div class="col-8">
							<div class=" btn text-start">
								<a href="index.html" class="btn btn-outline-dark"> <i class="fa fa-angle-left"
										aria-hidden="true"></i><span>Continue</span></a>
							</div>
						</div>
						<div class="col-4">
							<div class="w-100 d-flex justify-content-between">
								<h5>Total</h5>
								<div><strong class="order-total">900000VND</strong></div>
							</div>
							<a class="btn primary-btn order-submit w-100" href="checkout.html">
							PAYMENT</a>
						</div>
					</div>
				</div>
				<!--Cart-->
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