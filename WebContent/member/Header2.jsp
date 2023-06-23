<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>


<head>
	<link rel="stylesheet" href="../css/header.css"> 
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
	<script>
		$(document).ready(function(){
	        $(".dropdown-toggle").mouseover(function(){
	            $(this).next(".dropdown-menu").stop().slideDown(200);
	        });
	        $(".dropdown-menu").mouseleave(function(){
	            $(this).stop().slideUp(200);
	        });
	    });
	</script> 
</head>
<body>

	<header class="header-area header-sticky">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <nav class="main-nav">            	
                    <!-- ***** Logo Start ***** -->
                    <a href="index.html" class="logo">
                        <img src="img/spider-web.png" alt="logo" height="120vh" margin-right="50px">
                        <span id="logo">EduSpider</span>
                    </a>
                    <!-- ***** Logo End ***** -->

                    <!-- ***** Menu Start ***** -->
                    <ul class="nav">
                        <li><a href="index.html" class="active">Home</a></li>
                        <li><a href="#" class="dropdown-toggle">Profile <img src="img/spider-main.PNG" alt=""></a>
	                        <ul class="dropdown-menu"> 						
		 						<li class="menu"><a href="login.jsp">선택1</a></li>
		 						<li class="menu"><a href="join.jsp">선택2</a></li>
		 						<li class="menu"><a href="join.jsp">선택3</a></li>
		 						<li class="menu"><a href="join.jsp">선택4</a></li>
		 					</ul>
                        </li>
                    </ul>
                    <!-- ***** Menu End ***** -->
                </nav>
            </div>
        </div>
    </div>
  </header>



</body>