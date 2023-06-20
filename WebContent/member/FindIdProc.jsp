<%@page import="user.UserDTO"%>
<%@page import="user.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("UTF-8"); 

	String name = request.getParameter("name");
	String email = request.getParameter("email");
	
	UserDAO dao = new UserDAO();
	UserDTO dto = new UserDTO();
	
	dto.setName(name);
	dto.setEmail(email);
	
	String id = dao.findId(dto);
	dto.setId(id);
	System.out.println("아이디: " + dto.getId());
	String showId = "";
	String msg = "";
	
	if(dto.getId().equals("")) {
		msg = "값을 잘못 입력하셨습니다.";
	}
	else {
		for(int i = 0; i < dto.getId().length(); i++){
			if(i % 2 == 1)
				showId += '*';
			else
				showId += id.charAt(i);
		}
		
		msg = "당신의 아이디는 " + showId + "입니다.";
	}
	
	out.print(msg);
%>