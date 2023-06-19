<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String id = "abcdefg";
	String showId = "";	

	out.print(id.length() + "\n");

	
	for(int i = 0; i < id.length(); i++){
		if(i % 2 == 1)
			showId += '*';
		else
			showId += id.charAt(i);
	}
	
	out.print(showId);
	
	
%>