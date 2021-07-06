<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html lang="en"><head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SIT DOWN</title>
    <style>
    	.btn-outline-success{
    		margin-right: 20%;
    		margin-top: 20%;
    		margin-left: 20%;
    	}
    </style>

    <!-- Custom fonts for this theme -->
    <link href="/static/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- Theme CSS -->
    <link href="${ pageContext.request.contextPath }/resources/css/freelancer.min.css" rel="stylesheet">
    

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
            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="/accounts/login/">Login</a>
          </li>
          
        </ul>
      </div>
    </div>
  </nav>
  <br>
  <br>

  
<section class="page-section" id="contact">
    <div class="container">

      <!-- Contact Section Heading -->
      <h3 class="page-section-heading text-center text-uppercase text-secondary mb-0">Signup</h2>

      <!-- Icon Divider -->
<!--       <div class="divider-custom">
        <div class="divider-custom-line"></div>
        <div class="divider-custom-icon">
          <i class="fas fa-star"></i>
        </div>
        <div class="divider-custom-line"></div>
      </div> -->

      <!-- login -->
      <div class="row">
        <div class="col-lg-7 mx-auto">
          <!-- To configure the contact form email address, go to mail/contact_me.php and update the email address in the PHP file on line 19. -->
          <form method="POST" action="/accounts/signup/">
              <input type="hidden" name="csrfmiddlewaretoken" value="RfLaJqq5naRirQI44wHhC1i1Z8SlBzO3lcnpNBEUxliXu90cin3BnvHkVVKnEND2">
            <div class="control-group">
              <div class="form-group floating-label-form-group controls mb-0 pb-2 floating-label-form-group-with-value">
                <label>이름</label>
                <input class="form-control" name="username" type="text" placeholder="username">
                <p class="help-block text-danger"></p>
              </div>
            </div>
            <div class="control-group">
            <div class="row">
            <div class="col-lg-9">
              <div class="form-group floating-label-form-group controls mb-0 pb-2 floating-label-form-group-with-value">
                <label>아이디</label>
                <input class="form-control" id="userId" type="text" placeholder="ID">
                <p class="help-block text-danger"></p>
              </div>
             </div>
             <div class="col-lg-3">
             	<button type="button" class="mb-2 mr-2 border-0 btn-transition btn btn-outline-success" id="idcheck" onclick='checkUserId(); return false'>중복 확인</button>
             </div>
            </div>
            </div>
            <div class="control-group">
              <div class="form-group floating-label-form-group controls mb-0 pb-2 floating-label-form-group-with-value">
                <label>비밀번호</label>
                <input class="form-control" name="password1" type="password" placeholder="Password" value="">
                <p class="help-block text-danger"></p>
              </div>
            </div>
            <div class="control-group">
                <div class="form-group floating-label-form-group controls mb-0 pb-2">
                  <label>Confirm Password</label>
                  <input class="form-control" name="password2" type="password" placeholder="Confirm Password" value="">
                  <p class="help-block text-danger"></p>
                </div>
              </div>
            
            <br>
            <div id="success"></div>
            <div class="form-group">
              <button type="submit" class="btn btn-primary btn-xl" id="sendMessageButton">가입하기</button>
            </div>
          </form>
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


<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript">

//아이디 중복 체크
function checkUserId(){
	
	//let id = document.getElementById("userId").val(); // 입력된 아이디값 가져오기
	let id = $('#userId').val();
	console.log("id"+id);
	
	//입력된 값이 없을경우
	if(id===''||id==='undefined'){
		alert("아이디를 입력해주세요");
		return false;
	}
	
	var data=new FormData();
	data.append('id',id);
	
	//var url = "checkID.do";
	//console.log(url);
	
	$.ajax({
		url:"checkID.do",
		type:'post',
		dataType : 'json',
		data:{"id":id},
		success: function(res) {
			if(res==true){
				alert("사용 가능한 아이디입니다.");
				return false;
			}else{
				alert("이미 사용중인 아이디입니다");
				return false;
			}
		}
	});
	
}
  
</script>


</body></html>