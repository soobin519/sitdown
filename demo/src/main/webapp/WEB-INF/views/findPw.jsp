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
        <ul class="navbar-nav ml-auto">
          <li class="nav-item mx-0 mx-lg-1">
            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="/">Menu</a>
          </li>
          
          <li class="nav-item mx-0 mx-lg-1">
            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="/user/join">JOIN US</a>
          </li>
          
        </ul>
      </div>
    </div>
  </nav>
  
  <section class="page-section" id="contact">
    <div class="container">

      <!-- Contact Section Heading -->
      <br>
      <br>
      <br>
      <br>
      <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">???????????? ??????</h2>

      <!-- Icon Divider -->
      <div class="divider-custom">
        <div class="divider-custom-line"></div>
        <div class="divider-custom-icon">
          <i class="fas fa-star"></i>
        </div>
        <div class="divider-custom-line"></div>
      </div>

      <!-- ???????????? ?????? -->
      <div class="row">
        <div class="col-lg-8 mx-auto">
          <!-- To configure the contact form email address, go to mail/contact_me.php and update the email address in the PHP file on line 19. -->
          <form method = "POST">
              <input type="hidden" name="csrfmiddlewaretoken" value="jSSP77gU6Koyd4XtS8L2UgFKhpVtyfFbwi3KbokHRMPHNfKTygAuECgMyw8NFhbS">
            <div class="control-group">
              <div class="form-group floating-label-form-group controls mb-0 pb-2">
                <label>id</label>
                <input class="form-control" id="id" name="id" type="text" placeholder="id" required="required" data-validation-required-message="Please enter your ID.">
                <p class="help-block text-danger"></p>
              </div>
            </div>
            <div class="control-group">
              <div class="form-group floating-label-form-group controls mb-0 pb-2">
                <label>email</label>
                <input class="form-control" id="email" name="email" type="text" placeholder="email" required="required" data-validation-required-message="Please enter your Email.">
                <p class="help-block text-danger"></p>
              </div>
            </div>
            
            <div id="success"></div>
            <br>
            
            <div class="form-group">
              <button onclick="findPw();" type="button" class="btn btn-primary btn-xl" id="sendMessageButton">???????????? ??????</button>
            </div>
          </form>
        </div>
      </div>

    </div>
  </section>
  
<script type="text/javascript">
  	function findPw(){ // ????????? pw ??????
  		
  		var data = new FormData();
  		
  		let id = $('#id').val()
  		let email = $('#email').val()
  		console.log("id: "+id);
  		console.log("email: "+email);
  		
  		//????????? id??? ?????? ??????
  		if(id===''||id==='undefined'){
  			alert("???????????? ??????????????????");
  			return false;
  		}  		
  		//????????? ???????????? ?????? ??????
  		else if(email===''||email==='undefined'){
  			alert("???????????? ??????????????????");
  			return false;
  		}
  		
  		$.ajax({
  			url: 'sendPwdMail',
  			data: {
  				userId : $('#id').val(),
  				email : $('#email').val(),
  			},
  			type: 'POST',
  			success: function(res){
  				console.log("res"+res)
  				
				alert("success");
  				location.replace("/user/viewpw?id="+id+"&email="+email)
   				/*location.replace("/user/viewpw?id="+userId+"&email="+email)*/
  				return false; 
  				
  			},
  			error: function(e){
  				alert('????????? ?????? ?????????????????? ????????????. ??????????????????.');
  				console.log(e);
  			}
  		})  
  		

  	}
  </script>
  

  <!-- Footer -->
  <footer class="footer text-center">
    <div class="container">
      <div class="row">

        <!-- Footer Location -->
        <div class="col-lg-4 mb-5 mb-lg-0">
          <h4 class="text-uppercase mb-4">Location</h4>
            <!--<p class="lead mb-0">-->
          <p style="font-size:20px; color:white; font-family:'210 Manbalchungchun'">????????? ????????? ????????? ???????????? 1342
            <br>???????????????</p>
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