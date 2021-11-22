<%-- 
    Document   : TableProduct
    Created on : Nov 12, 2021, 8:58:09 PM
    Author     : hieun
--%>

<%@page import="model.ImgProductmodel.*"%>
<%@page import="model.Productmodel.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Database.Dbcontext"%>
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
        <style>
            .btn-glyphicon {
                padding:8px;
                background:#ffffff;
                margin-right:4px;
            }
            .icon-btn {
                padding: 1px 15px 3px 2px;
                border-radius:50px;
            }
        </style>
    </head>
    <body>
        <%
            if (session.getAttribute("adminName") == null) {
                response.sendRedirect("../../Admin/LoginAdmin.jsp");
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
                                        <a href="../../Admin/Table/TableCategory.jsp?Page=1">Table Category</a>
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
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <a class="btn icon-btn btn-success" href="../../Admin/Insert/InsertProduct.jsp">
                                        <span class="glyphicon btn-glyphicon glyphicon-plus img-circle text-success"></span>
                                        New Product
                                    </a>
                                </div>
                                <!-- /.panel-heading -->
                                <div class="panel-body">
                                    <div class="dataTable_wrapper">
                                        <div id="dataTables-example_wrapper" class="dataTables_wrapper form-inline dt-bootstrap no-footer">
                                            <div class="row">                                          
                                                <div class="col-sm-6">
                                                    <div id="dataTables-example_filter" class="dataTables_filter">
                                                        <label>
                                                            Search:<input type="search" class="form-control input-sm" placeholder="" aria-controls="dataTables-example">
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-12">
                                                    <table class="table table-striped table-bordered table-hover dataTable no-footer" id="dataTables-example" role="grid" aria-describedby="dataTables-example_info">
                                                        <thead>
                                                            <tr role="row">
                                                                <th>Product Name</th>
                                                                <th>Price</th>
                                                                <th>Img</th>
                                                                <th>Detail</th>
                                                                <th>Brand Name</th>
                                                                <th>Category Name</th>

                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <%
                                                                ProductDao db = new ProductDao();
                                                                ImageDao im = new ImageDao();
                                                                //out.println(db.sayHello());
                                                                String x = request.getParameter("Page");
                                                                ArrayList<Product> Products = db.GetProduct((Integer.parseInt(x) - 1) * 2);
                                                                for (Product br : Products) {
                                                                    out.print("<tr class='gradeX odd' role='row'>");
                                                                    out.print("<td>" + br.getProductName() + "</td>");
                                                                    out.print("<td>" + br.getPrice() + "</td>");
                                                                    ArrayList<Image> Images = im.GetImage(br.getProductid());
                                                                    out.print("<td>");
                                                                    for (Image imss : Images) {
                                                                        out.println("<image style='width: 100px;height: 100px' src='../../img/ImageProduct/"+ imss.getImage() + "' />");
                                                                    }
                                                                    out.print("</td>");
                                                                    out.print("<td>" + br.getDetail() + "</td>");
                                                                    out.print("<td>" + br.getBrandName()+ "</td>");
                                                                    out.print("<td>" + br.getCategoryName()+ "</td>");
                                                                    out.print("<td><a href='deletebooks.jsp?BookId=" + br.getProductid()+ "'>Delete</a></td> ");
                                                                    out.print("</tr>");
                                                                }
                                                            %>
                                                        </tbody>

                                                    </table>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-6">
                                                    <div class="dataTables_paginate paging_simple_numbers" id="dataTables-example_paginate">
                                                        <ul class="pagination">

                                                            <%
                                                                int dem = 0;

                                                                ArrayList<Product> countbr = db.CountProduct();
                                                                int tongso = countbr.size();
                                                                double a = (double) tongso / 2;
                                                                int sotrang = (int) Math.ceil(a);
                                                                String listpage = " ";
                                                                for (int i = 1; i <= sotrang; i++) {
                                                                    if (i == Integer.parseInt(x)) {
                                                                        dem = i;
                                                                        listpage += "<li class='paginate_button active'><a href='TableProduct.jsp?Page=" + i + "'>" + i + "</a></li>";
                                                                    } else {
                                                                        listpage += "<li><a href='TableProduct.jsp?Page=" + i + "'>" + i + "</a></li>";
                                                                    }

                                                                }
                                                                int dem2 = dem + 1;
                                                                int dem3 = dem - 1;
                                                                if (dem > 1) {
                                                                    out.print("<li ><a href='TableBrand.jsp?Page=" + dem3 + "'>Previous</a></li>");
                                                                }

                                                                out.print(listpage);
                                                                if (dem < sotrang) {
                                                                    out.print("<li ><a href='TableBrand.jsp?Page=" + dem2 + "'>Next</a></li>");
                                                                }

                                                            %>



                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- /.panel-body -->
                            </div>
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
