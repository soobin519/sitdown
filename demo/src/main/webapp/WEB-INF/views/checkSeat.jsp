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

.seatBox.clicked {
    background-color: chartreuse;
}

.left {
	width:250px;
	margin-right: 100px;
}

.right {
/* 	width:250px; */
	margin-left: 100px;
}

label {
	cursor: pointer;
}

.selected {
	display: flex;
	align-items: center;
	justify-content: center;
	width: 50px;
	height: 50px;
	background: url(/resources/assets/img/portfolio/leftseat.png) no-repeat;
	background-size: contain;
	background-color: gainsboro;
}

.row {
	margin-left : 0px;
	margin-right : 0px;


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
		<div class="section5">
		</div>
		<div class="section5">
			<h2 class="text-center text-uppercase text-secondary mb-0">
				${param.trainNo} 번 열차 &emsp; ${param.carNum}  칸 
			</h2>
		</div>
		<div class="section1">
			<div class="left">
				<span class="seatBox"> <input hidden type="checkbox"
					name="seatNum1" id="1"> <label for="seatNum1">1</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum2" id="2"> <label for="seatNum2">2</label>
				</span><div class=row><span class="seatBox" id="seat3"> <input hidden type="checkbox"
					name="seatNum3" id="3"> <label for="seatNum3">3</label> 
				</span>	<div class="col-4">
					<b>하차역</b>
				</div></div> 
			</div>
			<div class="right">
				<span class="seatBox"> <input hidden type="checkbox"
					name="seatNum1" id="4"> <label for="seatNum1">1</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum2" id="5"> <label for="seatNum2">2</label>
				</span><span class="seatBox"> <input hidden type="checkbox"
					name="seatNum3" id="6"> <label for="seatNum3">3</label>
				</span>
			</div>
		</div>
		<div class="section2">
			<div class="left">
				<span class="seatBox" id="seat7"> <input hidden type="checkbox"
					name="seatNum1" id="7"> <label for="seatNum1">4</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum2" id="8"> <label for="seatNum2">5</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum3" id="9"> <label for="seatNum3">6</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum4" id="10"> <label for="seatNum4">7</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum5" id="11"> <label for="seatNum5">8</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum6" id="12"> <label for="seatNum6">9</label>
				</span>
			</div>
			<div class="right">
				<span class="seatBox"> <input hidden type="checkbox"
					name="seatNum1" id="13"> <label for="seatNum1">4</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum2" id="14"> <label for="seatNum2">5</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum3" id="15"> <label for="seatNum3">6</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum4" id="16"> <label for="seatNum4">7</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum5" id="17"> <label for="seatNum5">8</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum6" id="18"> <label for="seatNum6">9</label>
				</span>
			</div>
		</div>
		<div class="section3">
			<div class="left">
				<span class="seatBox"> <input hidden type="checkbox"
					name="seatNum1" id="19"> <label for="seatNum1">10</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum2" id="20"> <label for="seatNum2">11</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum3" id="21"> <label for="seatNum3">12</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum4" id="22"> <label for="seatNum4">13</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum5" id="23"> <label for="seatNum5">14</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum6" id="24"> <label for="seatNum6">15</label>
				</span>
			</div>
			<div class="right">
				<span class="seatBox"> <input hidden type="checkbox"
					name="seatNum1" id="25"> <label for="seatNum1">10</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum2" id="26"> <label for="seatNum2">11</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum3" id="27"> <label for="seatNum3">12</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum4" id="28"> <label for="seatNum4">13</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum5" id="29"> <label for="seatNum5">14</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum6" id="30"> <label for="seatNum6">15</label>
				</span>
			</div>
		</div>
		<div class="section4">
			<div class="left">
				<span class="seatBox"> <input hidden type="checkbox"
					name="seatNum1" id="31"> <label for="seatNum1">16</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum2" id="32"> <label for="seatNum2">17</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum3" id="33"> <label for="seatNum3">18</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum4" id="34"> <label for="seatNum4">19</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum5" id="35"> <label for="seatNum5">20</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum6" id="36"> <label for="seatNum6">21</label>
				</span>
			</div>
			<div class="right">
				<span class="seatBox"> <input hidden type="checkbox"
					name="seatNum1" id="37"> <label for="seatNum1">16</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum2" id="38"> <label for="seatNum2">17</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum3" id="39"> <label for="seatNum3">18</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum4" id="40"> <label for="seatNum4">19</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum5" id="41"> <label for="seatNum5">20</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum6" id="42"> <label for="seatNum6">21</label>
				</span>
			</div>
		</div>
		<div class="section5">
			<div class="left">
				<span class="seatBox"> <input hidden type="checkbox"
					name="seatNum1" id="43"> <label for="seatNum1">22</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum2" id="44"> <label for="seatNum2">23</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum3" id="45"> <label for="seatNum3">24</label>
				</span>
			</div>
			<div class="right">
				<span class="seatBox"> <input hidden type="checkbox"
					name="seatNum1" id="46"> <label for="seatNum1">22</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum2" id="47"> <label for="seatNum2">23</label>
				</span> <span class="seatBox"> <input hidden type="checkbox"
					name="seatNum3" id="48"> <label for="seatNum3">24</label>
				</span>
			</div>
		</div>
		<div class="section5">
		</div>
	</div>
<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript"> 
// ajax 하차정보 리스트 불러오기
// 등록 좌석 표기 -> 선택 불가 좌석 ? 
	console.log(location.search);
 	$.ajax({
		url: "checkSeat"+location.search,
		success: function(res){
			getSeatInfo(res);
/* 			for(var a of res){
				console.log(a.getoffNm);
				console.log(a.seatNum);
			} */
		},
		error: function(error) {
			console.log(error.status);
		}
	}); // Ajax */
	
	// 이미 선택된 좌석 text 및 css 변경 
	function getSeatInfo(list){
		
		for(var item of list){
			
			var seat = document.getElementById(item.seatNum);
			console.log(seat);
			seat.nextElementSibling.innerHTML = 'X';
			seat.parentElement.className='selected';
			
		}
	}
	
</script>
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