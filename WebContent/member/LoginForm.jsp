<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>LoginForm.jsp</title>
</head>
<body>
	<div>
		<form action="./LoginProc.jsp" method="post">
			<h3>Login</h3>
			<input type="text" name="id" placeholder="���̵� �Է��ϼ���" required/><br />
			<input type="password" name="password" placeholder="��й�ȣ�� �Է��ϼ���" required/><br />
			<input type="submit" value="�α���" /><br />
		</form>
		<a href="./FindId.jsp">���̵� ã��</a>&nbsp;&nbsp;&nbsp;
		<a href="./ResetPwd.jsp">��й�ȣ ã��</a>&nbsp;&nbsp;&nbsp;
		<a href="./SignUp.jsp">ȸ������</a>		
	</div>
</body>
</html>