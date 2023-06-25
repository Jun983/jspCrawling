<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="board_ver3.TemporaryBoardDAO"%>
<%@page import="board_ver3.BoardDTO"%>
<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.List"%> 

<%
	String Num[] = request.getParameterValues("num");
	String userId = (String)session.getAttribute("id");
	
	//sesstionid로 받아와야함 
/* 	
	for(int i=0; i < Num.length; i++){
		System.out.println(Num[i]);
	} */
	
	
	TemporaryBoardDAO dao = new TemporaryBoardDAO(); 
	BoardDTO dto = new BoardDTO(); 
	
	List<BoardDTO> boardList = dao.selectBoardDAO(Num,userId);
	dao.insertBoardDAO(boardList,userId);
	
	  
	
%>

<table><%-- 
	<tr>
		<!-- <th>num</th> -->
		<th>keyword</th>
		<th>site</th>
		<th>title</th>
		<th>content</th>
		<th>link</th>
		<th>kategorie</th>
		
	</tr>
	

	<% for(BoardDTO f : boardList){
		%>
		<tr>
			<td><%= f.getNum() %></td>
	        <td><%= f.getKeyword() %></td>
	        <td><%= f.getSite() %></td>
	        <td><%= f.getTitle() %></td>
	        <td><%= f.getContent() %></td>
	        <td><%= f.getLink() %></td>
	        <td><%= f.getKategorie() %></td>
	        <<td><input type="checkbox" name="num" value="<%= f.getNum() %>"/></td>
		</tr>
		<% 
	}
	
	%> --%>
	<!-- <tr>
		<td><input type="submit" value="select" /></td>
	</tr> -->
</table>