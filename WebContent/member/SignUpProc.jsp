<%@page import="util.JSFunction"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="member.MemberDTO"%>
<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("UTF-8");
	
	// �Էµ� ������ ������ ����
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String name = request.getParameter("name");
	String nickname = request.getParameter("nickname");
	String email = request.getParameter("email");
	
	// dto ��ü ����� dao�� �̿��Ͽ� �����ͺ��̽��� �����Ͽ� DB ����
	MemberDAO dao = new MemberDAO();
	MemberDTO dto = new MemberDTO();
	
	dto.setName(name);
	dto.setId(id);
	dto.setPassword(password);
	dto.setGrade("user");
	dto.setNickname(nickname);
	dto.setEmail(email);
	
	// dao���� query�� ���� ����� ���������� result �ȿ� ����
	int result = dao.insertMember(dto);
	dao.close();
	
	//=====================================================
	
	PrintWriter script = response.getWriter();
	
	// ȸ�� ���� ���� ��
	if(result == 1)
		script.println(JSFunction.executeAlert("ȸ�����Կ� �����Ͽ����ϴ�. �α��� �������� �̵��մϴ�.", "./LoginForm.jsp"));
	
	// ȸ�� ���� ���� ��
	else
		script.println(JSFunction.executeBackAlert("ȸ�����Կ� �����Ͽ����ϴ�. ���� �������� ���ư��ϴ�."));
	
	script.close();
%>