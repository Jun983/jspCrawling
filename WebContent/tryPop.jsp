<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- <a href="./pouup.jsp" onclick="window.open(this.href, '_blank', 'width=100' 'height=300', toolboars=no, scrollbars=yes');return false;">  </a> -->
<a href="#none" onclick="window.open('./pouup.jsp','new','scrollbars=yes,resizable=no width=200 height=250, left=0,top=0');return false">여기가 팝업 </a>

 <% String test = request.getParameter("test");
   	 	System.out.println(test);
   %> 
</body>
</html>