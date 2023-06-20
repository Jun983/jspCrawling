<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO" %>
<%@ page import="java.io.PrintWriter" %> <!-- 자바스크립트사용하게함  -->
<jsp:useBean id = "member" class="user.UserDTO" scope="page"/> <!-- page 를 넘으므로 현재의 페이지만 bens가 사용  -->
<jsp:setProperty name="member" property="id"/>
<jsp:setProperty name="member" property="password"/>

<%
	request.setCharacterEncoding("UTF-8"); 

	UserDAO userDAO = new UserDAO();
	int result = userDAO.login(member.getId(),member.getPassword());
	if(result == 1){
		//밑에 줄하나 수정
	
		PrintWriter script = response.getWriter();
		script.println("<sctipt>");
		script.println("location.href='../main/Main.jsp'"); // 
		script.println("</sctipt>");
		/* script.print("<script>");
		script.print("alert('로그인성공');");
		script.println("history.back()");
		script.println("/<script>"); */
	}
	else if(result == 0){
		PrintWriter script = response.getWriter();
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
	} 

%>
