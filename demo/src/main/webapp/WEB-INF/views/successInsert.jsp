<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>SIT DOWN</title>

<!-- Custom fonts for this theme -->
<link href="/resources/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
	rel="stylesheet" type="text/css">

<!-- Theme CSS -->
<link href="/resources/css/freelancer.min.css" rel="stylesheet">
</head>

<body id="page-top">
	<!-- Navigation-->
	<nav
		class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand" href="#page-top">SIT DOWN</a>
			<button
				class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded"
				type="button" data-bs-toggle="collapse"
				data-bs-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				Menu <i class="fas fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ms-auto">


					<!-- 로그인 했을 경우 --> 
					<c:if test="${user !=null }">
						<li class="nav-item mx-0 mx-lg-1">
							<a class="nav-link py-3 px-0 px-lg-3 rounded" href="#portfolio">Menu</a></li>
						<li class="nav-item mx-0 mx-lg-1">
							<a class="nav-link py-3 px-0 px-lg-3 rounded" onclick="alert('로그아웃완료');" href="/user/logout">LOGOUT</a></li>
 						<li class="nav-item mx-0 mx-lg-1">
 							<a class="nav-link py-3 px-0 px-lg-3 rounded" href="/user/setnewpw">SETTING</a></li>
 						<li class="nav-item mx-0 mx-lg-1">
 							<a class="nav-link py-3 px-0 px-lg-3 rounded" href="/myPage/info"><p>${user.name}님</p></a>
							</li> 
					</c:if>

					<!-- 로그인 안했을 경우  -->
					<c:if test="${user ==null }">
						<li class="nav-item mx-0 mx-lg-1"><a
							class="nav-link py-3 px-0 px-lg-3 rounded" href="#portfolio">Menu</a></li>
						<li class="nav-item mx-0 mx-lg-1"><a
							class="nav-link py-3 px-0 px-lg-3 rounded" href="/user/login">LOGIN</a></li>
						<li class="nav-item mx-0 mx-lg-1"><a
							class="nav-link py-3 px-0 px-lg-3 rounded" href="/user/join">JOIN
								US</a></li>
					</c:if>

				</ul>
			</div>
		</div>
	</nav>
	
	
	<br>
	<br>
	<script type="text/javascript">
		
	</script>


	<section class="page-section" id="contact">
		<div class="container">
			<br>
			<!-- Contact Section Heading -->
			<h2 class="text-center text-uppercase text-secondary mb-0">
				하차정보가 등록되었습니다.
			</h2>
			<br>
			<!-- info content -->
			<div class="row" style="justify-content: center;">
			<div class="col-6" style="text-align: center;">
				<div class="card-shadow-warning border mb-3 card card-body border-warning">
					<br>
					<h5 class="card-title">${myseat.line}</h5>
					<h5 class="card-title">${myseat.trainNo} 열차 </h5>
					<h5 class="card-title">${myseat.carNum} 번 칸</h5>
					<h5 class="card-title">${myseat.seatNum} 번 좌석</h5>
					<h5 class="card-title">${myseat.getoffNm}역 하차</h5>
					<br>
				</div>
			</div>
			</div>
			<br>
			<!-- btn -->
			<div class="row" style="place-content: center;">
				<div class="col-3" style="text-align: right;">
					<button type="button" class="btn btn-primary btn-xl"
						id="sendMessageButton" onclick = "location.href='/'" >메인으로</button>
				</div>
				<div class="col-3" style="text-align: left;">
					<button type="button" class="btn btn-primary btn-xl"
						id="sendMessageButton" onclick="formSeatInfo();"
						style="text-align: center; text-align: center;">메인으로</button>
				</div>
			</div>

		</div>
	</section>


	<!-- Footer -->
	<footer class="footer text-center">
		<div class="container">
			<div class="row">

				<!-- Footer Location -->
				<div class="col-lg-6 mb-5 mb-lg-0">
					<h4 class="text-uppercase mb-4">Location</h4>
					<!--<p class="lead mb-0">-->
					<p
						style="font-size: 20px; color: white; font-family: '210 Manbalchungchun'">
						경기도 성남시 수정구 성남대로 1342 <br>가천대학교
					</p>
				</div>


				<!-- Footer About Text -->
				<div class="col-lg-6">
					<h4 class="text-uppercase mb-4"></h4>
					<p
						style="font-size: 30px; color: white; font-family: '210 Manbalchungchun'">SIT
						DOWN</p>
				</div>

			</div>
		</div>
	</footer>

	<!-- Copyright Section -->
	<section class="copyright py-4 text-center text-white">
		<div class="container">
			<small>Copyright &copy; Your Website 2021</small>
		</div>
	</section>

	<!-- Bootstrap core JavaScript -->
	<script src='/resources/vendor/jquery/jquery.min.js'></script>
	<script src='/resources/vendor/bootstrap/js/bootstrap.bundle.min.js'></script>

	<!-- Plugin JavaScript -->
	<script src='/resources/vendor/jquery-easing/jquery.easing.min.js'></script>

	<!-- Contact Form JavaScript -->
	<script src='/resources/js/jqBootstrapValidation.js'></script>
	<script src='/resources/js/contact_me.js'></script>

	<!-- Custom scripts for this template -->
	<script src='/resources/js/freelancer.min.js'></script>



</body>

</html>