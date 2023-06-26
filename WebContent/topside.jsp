<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width",initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css" />
<title>JSP 게시판 웹 사이트</title>
</head>
<body>
 	<!-- navigation 하나의 웹사이트의 전반적인 것을 보여줌  --> 
 	<nav class="navbar navbar-default">
 		<!-- header라는 것은 홈페이지의 로고 같은 것을 담는 영역을 말함 -->
 		<div class="navbar-header">
 			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
 				<span class="icon-bar"></span>
 				<span class="icon-bar"></span>
 				<span class="icon-bar"></span>
 			</button>
 			<a class="navbar-brand" href="main.jsp">LOGO</a>
 		</div>
 		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
 			<ul class="nav navbar-nav">
 				<li><a href="main.jsp">메인</a></li>
 				<li><a href="bbs.jsp">게시판</a></li>
 			</ul>
 			<ul class="nav navbar-nav navbar-right">
 				<li class="dropdown">
 				<!-- #을 넣어서 뭐라도 가리키게 일단 만들어둠 -->
 					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
 						프로필  <span class="caret"></span></a>
 					<ul class="dropdown-menu">
 						<!-- 현재가 로그인 페이지이기 때문에 파란색이 들어와 있는거임  -->
 						<li class="active"><a href="login.jsp"> 선택1</a></li>
 						<li><a href="join.jsp">선택2</a></li>
 					</ul>
 				</li>
 			</ul>
 		</div>
 	</nav>
 	<div class="container">
 		<div class="col-lg-4"></div>
 		<div class="col-lg-4">
 			<<!-- div class="jumbotron" style="padding-top:20px;">
 				<form method="post" action="loginAction.jsp">
 					<h3 style="text-align:center;">로그인 화면</h3>
 					<div class="from-group">
 						maxlength를 설정함으로 아이디 글자가 너무 길어지지 않도록 제안을 둠 
 						<input type="text" class="form-control" placeholder="아이디" name="userID" maxlength="20" />
 					</div>
 					<div class="from-group">
 						<input type="password" class="form-control" placeholder="비밀번호" name="userPassword" maxlength="20" />
 					</div>
 					<input type="submit" class="btn btn-primay form-control" value="로그인" />
 				</form>
 			</div>
 		</div> -->
 		<div class="col-lg-4"></div>
 	</div>
 	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>
































