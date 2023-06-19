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
				alert("비밀번호가 일치하지 않습니다.");
				return false;
			}
			
			return true;
		}
	
	</script>
	<form action="SignUpProc.jsp" method="post" onsubmit="return validatePassword();">
		<input type="text" name="id" placeholder="아이디를 입력하세요" required/><br>
		<input type="password" id="password" name="password" placeholder="비밀번호를 입력하세요" required/><br>
		<input type="password" id="confirmPassword" name="password" placeholder="비밀번호를 다시 입력하세요" required/><br>
		<input type="text" name="name" placeholder="이름을 입력하세요" required /><br>
		<input type="text" name="nickname" placeholder="닉네임을 입력하세요" required /><br>
		<input type="email" name="email" placeholder="이메일을 입력하세요" required/><br>
		<input type="submit" value="회원가입" />
	</form>	 
</body>
</html>