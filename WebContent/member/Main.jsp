<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

    <title>Main</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="../css/main.css">
    <link rel="stylesheet" href="assets/css/owl.css">
    <link rel="stylesheet" href="assets/css/animate.css">
    <link rel="stylesheet"href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>

  </head>

<body>
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="page-content">

          <!-- ***** Banner Start ***** -->
          <div class="main-banner">
            <div class="row">
              <div class="col-lg-7">
                <div class="header-text">
                  <h6>Welcome To EduSpider</h6>
                  <h4>Crawling <em>Here</em></h4><br>
                  <form action="" method="post">
                    <div class="input-group">
                      <input style="width:50%;" type="text" name="" placeholder="검색어">
                      <input style="width:30%;" type="text" name="" placeholder="숫자">
                    </div>
                    <div class="main-button">
                      <input type="submit" value="Start Crawling">
                    </div>
                  </form>
                  <div class="main-button">
                    <a href="browse.html">How to Crawling</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- ***** Banner End ***** -->

          <!-- ***** Most Popular Start ***** -->
          <div class="most-popular">
            <div class="row">
              <div class="col-lg-12">
                <div class="heading-section">
                  <h4><em>Crawling</em> Categories</h4>
                </div>
                <div class="row">

                  <!-- Start category insert -->
                  <div class="col-lg-3 col-sm-6">
                    <a href="">
                    <div class="item_plus">
                      <img src="../images/plus3.png" alt="" style="margin-top:15px;">
                    </div>
                  </a>
                  </div>
                  <!-- End category insert -->

                  <!-- Start category view test -->
                  <div class="col-lg-3 col-sm-6">
                    <div class="item">
                      <div class="sub-button">
                        <a href="">수정</a>
                        <a href="">삭제</a>
                        <a href="">글보기</a>
                      </div>
                    </div>
                  </div>
                  <!-- End category view test-->

                  <!-- Start category view -->
                  <div class="col-lg-3 col-sm-6">
                    <div class="item">
                      <div class="category2">
                      <img src="../images/spider-main.PNG" alt="">
                      <h4>카테고리 이름</h4>
                      </div>
                      <div class="sub-button">
                        <a href="">수정</a>
                        <a href="">삭제</a>
                        <a href="">글보기</a>
                      </div>
                    </div>
                  </div>
                  <!-- End category view -->

                  <div class="col-lg-12">
                    <div class="main-button">
                      <a href="browse.html">더보기</a>
                    </div>
                  </div>

                </div>
              </div>
            </div>
          </div>
          <!-- ***** Most Popular End ***** -->
        </div>
      </div>
    </div>
  </div>
  
  <footer>
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <p>Made By 최은희 조병준 김민정
          
          <br>이곳은 일단 미정</p>
        </div>
      </div>
    </div>
  </footer>


  <!-- Scripts -->
  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

  <script src="assets/js/isotope.min.js"></script>
  <script src="assets/js/owl-carousel.js"></script>
  <script src="assets/js/tabs.js"></script>
  <script src="assets/js/popup.js"></script>
  <script src="assets/js/custom.js"></script>


  </body>

</html>
