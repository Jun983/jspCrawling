<%@page import="member.MemberDAO"%>
<%@page import="util.JSFunction"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
	request.setCharacterEncoding("UTF-8"); 

	// �Է��� ���̵�� �н����带 ������ ����
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	PrintWriter script = response.getWriter();
	
	// ���̵� �Ǵ� ��й�ȣ�� �Էµ��� �ʾ��� �� ����
	if(id.equals("") || password.equals(""))
		script.println(JSFunction.executeBackAlert("���̵� �Ǵ� �ٲ� ��й�ȣ�� �Է����� �ʾҽ��ϴ�. ����� �Է����ּ���."));
	
	// dto ��ü ����� dao�� �̿��Ͽ� �����ͺ��̽��� �����Ͽ� �ش� ���� ���õ� pwd ����
	MemberDAO dao = new MemberDAO();
	int result = dao.updateMemberResetPassword(id, password);
	dao.close();
	
	// �н����� ���� ����
	if(result == 1) {
		script.println(JSFunction.executeAlert("�н����尡 �˸°� ����Ǿ����ϴ�. �α��� �������� �̵��մϴ�.", "./LoginForm.jsp"));
	}
	
	// �佺���� ���� ����
	else {
		script.println(JSFunction.executeBackAlert("���̵� �˸°� �Է����� �ʾҽ��ϴ�. ����� �Է����ּ���."));
	}

%>