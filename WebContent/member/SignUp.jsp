<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>SignUp.jsp</title>
</head>
<body>
	<h3>Sign Up</h3>
	<script>
		function validatePassword() {
			var password = document.getElementById('password').value;
			var confirmPassword = document.getElementById('confirmPassword').value;
			
			if(password != confirmPassword) {
				alert("��й�ȣ�� ��ġ���� �ʽ��ϴ�.");
				return false;
			}
			
			return true;
		}
	
	</script>
	<form action="SignUpProc.jsp" method="post" onsubmit="return validatePassword();">
		<input type="text" name="id" placeholder="���̵� �Է��ϼ���" required/><br>
		<input type="password" id="password" name="password" placeholder="��й�ȣ�� �Է��ϼ���" required/><br>
		<input type="password" id="confirmPassword" name="password" placeholder="��й�ȣ�� �ٽ� �Է��ϼ���" required/><br>
		<input type="text" name="name" placeholder="�̸��� �Է��ϼ���" required /><br>
		<input type="text" name="nickname" placeholder="�г����� �Է��ϼ���" required /><br>
		<input type="email" name="email" placeholder="�̸����� �Է��ϼ���" required/><br>
		<input type="submit" value="ȸ������" />
	</form>	 
</body>
</html>