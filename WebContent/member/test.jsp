<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>SignUp</title>
<link rel="stylesheet" type="text/css" href="test.css">
</head>
<body>
	<div id="container" class="container">
        <!-- FORM SECTION -->
        <div class="row">
            <!-- SIGN UP -->
            <div class="col align-items-center flex-col sign-up">
                <div class="form-wrapper align-items-center">
                    <div class="form sign-up">
                        <div class="input-group">
                            <i class='bx bxs-user'></i>
                            <input type="text" placeholder="Username">
                        </div>
                        <div class="input-group">
                            <i class='bx bx-mail-send'></i>
                            <input type="email" placeholder="Email">
                        </div>
                        <div class="input-group">
                            <i class='bx bxs-lock-alt'></i>
                            <input type="password" placeholder="Password">
                        </div>
                        <div class="input-group">
                            <i class='bx bxs-lock-alt'></i>
                            <input type="password" placeholder="Confirm password">
                        </div>
                        <button>
                        Sign up
                        </button>
                        <p>
                            <span>
                            Already have an account?
                            </span>
                            <b onclick="toggle()" class="pointer">
                            Sign in here
                            </b>
                        </p>
                    </div>
                </div>

            </div>
            <!-- END SIGN UP -->
        </div>
        <!-- END FORM SECTION -->
        <!-- CONTENT SECTION -->
        <div class="row content-row">
            <!-- SIGN IN CONTENT -->
            <div class="col align-items-center flex-col">
                
            </div>
            
            <!-- END SIGN IN CONTENT -->
            <!-- SIGN UP CONTENT -->
            <div class="col align-items-center flex-col">
                <div class="img sign-up">
                </div>
                <div class="text sign-up">
                    <h2>
                    Join with us
                    </h2>
                </div>
            </div>
            <!-- END SIGN UP CONTENT -->
        </div>
        <!-- END CONTENT SECTION -->
    </div>
	<script>
	    let container = document.getElementById('container')
	
	    setTimeout(() => {
	    container.classList.add('sign-up')
	    }, 200)
	    
	</script>
</body>
</html>