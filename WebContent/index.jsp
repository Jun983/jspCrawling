<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	hello world
	<form action="./userJoinAction.jsp" method="post">
		NAME: <input type="text" name="name" /><br>		
		ID: <input type="text" name="id" /><br>		
		PASSWORD: <input type="password" name="password" /><br>	
		nickname<input type="text" name="nickname" /><br>	
		email<input type="text" name="email" /><br>	
		<input type="submit" value="회원가입" />
	</form>
	
</body>
</html>