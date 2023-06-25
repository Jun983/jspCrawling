<%@page import="board_ver3.TemporaryBoardDAO"%>
<%@page import="board_ver3.BoardDTO"%>
<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.List"%> 



    <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String userId = request.getParameter("tablename");
	System.out.println(userId);

	TemporaryBoardDAO dao = new TemporaryBoardDAO();
	BoardDTO dto = new BoardDTO(); 
	
	List<BoardDTO> boardList = dao.getListDAO(userId);
	 
	

	
	%>
<form action="../crawling/CrawlingTemporaySelectProc.jsp?" method="get">
<table>
	<tr>
		<th>num</th>
		<th>keyword</th>
		<th>site</th>
		<th>title</th>
		<th>content</th>
		<th>link</th>
		<th>kategorie</th>
		<th>*select*</th>
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
	
	%>
	<tr>
		<td><input type="submit" value="select" /></td>
	</tr>
</table>
	
</form>
</body>
</html>