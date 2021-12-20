<%-- 
    Document   : UpdateStatus
    Created on : Dec 20, 2021, 4:58:02 PM
    Author     : hieun
--%>
<%@page import="model.Ordermodel.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            OrderDao or = new OrderDao();
            or.UpdateOrders(new Order(Integer.parseInt(request.getParameter("orderId")), 8));
            response.sendRedirect("../../Admin/Table/");
        %>

    </body>
</html>
