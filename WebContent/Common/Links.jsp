<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- 
	<%String grade = (String)session.getAttribute("grade"); 
	if(grade.equals("user"))
	{
	%>
	<form action="main.jsp"></form>
	<%} %> --%>
	
		<% if(session.getAttribute("id") == null ) 
		{
			%> <!-- 여기로그인 페이지 연동 ex) <a href="../login.jsp">로그</a>  -->
		<% 	
			}else{
				
		%> <!-- 여기에 로그아웃  페이지 --> 
		<%
			}
		%>		
		<!-- 로그인과 로그아웃 영역  끝  -->
		
		<%
			if(session.getAttribute("grade").equals("user"))
			{
		%> <!-- 여기에 일반 유저 화면 페이지 -->
		<%
			}else{
					
		%> <!-- 여기에 매니저 페이지 --> 
		<%
			}
		%>
		
	

</body>
</html>