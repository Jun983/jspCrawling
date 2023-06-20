<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO" %>
<%@ page import="user.UserDTO" %>
<%@ page import="java.io.PrintWriter" %> <!-- 자바스크립트사용하게함  -->
<% request.setCharacterEncoding("UTF-8"); %> <!--  넘어 오는 데이터 다 uft-8로 인코딩  -->


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%
    
		 /* UserDAO userDAO = new UserDAO();
		int result = userDAO.login(member.getId(),member.getPassword());
		if(result == 1){
			//밑에 줄하나 수정
		
			PrintWriter script = response.getWriter();
			script.println("<sctipt>");
			script.println("location.href='main.jsp'");
			script.println("<sctipt>");
			/* script.print("<script>");
			script.print("alert('로그인성공');");
			script.println("history.back()");
			script.println("/<script>"); */
		/*}
		else if(result == 0){
			//PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('비밀번호 틀립니다 ');");
			script.println("history.back()");
			script.println("</script>");
		}
		else if(result == -1){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('존재하지 않는 아이디 입니다');");
			script.println("history.back()");
			script.println("</script>");
		}
		else if(result == -2){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('데이터 베이스 오류발생  ');");
			script.println("history.back()");
			script.println("</script>");
		}  */
		
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		UserDAO udao = new UserDAO();
		UserDTO user = udao.login(id,password);
		
		
		//세션 설정 
		if(user != null){
			session.setAttribute("id", user.getId());
			session.setAttribute("grade", user.getGrade());
			System.out.println(user.getGrade());
			
		if (user.getGrade().equals("user")){
			response.sendRedirect("./main.jsp");
		} 
		if (user.getGrade().equals("manager")){
			response.sendRedirect("./manage.jsp");
		} 
			
		} 
		
		else{
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('로그인 실패 ');");
			script.println("history.back()");
			script.println("</script>");
		}
		
	%>
		
		



	 

</body>
</html>