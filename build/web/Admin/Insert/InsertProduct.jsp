<%-- 
    Document   : InsertProduct
    Created on : Nov 18, 2021, 9:33:02 PM
    Author     : hieun
--%>

<%@page import="model.ImgProductmodel.*"%>
<%@page import="model.Productmodel.*"%>
<%@page import="model.Categorymodel.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Brandmodel.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Startmin - Bootstrap Admin Theme</title>

        <!-- Bootstrap Core CSS -->
        <link href="../css/bootstrap.min.css" rel="stylesheet">

        <!-- MetisMenu CSS -->
        <link href="../css/metisMenu.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="../css/startmin.css" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href="../css/font-awesome.min.css" rel="stylesheet" type="text/css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>
        <%
            if (session.getAttribute("adminName") == null) {
                response.sendRedirect("http://localhost:8080/sellingbags/Admin/LoginAdmin.jsp");
            }
        %>
        <div id="wrapper">

            <!-- Navigation -->
            <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
                <div class="navbar-header">
                    <a class="navbar-brand" href="index.html">Startmin</a>
                </div>

                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>

                <ul class="nav navbar-nav navbar-left navbar-top-links">
                    <li><a href="#"><i class="fa fa-home fa-fw"></i> Website</a></li>
                </ul>

                <ul class="nav navbar-right navbar-top-links">

                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="fa fa-user fa-fw"></i>Hello: <%out.println(session.getAttribute("adminName"));%><b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu dropdown-user">
                            <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                            </li>
                            <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                            </li>
                            <li class="divider"></li>
                            <li><a href="../../Admin/LogoutAdmin.jsp"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                            </li>
                        </ul>
                    </li>
                </ul>
                <!-- /.navbar-top-links -->

                <div class="navbar-default sidebar" role="navigation">
                    <div class="sidebar-nav navbar-collapse">
                        <ul class="nav" id="side-menu">
                            <li class="sidebar-search">
                                <div class="input-group custom-search-form">
                                    <input type="text" class="form-control" placeholder="Search...">
                                    <span class="input-group-btn">
                                        <button class="btn btn-primary" type="button">
                                            <i class="fa fa-search"></i>
                                        </button>
                                    </span>
                                </div>
                                <!-- /input-group -->
                            </li>
                            <li>
                                <a href="index.html"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-table"></i> Table<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="../../Admin/Table/TableProduct.jsp?Page=1">Table Product</a>
                                    </li>
                                    <li>
                                        <a href="../../Admin/Table/TableBrand.jsp?Page=1">Table Brand</a>
                                    </li>
                                    <li>
                                        <a href="../../Admin/Table/TableCategory.jsp?Page=1">Table Brand</a>
                                    </li>
                                </ul>
                                <!-- /.nav-second-level -->
                            </li>                          
                        </ul>
                    </div>
                    <!-- /.sidebar-collapse -->
                </div>
                <!-- /.navbar-static-side -->
            </nav>

            <!-- Page Content -->
            <div id="page-wrapper">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">Table Brand</h1>
                        </div>
                        <!-- /.col-lg-12 -->
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <%
                                        ProductDao pd = new ProductDao();
                                        ImageDao imd=new ImageDao();
                                        int ktbr=0;
                                        if(request.getParameter("add")!=null){
//                                            if(request.getParameter("brandName").equals("")){
//                                                ktbr=1;
//                                            }else{
                                                String ProductName = request.getParameter("ProductName");
                                                Float Price = Float.parseFloat(request.getParameter("Price"));
                                                String Detail = request.getParameter("Detail");
                                                Integer Brandid = Integer.parseInt(request.getParameter("Brandid"));
                                                Integer Categoryid = Integer.parseInt(request.getParameter("Categoryid"));
                                                pd.InsertProduct(new Product(ProductName, Price, Detail, Brandid, Categoryid)); 
                                                
                                                String[] Image = request.getParameterValues("Image");
                                                for (int i = 0; i < Image.length; i++) {
                                                    imd.InsertImage(new Image(Image[i], pd.GetIdProduct(ProductName)));
                                                }
                                                response.sendRedirect("../../Admin/Table/TableProduct.jsp?Page=1");
//                                            }
                                        }
                            %>
                            <form action="InsertProduct.jsp" method="POST">
                                <div class="form-group">
                                    <label for="ProductName">Product Name</label>
                                    <input type="text" class="form-control" name="ProductName" placeholder="Product Name">

                                    <small id="emailHelp" class="form-text text-muted">
                                        <%
//                                            if(ktbr==1){
//                                                out.print("<p style='color: red'>cannot be left blank<p>");
//                                            } 

                                        %>

                                    </small>
                                </div>
                                <div class="form-group">
                                    <label for="Price">Price</label>
                                    <input type="text" class="form-control" name="Price" placeholder="Price">

                                    <small id="emailHelp" class="form-text text-muted">                                      
                                    </small>
                                </div>   
                                <div class="form-group">
                                    <label for="Detail">Detail</label>
                                    <input type="text" class="form-control" name="Detail" placeholder="Detail">

                                    <small id="emailHelp" class="form-text text-muted">                                      
                                    </small>
                                </div>          
                                <div class="form-group">
                                    <label for="Image">Image</label>
                                    <input type='file' name='Image' multiple />
                                </div>                               
                                

                                <div class="form-group">
                                    <label for="BrandName">Brand Name</label>

                                    <select name="Brandid" id="cars">
                                        <%                                            BrandDao br = new BrandDao();
                                            //out.println(db.sayHello());
                                            ArrayList<Brand> Brands = br.CountBrand();
                                            for (Brand brs : Brands) {
                                                out.print("<option value='" + brs.getBrandid() + "'>" + brs.getBrandName() + "</option>");
                                            }
                                        %>

                                    </select>
                                </div>

                                <div class="form-group">
                                    <label for="CategoryName">Category Name</label>

                                    <select name="Categoryid" id="cars">
                                        <%
                                            CategoryDao ct = new CategoryDao();
                                            //out.println(db.sayHello());
                                            ArrayList<Category> Categorys = ct.CountCategory();
                                            for (Category cts : Categorys) {
                                                out.print("<option value='" + cts.getCategoryid()+ "'>" + cts.getCategoryName()+ "</option>");
                                            }
                                        %>

                                    </select>
                                </div>     
                                        
                                <input class="btn btn-primary" type="submit" name="add" value="Add"/>        
                            </form>


                            <!-- /.panel -->
                        </div>
                        <!-- /.col-lg-12 -->
                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.container-fluid -->
            </div>
            <!-- /#page-wrapper -->

        </div>
        <!-- /#wrapper -->

        <!-- jQuery -->
        <script src="../js/jquery.min.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="../js/bootstrap.min.js"></script>

        <!-- Metis Menu Plugin JavaScript -->
        <script src="../js/metisMenu.min.js"></script>

        <!-- Custom Theme JavaScript -->
        <script src="../js/startmin.js"></script>

    </body>
</html>