<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>헤더 페이지</title>
    <!-- Bootstrap core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">


    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="../css/templatemo-cyborg-gaming.css">
    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
    
</head>
<body>
	 <header class="header-area header-sticky"> 
    <div class="container">
        <div class="row">
            <div class="col-12">
                <nav class="main-nav">            	
                    <!-- ***** Logo Start ***** -->
                    <a href="index.html" class="logo">
                        <img src="../img/spider-web.png" alt="logo" height="100vh" margin-right="50px">
                        <span id="logo">EduSpider</span>
                    </a>
                    <!-- ***** Logo End ***** -->

                    <!-- ***** Menu Start ***** -->
                    <ul class="nav">
                        <li><a href="index.html" class="active">Home</a></li>
                        <li><a href="#" class="dropdown-toggle">Profile <img src="../img/spider-main.PNG" alt=""></a>
	                        <ul class="dropdown-menu" style="width:200px;">
		 						<!-- 현재가 로그인 페이지이기 때문에 파란색이 들어와 있는거임  -->
		 						<li class="width-long"><a href="login.jsp">선택1</a></li>
		 						<li class="width-long"><a href="join.jsp">선택2</a></li>
		 					</ul>
                        </li>
                    </ul>
                    <!-- ***** Menu End ***** -->
                </nav>
            </div>
        </div>
    </div>
	</header>
	<script>
		$(document).ready(function() {
		    $('.dropdown-toggle').mouseover(function() {
		        $('.dropdown-menu').toggle();
		    });
		});
	</script> 
</body>
</html>