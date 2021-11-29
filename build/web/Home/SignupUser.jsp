<%-- 
    Document   : SignupUser
    Created on : Nov 29, 2021, 2:48:26 PM
    Author     : hieun
--%>

<%@page import="model.Usermodel.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css"><!--  -->
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet" id="bootstrap-css">
        <title>JSP Page</title>
        <style>
            body {
                color: #000;
                overflow-x: hidden;
                height: 100%;
                background-image: linear-gradient(to right, #D500F9, #FFD54F);
                background-repeat: no-repeat
            }

            input,
            textarea {
                background-color: #F3E5F5;
                border-radius: 50px !important;
                padding: 12px 15px 12px 15px !important;
                width: 100%;
                box-sizing: border-box;
                border: none !important;
                border: 1px solid #F3E5F5 !important;
                font-size: 16px !important;
                color: #000 !important;
                font-weight: 400
            }

            input:focus,
            textarea:focus {
                -moz-box-shadow: none !important;
                -webkit-box-shadow: none !important;
                box-shadow: none !important;
                border: 1px solid #D500F9 !important;
                outline-width: 0;
                font-weight: 400
            }

            button:focus {
                -moz-box-shadow: none !important;
                -webkit-box-shadow: none !important;
                box-shadow: none !important;
                outline-width: 0
            }

            .card {
                border-radius: 0;
                border: none
            }

            .card1 {
                width: 50%;
                padding: 40px 30px 10px 30px
            }

            .card2 {
                width: 50%;
                background-image: linear-gradient(to right, #FFD54F, #D500F9)
            }

            #logo {
                width: 70px;
                height: 60px
            }

            .heading {
                margin-bottom: 60px !important
            }

            ::placeholder {
                color: #000 !important;
                opacity: 1
            }

            :-ms-input-placeholder {
                color: #000 !important
            }

            ::-ms-input-placeholder {
                color: #000 !important
            }

            .form-control-label {
                font-size: 12px;
                margin-left: 15px
            }

            .msg-info {
                padding-left: 15px;
                margin-bottom: 30px
            }

            .btn-color {
                border-radius: 50px;
                color: #fff;
                background-image: linear-gradient(to right, #FFD54F, #D500F9);
                padding: 15px;
                cursor: pointer;
                border: none !important;
                margin-top: 40px
            }

            .btn-color:hover {
                color: #fff;
                background-image: linear-gradient(to right, #D500F9, #FFD54F)
            }

            .btn-white {
                border-radius: 50px;
                color: #D500F9;
                background-color: #fff;
                padding: 8px 40px;
                cursor: pointer;
                border: 2px solid #D500F9 !important
            }

            .btn-white:hover {
                color: #fff;
                background-image: linear-gradient(to right, #FFD54F, #D500F9)
            }

            a {
                color: #000
            }

            a:hover {
                color: #000
            }

            .bottom {
                width: 100%;
                margin-top: 50px !important
            }

            .sm-text {
                font-size: 15px
            }

            @media screen and (max-width: 992px) {
                .card1 {
                    width: 100%;
                    padding: 40px 30px 10px 30px
                }

                .card2 {
                    width: 100%
                }

                .right {
                    margin-top: 100px !important;
                    margin-bottom: 100px !important
                }
            }

            @media screen and (max-width: 768px) {
                .container {
                    padding: 10px !important
                }

                .card2 {
                    padding: 50px
                }

                .right {
                    margin-top: 50px !important;
                    margin-bottom: 50px !important
                }
            }
        </style>
    </head>
    <body>
        <%
            UserDao db = new UserDao();
            int ktbr = 0;
            if (request.getParameter("add") != null) {
                
//                if (request.getParameter("brandName").equals("")) {
//                    ktbr = 1;
//                } else {
                    String UserName = request.getParameter("username");
                    String Password = request.getParameter("psw");
                    String Email = request.getParameter("email");
                    String Phone = request.getParameter("phone");
                    String Address = request.getParameter("address");
                    db.SignupUser(new User(UserName, Password, Email, null));
                    response.sendRedirect("LoginUser.jsp");
//                }
            }
        %>
        <div class="container px-4 py-5 mx-auto">
            <div class="card card0">
                <div class="d-flex flex-lg-row flex-column-reverse">
                    <div class="card card1" style="margin: auto">
                        <div class="row justify-content-center my-auto">
                            <div class="col-md-8 col-10 my-5">
                                <div class="row justify-content-center px-3 mb-3"> <img id="logo" src="https://i.imgur.com/PSXxjNY.png"> </div>
                                <h3 class="mb-5 text-center heading"></h3>
                                <h6 class="msg-info">Please login to your account</h6>
                                <form>
                                    <div class="form-group"> <label class="form-control-label text-muted">User Name</label> <input type="text" id="username" name="username" placeholder="User Name" class="form-control"> </div>
                                    <div class="form-group"> <label class="form-control-label text-muted">Email</label> <input type="text" id="email" name="email" placeholder="email" class="form-control"> </div>
                                    <div class="form-group"> <label class="form-control-label text-muted">Password</label> <input type="password" id="psw" name="psw" placeholder="Password" class="form-control"> </div>
                                    <div class="form-group"> <label class="form-control-label text-muted">Phone</label> <input type="number" id="phone" name="phone" placeholder="phone" class="form-control"> </div>
                                    <div class="form-group"> <label class="form-control-label text-muted">Address</label> <input type="text" id="email" name="address" placeholder="address" class="form-control"> </div>
                                    <div class="row justify-content-center my-3 px-3"> <input class="btn-block btn-color" name="add" type="submit" value="Sign Up"/> </div>
                                    <div class="row justify-content-center my-2"> <a href="#"><small class="text-muted"></small></a> </div>
                                </form>

                            </div>
                        </div>
                        <div class="bottom text-center mb-5">
                            <p href="#" class="sm-text mx-auto mb-3">Already have an account?<a href="LoginUser.jsp"><button class="btn btn-white ml-2">Sign Up</button></a></p>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </body>
</html>
