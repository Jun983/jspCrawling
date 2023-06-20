<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 삭제</title>
</head>
<body>
	<form action="./DeleteMemberProc.jsp">
	<input type="text" name="id" placeholder="삭제할 id를 입력하세요" required/>
	<input type="submit" value="삭제"/>
	</form>
</body>
</html>