<%-- 
    Document   : HomeAdmin
    Created on : Nov 10, 2021, 10:17:46 PM
    Author     : hieun
--%>

<%@page import="model.Adminmodel.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Database.Dbcontext"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
<head>
	<title>Login V16</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100" style="background-image: url('images/bg-01.jpg');">
			<div class="wrap-login100 p-t-30 p-b-50">
				<span class="login100-form-title p-b-41">
					Account Login
				</span>
                            <form class="login100-form validate-form p-b-33 p-t-5" action="LoginAdmin.jsp" method="POST">

					<div class="wrap-input100 validate-input" data-validate = "Enter Email">
						<input class="input100" type="text" name="email" placeholder="Email">
						<span class="focus-input100" data-placeholder="&#xe82a;"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<input class="input100" type="password" name="pass" placeholder="Password">
						<span class="focus-input100" data-placeholder="&#xe80f;"></span>
					</div>
                                        <%
                                            AdminDao db= new AdminDao();
                                            ArrayList<Admin> Admins = db.GetAdmin();
                                            Boolean kt=true;
                                            for(Admin us:Admins){
                                                if(request.getParameter("submits") != null){
                                                    String email= request.getParameter("email");
                                                    String passwords= request.getParameter("pass");
                                                    if(email.equals(us.getEmail()) && passwords.equals(us.getPassword())){
                                                        String adminName=us.getAdminName();
                                                        session.setAttribute("adminName", adminName);
                                                        response.sendRedirect("HomeAdmin.jsp");
                                                        kt=true;
                                                    } else{
                                                        kt=false;
                                                        
                                                    }
                                                }
                                            }
                                            if(kt==false){
                                                out.println("<div style='color: red'>UserName or Password is wrong</div>");
                                            }
                                        %>

					<div class="container-login100-form-btn m-t-32">
                                            
                                            <div class="login100-form-btn">
                                                <input class="login100-form-btn" type="submit" name="submits" value="Login"/>
                                            </div>
							
						
					</div>

				</form>
			</div>
		</div>
	</div>
        
	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>
