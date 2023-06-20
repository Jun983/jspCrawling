<%@page import="util.JSFunction"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
	
	// 입력된 id값을 변수에 저장
	String id = request.getParameter("id");
	MemberDAO dao = new MemberDAO();
	
	// dao 객체를 이용해 id에 해당하는 grade 값 "user"로 수정
	int result = dao.updateMember(id, "user");
	PrintWriter script = response.getWriter();
	dao.close();
	
	// 관리자 승급 성공 시
	if(result == 1)
		script.println(JSFunction.executeBackAlert("사용자로 내리기 성공했습니다."));
	
	// 관리자 실패 성공 시
	else
		script.println(JSFunction.executeBackAlert("사용자로 내리기 실패했습니다."));
	
	script.close();
%>