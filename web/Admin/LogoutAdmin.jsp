<%-- 
    Document   : LogoutAdmin
    Created on : Nov 12, 2021, 8:44:41 PM
    Author     : hieun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            session.removeAttribute("adminName");
            response.sendRedirect("LoginAdmin.jsp");
        %>
    </body>
</html>
