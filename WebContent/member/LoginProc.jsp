<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	out.print("아이디: " + id + ", 비밀번호: " + password);
%>