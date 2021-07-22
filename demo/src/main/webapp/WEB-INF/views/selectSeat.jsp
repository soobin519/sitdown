<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <!-- Custom fonts for this theme -->
    <link href="/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- Theme CSS -->
    <link href= "/resources/css/freelancer.min.css" rel="stylesheet">
    
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

<style>
html, body {
	/* width: 100%; */
	display: block;
	max-width: 100%;
}

.container2 {
	width: 100%;
	display: flex;
	align-items: center;
	flex-direction: column;
}

.section1, .section2, .section3, .section4, .section5 {
	width: 100%;
	display: flex;
	justify-content: center;
	margin-top: 50px;
}

.seatBox {
	display: flex;
	align-items: center;
	justify-content: center;
	margin-right: 10px;
	width: 50px;
	height: 50px;
}

.left .seatBox {
	background: url(/resources/assets/img/portfolio/leftseat.png) no-repeat;
	background-size: contain;
}

.right .seatBox {
	background: url(/resources/assets/img/portfolio/rightseat.png) no-repeat;
	background-size: contain;
}

.left {
	margin-right: 180px;
}

.right {
	margin-left: 180px;
}

label {
	cursor: pointer;
}
</style>

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
        <ul class="navbar-nav ml-auto">
          <li class="nav-item mx-0 mx-lg-1">
            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="/">Menu</a>
          </li>
          
          <li class="nav-item mx-0 mx-lg-1">
            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="/user/login/">Login</a>
          </li>
          
        </ul>
      </div>
    </div>
  </nav>
  <br>
  <br>

	<div class="container2">
		<div class="section1">
			<div class="left">
				<span class="seatBox"> <input hidden type="checkbox"
					name="seatNum1" id="seat1"> <label for="seatNum1">1</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum2" id="seat2"> <label for="seatNum2">2</label>
				</span> <span class="seatBox" id="seat3"> <input hidden type="checkbox"
					name="seatNum3" id="seat3"> <label for="seatNum3">3</label>
				</span>
			</div>
			<div class="right">
				<span class="seatBox"> <input hidden type="checkbox"
					name="seatNum1" id="seat4"> <label for="seatNum1">1</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum2"> <label for="seatNum2">2</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum3"> <label for="seatNum3">3</label>
				</span>
			</div>
		</div>
		<div class="section2">
			<div class="left">
				<span class="seatBox" id="seat7"> <input hidden type="checkbox"
					name="seatNum1"> <label for="seatNum1">4</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum2"> <label for="seatNum2">5</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum3"> <label for="seatNum3">6</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum4"> <label for="seatNum4">7</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum5"> <label for="seatNum5">8</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum6"> <label for="seatNum6">9</label>
				</span>
			</div>
			<div class="right">
				<span class="seatBox"> <input hidden type="checkbox"
					name="seatNum1"> <label for="seatNum1">4</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum2"> <label for="seatNum2">5</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum3"> <label for="seatNum3">6</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum4"> <label for="seatNum4">7</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum5"> <label for="seatNum5">8</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum6"> <label for="seatNum6">9</label>
				</span>
			</div>
		</div>
		<div class="section3">
			<div class="left">
				<span class="seatBox"> <input hidden type="checkbox"
					name="seatNum1"> <label for="seatNum1">10</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum2"> <label for="seatNum2">11</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum3"> <label for="seatNum3">12</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum4"> <label for="seatNum4">13</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum5"> <label for="seatNum5">14</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum6"> <label for="seatNum6">15</label>
				</span>
			</div>
			<div class="right">
				<span class="seatBox"> <input hidden type="checkbox"
					name="seatNum1"> <label for="seatNum1">10</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum2"> <label for="seatNum2">11</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum3"> <label for="seatNum3">12</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum4"> <label for="seatNum4">13</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum5"> <label for="seatNum5">14</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum6"> <label for="seatNum6">15</label>
				</span>
			</div>
		</div>
		<div class="section4">
			<div class="left">
				<span class="seatBox"> <input hidden type="checkbox"
					name="seatNum1"> <label for="seatNum1">16</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum2"> <label for="seatNum2">17</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum3"> <label for="seatNum3">18</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum4"> <label for="seatNum4">19</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum5"> <label for="seatNum5">20</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum6"> <label for="seatNum6">21</label>
				</span>
			</div>
			<div class="right">
				<span class="seatBox"> <input hidden type="checkbox"
					name="seatNum1"> <label for="seatNum1">16</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum2"> <label for="seatNum2">17</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum3"> <label for="seatNum3">18</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum4"> <label for="seatNum4">19</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum5"> <label for="seatNum5">20</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum6"> <label for="seatNum6">21</label>
				</span>
			</div>
		</div>
		<div class="section5">
			<div class="left">
				<span class="seatBox"> <input hidden type="checkbox"
					name="seatNum1"> <label for="seatNum1">22</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum2"> <label for="seatNum2">23</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum3"> <label for="seatNum3">24</label>
				</span>
			</div>
			<div class="right">
				<span class="seatBox"> <input hidden type="checkbox"
					name="seatNum1"> <label for="seatNum1">22</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum2"> <label for="seatNum2">23</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum3"> <label for="seatNum3">24</label>
				</span>
			</div>
		</div>
	</div>
	
	 <!-- Footer -->
  <footer class="footer text-center">
    <div class="container">
      <div class="row">

        <!-- Footer Location -->
        <div class="col-lg-6 mb-5 mb-lg-0">
          <h4 class="text-uppercase mb-4">Location</h4>
            <!--<p class="lead mb-0">-->
          <p style="font-size:20px; color:white; font-family:'210 Manbalchungchun'">경기도 성남시 수정구 성남대로 1342
            <br>가천대학교</p>
        </div>

        <!-- Footer About Text -->
        <div class="col-lg-6">
          <h4 class="text-uppercase mb-4"></h4>
            <p style="font-size:30px; color:white; font-family:'210 Manbalchungchun'">SIT DOWN</p>
        </div>

      </div>
    </div>
  </footer>

  <!-- Copyright Section -->
  <section class="copyright py-4 text-center text-white">
    <div class="container">
      <small>Copyright © Your Website 2021</small>
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