<%@page import="java.io.PrintWriter"%>
<%@page import="util.JSFunction"%>
<%@page import="member.MemberDTO"%>
<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("UTF-8"); 

	String name = request.getParameter("name");
	String email = request.getParameter("email");
	
	PrintWriter script = response.getWriter();
	
	if(name.equals("") || email.equals(""))
		script.println(JSFunction.execulteBackAlert("���� ���� �� �Է����� �ʾҽ��ϴ�."));
	
	member.MemberDAO dao = new member.MemberDAO();
	MemberDTO dto = new MemberDTO();
	
	dto.setName(name);
	dto.setEmail(email);
	
	String id = dao.findId(dto);
	dto.setId(id);
	System.out.println("���̵�: " + dto.getId());
	String showId = "";
	String msg = "";
	
	if(dto.getId().equals("")) {
		msg = "���� �߸� �Է��ϼ̽��ϴ�.";
	}
	else {
		for(int i = 0; i < dto.getId().length(); i++){
	if(i % 2 == 1)
		showId += '*';
	else
		showId += id.charAt(i);
		}
		
		msg = "����� ���̵�� " + showId + "�Դϴ�.";
	}
	
	script.println(JSFunction.executeAlert(msg, "./LoginForm.jsp"));
%>