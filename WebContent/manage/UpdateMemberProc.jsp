<%@page import="util.JSFunction"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="user.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
	
	String id = request.getParameter("id");
	UserDAO dao = new UserDAO();
	
	int result = dao.updateMember(id, "manage");
	PrintWriter script = response.getWriter();
	
	if(result == 1) { 
		System.out.print("관리자 승급 성공!!");
		script.println(JSFunction.executeAlert("관리자로 올리기 성공했습니다.", "./UpdateMember.jsp"));
	}
	else {
		System.out.print("관리자 승급 실패!!");
		script.println(JSFunction.executeAlert("관리자로 올리기 실패했습니다.", "./UpdateMember.jsp"));
	}
	
	script.close();
%>
    