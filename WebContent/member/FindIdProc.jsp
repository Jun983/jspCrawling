<%@page import="util.ElseFunction"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="util.JSFunction"%>
<%@page import="member.MemberDTO"%>
<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("UTF-8"); 

	// �Է��� �̸��� �̸����� ������ ����
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	
	PrintWriter script = response.getWriter();
	
	// �̸� Ȥ�� �̸����� �Էµ��� �ʾ��� �� ����
	if(name.equals("") || email.equals(""))
		script.println(JSFunction.executeBackAlert("�̸� �Ǵ� �̸����� �Է����� �ʾҽ��ϴ�. ����� �Է����ּ���."));
	
	// dto ��ü ����� dao�� �̿��Ͽ� �����ͺ��̽��� �����Ͽ� �ش� ���� ���õ� id ����
	MemberDAO dao = new MemberDAO();
	MemberDTO dto = new MemberDTO();
	
	dto.setName(name);
	dto.setEmail(email);
	dto.setId(dao.selectMemberFindId(dto));
	dao.close();
	
	// �̸� or �̸��� �߸� �Է� ��
	if(dto.getId().equals("")) {
		script.println(JSFunction.executeBackAlert("���� �߸� �Է��ϼ̽��ϴ�. ����� �Է����ּ���."));
	}
	
	// �̸� or �̸��� ����� �Է� ��
	else {
		String showId = ElseFunction.showID(dto.getId());
		script.println(JSFunction.executeAlert("����� ���̵�� " + showId + "�Դϴ�.", "./LoginForm.jsp"));
	}
	
	
%>