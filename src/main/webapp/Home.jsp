<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Main Page</title>
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
<link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
<link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css">
<!--  for banner -->
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<%@ include file="header.jsp"%>

	<div>

		<!-- Banner Section Begin -->
		<div id="demo" class="carousel slide" data-ride="carousel">

			<!-- Indicators -->
			<ul class="carousel-indicators">
				<li data-target="#demo" data-slide-to="0" class="active"></li>
				<li data-target="#demo" data-slide-to="1"></li>
				<li data-target="#demo" data-slide-to="2"></li>
			</ul>

			<!-- The slideshow -->
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="Image/banner/banner3.jpeg" alt="Banner 1"
						style="width: 100%; height: 550px;">
				</div>
				<div class="carousel-item">
					<img src="Image/banner/banner4.jpeg" alt="Banner 2"
						style="width: 100%; height: 550px;">
				</div>
				<div class="carousel-item">
					<img src="Image/banner/banner8.jpeg" alt="Banner 3"
						style="width: 100%; height: 550px;">
				</div>
			</div>



			<!-- Left and right controls -->
			<a class="carousel-control-prev" href="#demo" data-slide="prev">
				<span class="carousel-control-prev-icon"></span>
			</a> <a class="carousel-control-next" href="#demo" data-slide="next">
				<span class="carousel-control-next-icon"></span>
			</a>

		</div>
		<!-- Banner Section End -->

		<!-- Product Section Begin -->
		<section class="product spad">
			<div class="container">
				<div class="row">
					<!-----------------------Event 1----------------------------------------->
					<div class=" col-sm-10  col-sm-2">
						<div class="section-title">
							<h4>Upcoming Events</h4>
						</div>
					</div>


					<!-- Product 1 -->
					<div class="col-lg-3 col-md-4 col-sm-6 mix kids">
						<a href="acadamic.jsp?eventId=1">
							<div class="product__item">
								<div class="product__item__pic ">
									<img class="product__item__pic" src="Image/posters/run1.jpeg"
										alt="Girls Buckle Decor Flats, Glamorous Party Glitter Mary Jane Flats">
									<div class="label new">SPORTS</div>
								</div>
							</div>
						</a>
					</div>

					<!-- Product 2 -->
					<div class="col-lg-3 col-md-4 col-sm-6 mix kids">
						<a href="acadamic.jsp?eventId=5">

							<div class="product__item">
								<div class="product__item__pic ">
									<img class="product__item__pic" src="Image/posters/dodg2.jpeg"
										alt="Girls Buckle Decor Flats, Glamorous Party Glitter Mary Jane Flats">
									<div class="label new">ACADEMIC</div>
								</div>
							</div>
						</a>

					</div>
					<!-- Product 3 -->
					<div class="col-lg-3 col-md-4 col-sm-6 mix kids">
						<a href="acadamic.jsp?eventId=9">

							<div class="product__item">
								<div class="product__item__pic ">
									<img class="product__item__pic"
										src="Image/posters/family3.jpeg"
										alt="Girls Buckle Decor Flats, Glamorous Party Glitter Mary Jane Flats">
									<div class="label new">VOLUNTARY</div>
								</div>
							</div>
						</a>

					</div>
					<!-- Product 4 -->
					<div class="col-lg-3 col-md-4 col-sm-6 mix kids">
						<a href="acadamic.jsp?eventId=13">

							<div class="product__item">
								<div class="product__item__pic ">
									<img class="product__item__pic" src="Image/posters/beach4.jpeg"
										alt="Girls Buckle Decor Flats, Glamorous Party Glitter Mary Jane Flats">
									<div class="label new">CULTURE & ART</div>
								</div>
							</div>
						</a>

					</div>

				</div>
			</div>
		</section>
		<!-- Product Section End -->

		<section class="discount">
			<div class="">
				<div class="row">
					<div class="col-lg-6 p-0">
						<div class="discount__pic">
							<img src="img/banner/interview.jpg" alt="">
						</div>
					</div>
					<div class="col-lg-6 p-0">
						<div class="discount__text">
							<div class="discount__text__title">
								<h2>Webinar on Improving Interview Skills</h2>
							</div>
							<div class="discount__countdown" id="countdown-time">
								<div class="countdown__item">
									<span>30</span>
									<p>Day</p>
								</div>
								<div class="countdown__item">
									<span>04</span>
									<p>Hour</p>
								</div>
								<div class="countdown__item">
									<span>02</span>
									<p>Min</p>
								</div>
								<div class="countdown__item">
									<span>31</span>
									<p>Sec</p>
								</div>
							</div>
							Register to <a>ace your interview</a> hurry!!
						</div>
					</div>
				</div>
			</div>
		</section>


		<section class="services spad">
			<div class="container">
				<div class="row">
					<div class="col-lg-3 col-md-4 col-sm-6">
						<div class="services__item">
							<img width="50px"
								src="https://img.icons8.com/wired/64/portrait-mode-female.png"
								alt="portrait-mode-female" />
							<h6>Mode</h6>
							<p>In-Person</p>
						</div>
					</div>
					<div class="col-lg-3 col-md-4 col-sm-6">
						<div class="services__item">
							<img width="50px"
								src="https://img.icons8.com/external-outline-wichaiwi/64/external-fee-non-fungible-token-outline-wichaiwi.png"
								alt="external-fee-non-fungible-token-outline-wichaiwi" />
							<h6>Registration Fees</h6>
							<p>$10</p>
						</div>
					</div>
					<div class="col-lg-3 col-md-4 col-sm-6">
						<div class="services__item">
							<img width="50px"
								src="https://img.icons8.com/ios/50/contract.png" alt="contract" />
							<h6>Certification</h6>

							<p>CCR Approved</p>
						</div>
					</div>
					<div class="col-lg-3 col-md-4 col-sm-6">
						<div class="services__item">
							<img width="50px"
								src="https://img.icons8.com/external-itim2101-lineal-itim2101/64/external-benefits-project-management-itim2101-lineal-itim2101.png"
								alt="external-benefits-project-management-itim2101-lineal-itim2101" />
							<h6>Benefits</h6>
							<p>Opportunity to win prizes</p>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>


	<jsp:include page="footer.jsp" />
</body>
</html>