<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>아이디 찾기</title>
</head>
<body>
	<h3>아이디 찾기</h3>
	<form action="./FindIdProc.jsp" method="post">
		<input type="text" name="name" placeholder="이름을 입력하세요" required/><br />
		<input type="email" name="email" placeholder="이메일을 입력하세요" required/><br />
		<input type="submit" value="아이디 찾기" />
	</form>
</body>
</html>