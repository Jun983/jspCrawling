<%@page import="util.JSFunction"%>
<%@page import="member.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="member.MemberDAO" %>
<%@ page import="java.io.PrintWriter" %> <!-- 자바스크립트사용하게함  -->
<%@page import="board_ver3.TemporaryBoardDAO"%>
<%@page import="board_ver3.BoardDTO"%>

<%
	request.setCharacterEncoding("UTF-8"); 

	// 아이디와 패스워드 입력 값 변수 저장
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	// 로그인 값을 데이터베이스 값을 불러와 체크
	member.MemberDAO dao = new member.MemberDAO();
	MemberDTO user = dao.selectMemberLogin(id,password);
	
	//세션 설정  
	if(user != null) {
		session.setAttribute("id", user.getId());
		
		//session.setAttribute("grade",user.getGrade());
		//session.setAttribute(이름, 값)
		
		System.out.println(user.getGrade());
		
		if (user.getGrade().equals("user")){
		response.sendRedirect("../crawling/CrawlingMain.jsp");
		}
		
		if (user.getGrade().equals("manage")){
	response.sendRedirect("../manage/Manage.jsp");
		}
	} 
	
	else {
		PrintWriter script = response.getWriter();
		script.println(JSFunction.execulteBackAlert("로그인 실패"));
	}
	
%>  
<%
	TemporaryBoardDAO check = new TemporaryBoardDAO();
    check.dropTemporaryDAO(id);
%>
