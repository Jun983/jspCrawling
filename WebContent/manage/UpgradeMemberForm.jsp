<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 등급 조정</title>
</head>
<body>
	<form action="./UpgradeMemberProc.jsp" method="post">
		<input type="text" name="id" placeholder="아이디를 입력하세요" required><br>
		<input type="submit" value="관리자 승급">
	</form>
</body>
</html>