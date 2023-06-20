<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ page import="user.UserDTO" %>
<%@ page import="user.UserDAO" %>
<%@ page import="java.io.PrintWriter" %>

<%
	request.setCharacterEncoding("UTF-8");
	String name = null;
	String id = null;
	String password = null;
	//기본등급은 user
	String grade = "user";
	String nickname = null;
	String email = null;
	
	if(request.getParameter("name") != null)
	{
		name = (String) request.getParameter("name");
		
	}
	
	if(request.getParameter("id") != null)
	{
		id = (String) request.getParameter("id");
		
	}
	if(request.getParameter("password") != null){
		password = (String) request.getParameter("password");
	}

	if(request.getParameter("nickname") != null){
		nickname = (String) request.getParameter("nickname");
	}
	if(request.getParameter("email") != null){
		email = (String) request.getParameter("email");
	}
	
	if(id ==null){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('입력이 안 된 사항이 있습니다.');");
		script.println("history.back();");
		script.println("</script>");
		script.close();
		return;
	}
	UserDAO userDAO = new UserDAO();
	int result = userDAO.join(name,id,password,grade,nickname,email);
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

