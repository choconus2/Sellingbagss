<%-- 
    Document   : DeleteProductbr
    Created on : Nov 23, 2021, 8:53:00 PM
    Author     : hieun
--%>

<%@page import="model.ImgProductmodel.ImageDao"%>
<%@page import="model.Productmodel.ProductDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%            
            ProductDao db = new ProductDao();
            ImageDao im = new ImageDao();
            //out.println(db.sayHello());            
            if(request.getParameter("Brandid") != null) {
                try
                {                   
                    Integer Brandid = Integer.parseInt(request.getParameter("Brandid"));
                    im.deleteImagebr(Brandid);
                    db.deleteProductbr(Brandid);                
                    response.sendRedirect("DeleteBrand.jsp?Brandid="+request.getParameter("Brandid"));
                } catch(Exception e) {
                    out.println("<h1>Delete product failed</h1>");
                }
                
            }
        %>  
    </body>
</html>
