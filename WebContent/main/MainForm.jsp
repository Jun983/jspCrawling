<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="category.CategoryDAO"%>
<%@page import="category.CategoryDTO"%>

<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.List"%> 


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
  
 <%


	CategoryDAO dao = new CategoryDAO();
	CategoryDTO dto = new CategoryDTO(); 
	
	String userId = (String)session.getAttribute("id");
	List<CategoryDTO> kategorieList = dao.getListDAO(userId);
	 
%>

<body>
  <%@include file="../main/Header.jsp" %>
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
                  <form action="../crawling/CrawlingTemporaryProc.jsp" method="post">
                    <div class="input-group">
                      <input style="width:150%;" type="text" name="keyword" placeholder="검색어">                   
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
                      <!-- 500 270 -->
                      <a href="#none" onclick="window.open('../category/InsertCategoryForm.jsp','new','scrollbars=yes,resizable=no width=500 height=270, left=600,top=400');return false">
                      <img src="../img/plus3.png" alt="" style="margin-top:15px;"></a>
                    </div>
                  </a>
                  </div>
                  <!-- End category insert -->
				
                       <!-- 
                  Start category view test
                  <div class="col-lg-3 col-sm-6">
                    <div class="item">
                      <img src="../img/spider-main.PNG" alt="">
                      <div class="sub-button">
                        <a href="">수정</a>
                        <a href="">삭제</a>
                        <a href="">글보기</a>
                      </div>
                    </div>
                  </div>
                  End category view test

                   -->
    
	<%
	 		for(CategoryDTO f : kategorieList){
	 	%>
                           
                  <!-- Start category view -->
                  <div class="col-lg-3 col-sm-6">
                    <div class="item">
                      <div class="category2">
                      <img src="../img/spider-main.PNG" alt="">
                      <h4><%= f.getCategory() %></h4>
                      </div>
                      <div class="sub-button">
                        <a href="#none" onclick="window.open('../category/UpdateCategoryForm.jsp?category=<%= f.getCategory()%>','new','scrollbars=yes,resizable=no width=500 height=270, left=600,top=400');return false">
                        	수정
                        </a>
                        <a href="../category/DeleteCategoryProc.jsp?category=<%= f.getCategory() %>">삭제</a>
                        <a href="../board/BoardList.jsp">글보기</a>
                      </div>
                    </div>
                  </div>
                  <!-- End category view -->
                  
                  
       	<% }%>           
                  

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
