<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width",initial-scale="1">
<link rel="stylesheet" href="../bootstrap/css/bootstrap.css" />
<link rel="stylesheet" href="header.css" />
<title>JSP 게시판 웹 사이트</title>
</head>
<body>
 	<!-- navigation 하나의 웹사이트의 전반적인 것을 보여줌  --> 
 	<nav class="navbar navbar-default">
 		<!-- header라는 것은 홈페이지의 로고 같은 것을 담는 영역을 말함 -->
 		<div class="navbar-header">
 		
 			<a class="navbar-brand" href="main.jsp"><img src="../images/spider-web.png" alt="" /><span>EduSpider</span></a>
 		</div>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="">Home</a></li>
			<li class="dropdown">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
					접속하기 <span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="login.jsp">로그인</a></li>
					<li><a href="join.jsp">회원가입</a></li>
				</ul>
			</li>
		</ul> 
 	</nav>
 	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="../bootstrap/js/bootstrap.js"></script>
</body>
</html>
































