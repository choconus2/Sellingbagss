<%-- 
    Document   : DeleteProduct
    Created on : Nov 23, 2021, 8:25:03 PM
    Author     : hieun
--%>

<%@page import="model.ImgProductmodel.*"%>
<%@page import="model.Productmodel.*"%>
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
            if(request.getParameter("Productid") != null) {
                try
                {                   
                    Integer Productid = Integer.parseInt(request.getParameter("Productid"));
                    im.deleteImage(Productid);
                    db.deleteProduct(Productid);                
                    response.sendRedirect("../../Admin/Table/TableProduct.jsp?Page=1");
                } catch(Exception e) {
                    out.println("<h1>Delete product failed</h1>");
                }
                
            }
        %>  
    </body>
</html>
