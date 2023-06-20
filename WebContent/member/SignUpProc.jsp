<%@page import="util.JSFunction"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="member.MemberDTO"%>
<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("UTF-8");
	
	// 입력된 값들을 변수에 저장
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String name = request.getParameter("name");
	String nickname = request.getParameter("nickname");
	String email = request.getParameter("email");
	
	// dto 객체 값들로 dao를 이용하여 데이터베이스에 접근하여 DB 저장
	MemberDAO dao = new MemberDAO();
	MemberDTO dto = new MemberDTO();
	
	dto.setName(name);
	dto.setId(id);
	dto.setPassword(password);
	dto.setGrade("user");
	dto.setNickname(nickname);
	dto.setEmail(email);
	
	// dao에서 query문 실행 결과를 정수값으로 result 안에 저장
	int result = dao.insertMember(dto);
	dao.close();
	
	//=====================================================
	
	PrintWriter script = response.getWriter();
	
	// 회원 가입 성공 시
	if(result == 1)
		script.println(JSFunction.executeAlert("회원가입에 성공하였습니다. 로그인 페이지로 이동합니다.", "./LoginForm.jsp"));
	
	// 회원 가입 실패 시
	else
		script.println(JSFunction.executeBackAlert("회원가입에 실패하였습니다. 이전 페이지로 돌아갑니다."));
	
	script.close();
%>