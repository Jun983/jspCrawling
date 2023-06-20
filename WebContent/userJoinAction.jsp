<%@page import="user.UserDTO"%>
<%@page import="user.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ page import="java.io.PrintWriter" %>

<%
	request.setCharacterEncoding("UTF-8");

	String name = request.getParameter("id");
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String grade = "user"; //기본등급은 user
	String nickname = request.getParameter("nickname");
	String email = request.getParameter("email");
	
	UserDAO dao = new UserDAO();
	UserDTO dto = new UserDTO();
	
	dto.setName(name);
	dto.setId(id);
	dto.setPassword(password);
	dto.setGrade(grade);
	dto.setNickname(nickname);
	dto.setEmail(email);
	
	int result = dao.join(dto);
	
	if(result == 1){ 
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('회원가입에 성공했습니다');");
		script.println("location.href = 'index.jsp';");
		script.println("</script>");
		script.close();
		return;
	}

%>

