<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en"><head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SIT DOWN</title>

    <!-- Custom fonts for this theme -->
    <link href="/static/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- Theme CSS -->
    <link href="/static/css/freelancer.min.css" rel="stylesheet">
    

<style>

    body {
      
        margin: 0;
        padding: 0;
        font-family: sans-serif;
        background: #ffc107;
        
    }

    button.left { 
      width:200px;
      height:100px;
      background-color: yellowgreen;
      border-top-left-radius: 5px;
      border-bottom-left-radius: 5px;
      border-top-right-radius: 5px;
      border-bottom-right-radius: 5px;
      border: 1px solid yellowgreen;
      padding:20px;
      margin-bottom:-20px;
      margin-right:80px;
      margin-left:-300px;

    }

    button.right {
      width:200px;
      height:100px;
      background-color: yellowgreen;
      border-top-left-radius: 5px;
      border-bottom-left-radius: 5px;
      border-top-right-radius: 5px;
      border-bottom-right-radius: 5px;
      border: 1px solid yellowgreen;
      padding:20px;
      margin-bottom:-20px;
      margin-right:-800px;
      margin-left:80px;
  
    }
    
    .box {
        width: 800px;
       
        background: white;
        text-align: center;
    }

    .hide {
        display: none;
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
            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="/accounts/login/">Login</a>
          </li>
          
        </ul>
      </div>
    </div>
  </nav>
  <br>
  <br>

  

<section style="font-family:'210 맨발의청춘'" class="page-section views-selector" id="contact">
        <div align="center" class="container">
      <form class="box" action="/getoff/getoffResult/" method="GET">
        <div class="hide">
          <input value="" name="trainId" id="trainId">
          <input value="" name="getOff">
          <input value="1" name="carNum">
        </div>
<div align="center">
        <br><br>
    <h1 style="font-family:'210 맨발의청춘'">현재 앉아있는 좌석을 선택하세요.</h1>
    <br><br>
<table>
  <tbody><tr>
    <td>
      <button class="left" type="submit" value="1" name="sitSite">1번 좌석 </button>
          <br><br>
      <button class="left" type="submit" value="2" name="sitSite">2번 좌석 </button>
            <br><br>
      <button type="button" class="left" value="3" name="sitSite">3번 좌석 </button>
              <br><br>
              <br><br>
      <button class="left" type="submit" value="4" name="sitSite">4번 좌석 <br>
      </button>
                <br><br>
      <button class="left" type="submit" value="5" name="sitSite">5번 좌석 <br>
      </button>
                  <br><br>
      <button class="left" type="submit" value="6" name="sitSite">6번 좌석 <br>
      </button>
                    <br><br>
      <button class="left" type="submit" value="7" name="sitSite">7번 좌석 <br>
      </button>
                      <br><br>
      <button class="left" type="submit" value="8" name="sitSite">8번 좌석 <br>
      </button>
                        <br><br>
      <button class="left" type="submit" value="9" name="sitSite">9번 좌석 <br>
      </button>
                          <br><br>
      <button class="left" type="submit" value="10" name="sitSite">10번 좌석 <br>
      </button>
                            <br><br>
      <button class="left" type="submit" value="11" name="sitSite">11번 좌석 <br>
                              </button>
                              <br><br>
                              <br><br>
      <button class="left" type="submit" value="12" name="sitSite">12번 좌석 <br>
                                </button>
                                <br><br>
      <button class="left" type="submit" value="13" name="sitSite">13번 좌석 <br>
                                  </button>
                                  <br><br>
    <button class="left" type="submit" value="14" name="sitSite">14번 좌석 <br>
                                    </button>
                                    <br><br>
      <button class="left" type="submit" value="15" name="sitSite">15번 좌석 <br>
                                      </button>
                                      <br><br>
    <button class="left" type="submit" value="16" name="sitSite">16번 좌석 <br>
                                        </button>
                                        <br><br>
    <button class="left" type="submit" value="17" name="sitSite">17번 좌석 <br>
                                          </button>
                                          <br><br>
    <button class="left" type="submit" value="18" name="sitSite">18번 좌석 <br>
                                            </button>
                                            <br><br>
    <button class="left" type="submit" value="19" name="sitSite">19번 좌석 <br>
                                              </button>
                                              <br><br>
                                              <br><br>
   <button class="left" type="submit" value="20" name="sitSite">20번 좌석 <br>
                                                </button>
                                                <br><br>
    <button class="left" type="submit" value="21" name="sitSite">21번 좌석 <br>
                                                  </button>
                                                  <br><br>
    <button class="left" type="submit" value="22" name="sitSite">22번 좌석 <br>
                                                    </button>
                                                    <br><br>
                                                  </td>
      <td>                                            
    <button class="right" type="submit" value="23" name="sitSite">23번 좌석 <br>
          </button>
          <br><br>
      <button class="right" type="submit" value="24" name="sitSite">24번 좌석 <br>
            </button>
            <br><br>
      <button class="right" type="submit" value="25" name="sitSite">25번 좌석 <br>
              </button>
              <br><br>
              <br><br>
      <button class="right" type="submit" value="26" name="sitSite">26번 좌석 <br>
                </button>
                <br><br>
      <button class="right" type="submit" value="27" name="sitSite">27번 좌석 <br>
                  </button>
                  <br><br>
      <button class="right" type="submit" value="28" name="sitSite">28번 좌석 <br>
                    </button>
                    <br><br>
      <button class="right" type="submit" value="29" name="sitSite">29번 좌석 <br>
                      </button>
                      <br><br>
      <button class="right" type="submit" value="30" name="sitSite">30번 좌석 <br>
                        </button>
                        <br><br>
      <button class="right" type="submit" value="31" name="sitSite">31번 좌석 <br>
                          </button>
                          <br><br>
      <button class="right" type="submit" value="32" name="sitSite">32번 좌석 <br>
                            </button>
                            <br><br>
      <button class="right" type="submit" value="33" name="sitSite">33번 좌석 <br>
                              </button>
                              <br><br>
                              <br><br>
      <button class="right" type="submit" value="34" name="sitSite">34번 좌석 <br>
                                </button>
                                <br><br>
      <button class="right" type="submit" value="35" name="sitSite">35번 좌석 <br>
                                  </button>
                                  <br><br>
    <button class="right" type="submit" value="36" name="sitSite">36번 좌석 <br>
                                    </button>
                                    <br><br>
      <button class="right" type="submit" value="37" name="sitSite">37번 좌석 <br>
                                      </button>
                                      <br><br>
    <button class="right" type="submit" value="38" name="sitSite">38번 좌석 <br>
                                        </button>
                                        <br><br>
    <button class="right" type="submit" value="39" name="sitSite">39번 좌석 <br>
                                         </button>
                                          <br><br>
    <button class="right" type="submit" value="40" name="sitSite">40번 좌석 <br>
                                            </button>
                                            <br><br>
    <button class="right" type="submit" value="41" name="sitSite">41번 좌석 <br>
                                              </button>
                                              <br><br>
                                              <br><br>
   <button class="right" type="submit" value="42" name="sitSite">42번 좌석 <br>
                                                </button>
                                                <br><br>
    <button class="right" type="submit" value="43" name="sitSite">43번 좌석 <br>
                                                  </button>
                                                  <br><br>
    <button class="right" type="submit" value="44" name="sitSite">44번 좌석 <br>
                                                    </button>
                                                    <br><br>
                                                  </td>
                                                  </tr>

                                                  </tbody></table> 
                                                  </div>
<p></p>



<button type="submit" name="" value="OK">확인하기</button>
<br><br>
</form>


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
      <small>Copyright © Your Website 2019</small>
    </div>
  </section>

  <!-- Bootstrap core JavaScript -->
  <script src="/static/vendor/jquery/jquery.min.js"></script>
  <script src="/static/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Plugin JavaScript -->
  <script src="/static/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Contact Form JavaScript -->
  <script src="/static/js/jqBootstrapValidation.js"></script>
  <script src="/static/js/contact_me.js"></script>

  <!-- Custom scripts for this template -->
  <script src="/static/js/freelancer.min.js"></script>




</body></html>
