<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

	<title>News</title>

	<!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

	<!-- Bootstrap -->
	<link rel="stylesheet" href="templete/css/bootstrap.css">

	<!-- Slick -->
	<link type="text/css" rel="stylesheet" href="templete/css/slick.css" />
	<link type="text/css" rel="stylesheet" href="templete/css/slick-theme.css" />



	<!-- Font Awesome Icon -->
	<link rel="stylesheet" href="templete/css/font-awesome.min.css">

	<!-- Custom stlylesheet -->
	<link type="text/css" rel="stylesheet" href="templete/css/style.css" />
	<link rel="stylesheet" href="templete/css/header.css">
	<link rel="stylesheet" href="templete/css/footer.css">
	<link rel="stylesheet" href="templete/css/news.css">

</head>

<body>

<jsp:include page="view/header.jsp"></jsp:include>
<!-- HEADER -->

<!-- /HEADER -->

<!-- NAVIGATION -->

<!-- /NAVIGATION -->
	<!-- BREADCRUMB -->
	<div id="breadcrumb" class="section">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<ul class="breadcrumb-tree">
						<li><a href="templete/index.html">Home</a></li>
						<li class="">News</li>
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
			<!-- row -->
			<div class="row">
				<div class="col-md-12 hot-news">
					<h4 class="col-12 p-2">Hot news</h4>
					<div class="hotnews row">
						<div class="col-lg-6 ">
							<a href="templete/detailnews.html">
								<div class="news position-relative shadow">
									<div class="thumbnail">
										<img src="templete/img/a7bda4400e5e48aa8e34f956171bb068.png" alt="Image"
											 class="img-thumbnail">
									</div>
									<div class="bg-lg-shadow position-absolute bottom-0 w-100 p-2">
										<div class="d-flex justify-content-between align-items-center">
											<p class="p-sm-1 bg-danger text-white">Review</p>
											<h6 class="text-white">At 10:30 14/11/2021</h6>
										</div>
										<h5><a class="text-white" href="templete/detailnews.html">Azul: Summer Pavilion - Liệu có
												vượt qua được người tiền nhiệm?</a>
										</h5>

									</div>
								</div>
							</a>
						</div>
						<div class="col-lg-6 ">
							<a href="templete/detailnews.html">
								<div class="news position-relative shadow">
									<div class="thumbnail">
										<img src="templete/img/a7bda4400e5e48aa8e34f956171bb068.png" alt="Image"
											 class="img-thumbnail">
									</div>
									<div class="bg-lg-shadow position-absolute bottom-0 w-100 p-2">
										<div class="d-flex justify-content-between align-items-center">
											<p class="p-sm-1 bg-danger text-white">Review</p>
											<h6 class="text-white">At 10:30 14/11/2021</h6>
										</div>
										<h5><a class="text-white" href="templete/detailnews.html">Azul: Summer Pavilion - Liệu có
												vượt qua được người tiền nhiệm?</a>
										</h5>

									</div>
								</div>
							</a>
						</div>
					</div>
					<!-- /row -->
				</div>
				<div class="col-md-12 hot-news mt-5">
					<div class="col-12 p-2 d-flex justify-content-between">
						<h3>
							Latest news
						</h3>
						<div class=" news-category d-flex">
							<h5 class="p-lg-2 "><a class="fw-bold active " href="templete/news.html">All</a></h5>
							<h5 class="p-lg-2"><a class="fw-bold" href="templete/news.html">News</a></h5>
							<h5 class="p-lg-2"><a class="fw-bold" href="templete/news.html">Review</a></h5>
							<h5 class="p-lg-2"><a class="fw-bold" href="templete/news.html">Discount</a></h5>
						</div>
					</div>
					<div class="list-news">
						<jsp:useBean id="blogs" scope="request" type="java.util.List"/>
						<c:forEach var="b" items="${blogs}">
							<div class="newsLine">

								<div class="row">
									<div class="col-2">
										<a href="templete/detailnews.html">
											<img class="img-thumbnail" src="${b.image}" alt="">
										</a>
									</div>
									<div class="col-10">
										<div class="d-flex align-items-baseline">
											<p class="p-sm-1 bg-danger text-white">Review</p>
											<h6 class="ps-3">At ${b.updateAt}</h6>
										</div>
										<h5>
											<a href="DetailBlog">${b.title}v</a>
										</h5>
										<div class="news-content">
												${b.content}
										</div>
									</div>
								</div>

							</div>
						</c:forEach>



					</div>

					<ul class="reviews-pagination">
						<li class="active">1</li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#"><i class="fa fa-angle-right"></i></a></li>
					</ul>
				</div>
			</div>
			<!-- /container -->
		</div>
	</div>
	<!-- /SECTION -->
	<!-- FOOTER -->
<footer id="footer">
	<!-- top footer -->
	<div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<div class="col-md-3 col-xs-6">
					<div class="footer">
						<h3 class="footer-title">about us</h3>
						<p>BroadStore is a copamy provider and sale board game</p>
						<ul class="footer-links">
							<li><a href="#"><i class="fa fa-map-marker"></i>25/5 Thăng Long, Phường 4, Quận Tân
								Bình, TP. Hồ Chí Minh</a></li>
							<li><a href="#"><i class="fa fa-phone"></i>0938 424 289
							</a></li>
							<li><a href="#"><i class="fa fa-envelope-o"></i>admin@BoardStore.vn</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-3 col-xs-6">
					<div class="footer">
						<h3 class="footer-title">Category</h3>
						<ul class="footer-links">
							<li><a href="#">Wisdom Board Game</a></li>
							<li><a href="#">Family Board Game</a></li>
							<li><a href="#">Card Game</a></li>
							<li><a href="#">Board Game Party</a></li>
							<li><a href="#">Accessory Board Game</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-3 col-xs-6">
					<div class="footer">
						<h3 class="footer-title">Information</h3>
						<ul class="footer-links">
							<li><a href="templete/about_us.html">About us</a></li>
							<li><a href="templete/termsAndConditions.html">Terms and Conditions</a></li>

						</ul>
					</div>
				</div>

				<div class="col-md-3 col-xs-6">
					<div class="footer">
						<h3 class="footer-title">Service</h3>
						<ul class="footer-links">
							<li><a href="templete/InforUser.html">Account</a></li>
							<li><a href="templete/cart.html">Shopping cart</a></li>

						</ul>
					</div>
				</div>
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /top footer -->

	<!-- bottom footer -->
	<div id="bottom-footer" class="section">
		<div class="container">
			<!-- row -->
			<div class="row">
				<div class="col-md-12 text-center">
					<ul class="footer-payments">
						<li><a href="#"><i class="fa fa-cc-visa"></i></a></li>
						<li><a href="#"><i class="fa fa-credit-card"></i></a></li>
						<li><a href="#"><i class="fa fa-cc-paypal"></i></a></li>
						<li><a href="#"><i class="fa fa-cc-mastercard"></i></a></li>
						<li><a href="#"><i class="fa fa-cc-discover"></i></a></li>
						<li><a href="#"><i class="fa fa-cc-amex"></i></a></li>
					</ul>
				</div>
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /bottom footer -->
</footer>
	<!-- /FOOTER -->

	<!-- jQuery Plugins -->
	<script src="templete/js/jquery.min.js"></script>
	<script src="templete/js/bootstrap.bundle.js"></script>
	<script src="templete/js/slick.min.js"></script>
	
	<script src="templete/js/jquery.zoom.min.js"></script>
	<script src="templete/js/main.js"></script>

</body>

</html>