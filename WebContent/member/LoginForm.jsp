<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>LoginForm.jsp</title>
</head>
<body>
	<div>
		<form action="./LoginProc.jsp" method="post">
			<h3>Login</h3>
			<input type="text" name="id" placeholder="아이디를 입력하세요" required/><br />
			<input type="password" name="password" placeholder="비밀번호를 입력하세요" required/><br />
			<input type="submit" value="로그인" /><br />
		</form>
		<a href="./FindId.jsp">아이디 찾기</a>&nbsp;&nbsp;&nbsp;
		<a href="./ResetPwd.jsp">비밀번호 찾기</a>&nbsp;&nbsp;&nbsp;
		<a href="./SignUp.jsp">회원가입</a>		
	</div>
</body>
</html>