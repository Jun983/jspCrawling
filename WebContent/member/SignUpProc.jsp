<%@page import="java.io.PrintWriter"%>
<%@page import="user.UserDTO"%>
<%@page import="user.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("UTF-8");
	
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String name = request.getParameter("name");
	String nickname = request.getParameter("nickname");
	String email = request.getParameter("email");
	
	UserDAO dao = new UserDAO();
	UserDTO dto = new UserDTO();
	
	dto.setName(name);
	dto.setId(id);
	dto.setPassword(password);
	dto.setGrade("user");
	dto.setNickname(nickname);
	dto.setEmail(email);
	
	int result = dao.insertMember(dto);
	
	if(result == 1){ 
		System.out.print("ȸ������ ����!!");
		
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('ȸ�����Կ� �����߽��ϴ�');");
		script.println("location.href = 'LoginForm.jsp';");
		script.println("</script>");
		
		script.close();
	}
%>