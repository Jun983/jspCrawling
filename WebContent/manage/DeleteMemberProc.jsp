<%@page import="util.JSFunction"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
	
	// 입력된 id 값을 변수에 저장
	String id = request.getParameter("id");
	
	// dao 객체를 이용해 id에 해당하는 데이터 값 전부 삭제
	MemberDAO dao = new MemberDAO();
	
	int result = dao.deleteMember(id);
	dao.close();
	
	PrintWriter script = response.getWriter();
	
	// 계정 삭제 성공 시
	if(result == 1)
		script.println(JSFunction.executeBackAlert("계정 삭제에 성공하셨습니다. 이전 페이지로 돌아갑니다."));
	
	// 계정 삭제 실패 시
	else
		script.println(JSFunction.executeBackAlert("계정 삭제에 실패하였습니다. 이전 페이지로 돌아갑니다."));
	
	script.close();



%>
   