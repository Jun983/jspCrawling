<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>LoginForm</title>
<link rel="stylesheet" type="text/css" href="test.css">
</head>
<body>
	<div id="container" class="container">
	    <!-- FORM SECTION -->
	    <div class="row">
	        <!-- SIGN UP -->
	        <div class="col align-items-center flex-col sign-up">    	
	        </div>
	        <!-- END SIGN UP -->
	        <!-- SIGN IN -->
	        <div class="col align-items-center flex-col sign-in">
	            <div class="form-wrapper align-items-center">
	                <div class="form sign-in">
	                    <div class="input-group">
	                        <i class='bx bxs-user'></i>
	                        <input type="text" placeholder="���̵� �Է��ϼ���" required>
	                    </div>
	                    <div class="input-group">
	                        <i class='bx bxs-lock-alt'></i>
	                        <input type="password" placeholder="��й�ȣ�� �Է��ϼ���" required>
	                    </div>
	                    <button>
	                    	�α���
	                    </button>
	                    <p>
	                        <b>
	                        Forgot password?
	                        </b>
	                    </p>
	                    <p>
	                        <span>
	                        	Don't have an account?
	                        </span>
	                        <b>
	                        	Sign up here
	                        </b>
	                    </p>
	                </div>
	            </div>
	            <div class="form-wrapper">
	
	            </div>
	        </div>
	        <!-- END SIGN IN -->
	    </div>
	    <!-- END FORM SECTION -->
	    <!-- CONTENT SECTION -->
	    <div class="row content-row">
	        <!-- SIGN IN CONTENT -->
	        <div class="col align-items-center flex-col">
	            <div class="text sign-in">
	                <h2>
	                Welcome
	                </h2>
	            </div>
	            <div class="img sign-in">
	
	            </div>
	        </div>
	        <!-- END SIGN IN CONTENT -->	        
	    </div>
	    <!-- END CONTENT SECTION -->
	</div>
	<script>
	    let container = document.getElementById('container')
	
	    setTimeout(() => {
	    container.classList.add('sign-in')
	    }, 200)
	    
	</script>
</body>
</html>