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
          
        </ul>
      </div>
    </div>
  </nav>
  <br>
  <br>

  
<section class="page-section" id="contact">
    <div class="container">

      <!-- Contact Section Heading -->
      <br>
      <br>
      <h3 class="page-section-heading text-center text-uppercase text-secondary mb-0">Set New Password</h3>

      <!-- Icon Divider -->
	 <div class="divider-custom">
        <div class="divider-custom-line"></div>
        <div class="divider-custom-icon">
          <i class="fas fa-star"></i>
        </div>
        <div class="divider-custom-line"></div>
      </div> 
      <br>

      <!-- 비밀번호 재설정  -->
      <div class="row">
        <div class="col-lg-7 mx-auto">
          <!-- To configure the contact form email address, go to mail/contact_me.php and update the email address in the PHP file on line 19. -->
	<br>
          <form method="POST" >
              <input type="hidden" name="csrfmiddlewaretoken" value="RfLaJqq5naRirQI44wHhC1i1Z8SlBzO3lcnpNBEUxliXu90cin3BnvHkVVKnEND2">
			  <div class="control-group">
              <div class="form-group floating-label-form-group controls mb-0 pb-2 floating-label-form-group-with-value">
                <label>기존 비밀번호</label>
                <input class="form-control" id="s_password" type="password" placeholder="Password" value="">
                <p class="help-block text-danger"></p>
              </div>
            </div>
            <br>
            <div class="control-group">
              <div class="form-group floating-label-form-group controls mb-0 pb-2 floating-label-form-group-with-value">
                <label>새로운 비밀번호</label>
                <input class="form-control" id="s_newpassword" type="password" placeholder="New Password" value="">
                <p class="help-block text-danger"></p>
              </div>
            </div>
            <div class="control-group">
                <div class="form-group floating-label-form-group controls mb-0 pb-2">
                  <label>Confirm Password</label>
                  <input class="form-control" id="s_checkpw" type="password" placeholder="Confirm New Password" value="">
                  <p class="help-block text-danger"></p>
                </div>
              </div>
 
            <br>
            <div id="success"></div>
            <div class="form-group" style="text-align:center;">
              <button type="button" class="btn btn-primary btn-xl" id="sendMessageButton" onclick='changePw();'>비밀번호 수정</button>
            </div>
          </form>
        </div>
      </div>

    </div>
  </section>

<script type="text/javascript">
function changePw(){
	
	var data = new FormData();
	
	let password = $('#s_password').val();
	let newpassword = $('#s_newpassword').val();
	let password2 = $('#s_checkpw').val();

	
	console.log(password);
	console.log(newpassword);
	console.log(password2);
	
	if(newpassword!==password2){
		alert("패스워드가 일치하지 않습니다.");
		return false;
	}else{
		
		data.append('password',password);
		data.append('newPassword',newpassword);
		data.append('checkNewPassword',password2);
		
		$.ajax({
		    url: 'setNewPassword',
		    processData: false,  
		    contentType: false, 
		    data: data, 
		    type: 'POST',
		    success: function(res){
		    	console.log("결과"+res);
		    	console.log("newpw"+newpassword);
		    	if(res>0){ //비밀번호 수정 성공시 
		    		alert('비밀번호 수정 완료');
		    		location.href='/';
		    	}else{
		    		alert('다시 시도해주세요');
		    		return false;
		    	}
		    },
		    error : function(e){
		    	console.log(e);
		    }
		})
		
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
      <small>Copyright © Your Website 2019</small>
    </div>
  </section>


<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>


</body></html>