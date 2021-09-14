<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
  
  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top" id="mainNav">
    <div class="container">
      <a class="navbar-brand js-scroll-trigger" href="/">Sit Down</a>
      <button class="navbar-toggler navbar-toggler-right text-uppercase font-weight-bold bg-primary text-white rounded" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        Menu
        <i class="fas fa-bars"></i>
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
  
  <section class="page-section" id="contact">
    <div class="container">

      <!-- Contact Section Heading -->
       <br/>
        <br/>
         <br/>
          <br/>
      <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">사용자 정보</h2>

      <!-- Icon Divider -->
      <div class="divider-custom">
        <div class="divider-custom-line"></div>
        <div class="divider-custom-icon">
          <i class="fas fa-star"></i>
        </div>
        <div class="divider-custom-line"></div>
      </div>

      <!-- pw 알림 메세지  -->
              
        <br/>
		<div class="row" style="justify-content: center;">
		<div class="col-6" style="text-align: center;">
			<div class="card-shadow-warning border mb-3 card card-body border-warning">
			<%
				String email = request.getParameter("email");
				String id = request.getParameter("id");
				out.print(id+"님의 ");
				out.print("<br/>이메일 " +email+"로 <br>임시 비밀번호가 발송되었습니다.");
								
			%>
			</div>
    	</div>
		</div>
		<br>
		<div class="form-group" style="text-align: center; ">
              <button onclick = "location.href='/user/login'" type="submit" class="btn btn-primary btn-xl">로그인</button>
              <button onclick = "location.href='/'" type="button" class="btn btn-primary btn-xl">메인으로</button>
        </div>
  </section>
  

  <!-- Footer -->
  <footer class="footer text-center">
    <div class="container">
      <div class="row">

        <!-- Footer Location -->
        <div class="col-lg-4 mb-5 mb-lg-0">
          <h4 class="text-uppercase mb-4">Location</h4>
            <!--<p class="lead mb-0">-->
          <p style="font-size:20px; color:white; font-family:'210 Manbalchungchun'">경기도 성남시 수정구 성남대로 1342
            <br>가천대학교</p>
        </div>

        <!-- Footer Social Icons -->
        <div class="col-lg-4 mb-5 mb-lg-0">
          <h4 class="text-uppercase mb-4">Around the Web</h4>
          <a class="btn btn-outline-light btn-social mx-1" href="#">
            <i class="fab fa-fw fa-facebook-f"></i>
          </a>
          <a class="btn btn-outline-light btn-social mx-1" href="#">
            <i class="fab fa-fw fa-twitter"></i>
          </a>
          <a class="btn btn-outline-light btn-social mx-1" href="#">
            <i class="fab fa-fw fa-linkedin-in"></i>
          </a>
          <a class="btn btn-outline-light btn-social mx-1" href="#">
            <i class="fab fa-fw fa-dribbble"></i>
          </a>
        </div>

        <!-- Footer About Text -->
        <div class="col-lg-4">
          <h4 class="text-uppercase mb-4"></h4>
            <p style="font-size:30px; color:white; font-family:'210 Manbalchungchun'">SIT DOWN</p>
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