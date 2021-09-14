<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
			        <!-- 로그인 했을 경우 -->
					<c:if test="${user !=null }">
						<li class="nav-item mx-0 mx-lg-1"><a
							class="nav-link py-3 px-0 px-lg-3 rounded" href="#portfolio">Menu</a></li>
						<li class="nav-item mx-0 mx-lg-1"><a
							class="nav-link py-3 px-0 px-lg-3 rounded"
							onclick="alert('로그아웃완료');" href="/user/logout">LOGOUT</a></li>
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
  
  <section class="page-section" id="contact">
    <div class="container">
    
      <!-- Contact Section Heading -->
      <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">하차정보 등록</h2>

      <!-- Icon Divider -->
      <div class="divider-custom">
        <div class="divider-custom-line"></div>
        <div class="divider-custom-icon">
          <i class="fas fa-star"></i>
        </div>
        <div class="divider-custom-line"></div>
      </div>
    
    <div class="row">
 	<div class="col-lg-7 mx-auto">
    <form action="checkInfo" method="get">
        <div class="control-group" style="width:350px; margin:0 auto;" >
          	<select name="subwayId" id="selectLine" class="form-control">
        	<option value="">노선을 선택해주세요</option>
        	<c:forEach items="${lineInfo}" var="line">
     			<option value="${line.id}"><c:out value="${line.line}"/></option>
			</c:forEach>
			</select>
        </div>
        <br>
        <div class="control-group" style="width:350px; margin:0 auto;">
        	<select name="trainNo" id="selectTrain" class="form-control">
        		<option>열차를 선택해주세요 </option>
        	</select>
        </div>
        <br>
        <div class="control-group" style="width:350px; margin:0 auto;">
        	<select name="carNum" id="selectNum" class="form-control">
        		<option value="1">1량</option>
        		<option value="2">2량</option>
        		<option value="3">3량</option>
        		<option value="4">4량</option>
        		<option value="5">5량</option>
        		<option value="6">6량</option>
        	</select>
        </div>
        
        <br>
         <div class="control-group" style="text-align:center">
        	<button type="submit" class="btn btn-primary btn-xl" id="sendMessageButton" >조회하기</button>
    	</div>
    </form>
    </div>
    </div>
    </div>
</section>
<script type="text/javascript" src="${ pageContext.request.contextPath }/resources/js/main.js"/></script>
<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript"> 
$(function(){
	
	let getoffInfoBtn = document.getElementById("sendMessageButton");
	
	// 해당 노선 열차 List 가져오기
	$("#selectLine").on('change',function(){
		var line = $('#selectLine option:selected').text();
		console.log(line);
		$.ajax({
			url: 'trainList',
			type: 'post',
			data: { line : line },
			success: function(res){
				$('#selectTrain').empty();
				$('#selectTrain').html(res);
				
			},
			error: function(error) {
				console.log(error.status);
			}
		}); // Ajax
		
	})
	
	getoffInfoBtn.addEventListener('click',function() {
		fn_isSelectInfo();
	},false);
	
})    

// 정보 입력 check function
function fn_isSelectInfo(){
		
	var line = $('#selectLine option:selected').val();
	var train = $('#selectTrain option:selected').val();

	console.log(line);
	console.log(train);
	
	if(line==''||train===''){
		alert('항목을 모두 선택해주세요.');
		return false;
	}
	
	var subwayNm_val = $('#selectLine option:selected').text(); // 노선
	var statnTmn_val = $('#selectTrain option:selected').attr('statntnm'); // 종착역
	
	//alert(statnTmn_val);
	//console.log("종착역=>"+statnTmn_val);
	
	//input value 추가
	$('#id_subwayNm').attr('value',subwayNm_val); // 노선
	$('#id_statnTmn').attr('value',statnTmn_val); // 종착역
	

	document.getElementById("getoffInfoForm").submit();
	
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
      <small>Copyright © Your Website 2019</small>
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