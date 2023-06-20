<%@page import="util.ElseFunction"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="util.JSFunction"%>
<%@page import="member.MemberDTO"%>
<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("UTF-8"); 

	// 입력한 이름과 이메일을 변수에 저장
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	
	PrintWriter script = response.getWriter();
	
	// 이름 혹은 이메일이 입력되지 않았을 때 제어
	if(name.equals("") || email.equals(""))
		script.println(JSFunction.executeBackAlert("이름 또는 이메일을 입력하지 않았습니다. 제대로 입력해주세요."));
	
	// dto 객체 값들로 dao를 이용하여 데이터베이스에 접근하여 해당 값과 관련된 id 추출
	MemberDAO dao = new MemberDAO();
	MemberDTO dto = new MemberDTO();
	
	dto.setName(name);
	dto.setEmail(email);
	dto.setId(dao.selectMemberFindId(dto));
	dao.close();
	
	// 이름 or 이메일 잘못 입력 시
	if(dto.getId().equals("")) {
		script.println(JSFunction.executeBackAlert("값을 잘못 입력하셨습니다. 제대로 입력해주세요."));
	}
	
	// 이름 or 이메일 제대로 입력 시
	else {
		String showId = ElseFunction.showID(dto.getId());
		script.println(JSFunction.executeAlert("당신의 아이디는 " + showId + "입니다.", "./LoginForm.jsp"));
	}
	
	
%>