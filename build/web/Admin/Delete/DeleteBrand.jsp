<%-- 
    Document   : DeleteBrand
    Created on : Nov 22, 2021, 7:55:53 PM
    Author     : hieun
--%>


<%@page import="model.ImgProductmodel.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Productmodel.*"%>
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
                        <% BrandDao db = new BrandDao();  %>
            <!-- Page Content -->
            <div id="page-wrapper">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">The <% out.print(db.NameBrand(Integer.parseInt(request.getParameter("Brandid")))); %> Brand has products</h1>
                            <% out.print("<a href='DeleteProductbr.jsp?Brandid=" + request.getParameter("Brandid")+ "'>Delete All</a>"); %>
                           
                        </div>
                        <!-- /.col-lg-12 -->
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <%            
                                
                                ProductDao pd = new ProductDao();
                                ImageDao im=new ImageDao();
                                //out.println(db.sayHello());            
                                if(request.getParameter("Brandid") != null) {
                                    try
                                    {
                                        
                                        if(pd.countBranpd(Integer.parseInt(request.getParameter("Brandid")))==0){
                                            Integer Brandid = Integer.parseInt(request.getParameter("Brandid"));
                                            db.deleteBrand(Brandid);                
                                            response.sendRedirect("../../Admin/Table/TableBrand.jsp?Page=1");
                                        } else{
                                            out.print("<table class='table table-striped table-bordered table-hover dataTable no-footer' id='dataTables-example' role='grid' aria-describedby='dataTables-example_info'>");
                                            out.print("<thead><tr role='row'><th>Product Name</th><th>Price</th><th>Img</th><th>Detail</th><th>Brand Name</th><th>Category Name</th></tr></thead>");
                                            out.print("<tbody>");
                                            

                                            ProductDao pds = new ProductDao();
                                            ArrayList<Product> Productsd = pds.getProductbr(db.NameBrand(Integer.parseInt(request.getParameter("Brandid"))));
                                            for (Product br : Productsd) {
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
                                            }
                                            out.print("</tbody>");
                                            out.print("</table>");
                                        }
                              
                                    } catch(Exception e) {
                                        out.println("<h1>Delete Brand failed</h1>");

                                    }

                                }
                            %>  
                            

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
