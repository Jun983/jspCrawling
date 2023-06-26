<%@page import="util.JSFunction"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	// 세션 변수에 저장되어 있는 id값 변수 저장
	String id = (String)session.getAttribute("id");

	PrintWriter script = response.getWriter();
	
	// id 세션 자원 해제
	if(id != null){
		session.setAttribute("id", null);
	}
	
	script.println(JSFunction.executeAlert("로그아웃 성공하였습니다.", "./LoginForm.jsp"));
	script.close();
%>