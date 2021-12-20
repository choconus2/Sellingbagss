<%-- 
    Document   : HomeDetails
    Created on : Nov 27, 2021, 8:37:05 AM
    Author     : hieun
--%>

<%@page import="model.OrderDetailmodel.*"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="model.Ordermodel.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.ImgProductmodel.*"%>
<%@page import="model.Productmodel.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">
    <%
        if (session.getAttribute("username") == null) {
            response.sendRedirect("LoginUser.jsp");
        }
    %>

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Single product </title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="manifest" href="site.webmanifest">
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

        <!-- CSS here -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
        <link rel="stylesheet" href="assets/css/flaticon.css">

        <link rel="stylesheet" href="assets/css/slicknav.css">
        <link rel="stylesheet" href="assets/css/animate.min.css">
        <link rel="stylesheet" href="assets/css/magnific-popup.css">
        <link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
        <link rel="stylesheet" href="assets/css/themify-icons.css">
        <link rel="stylesheet" href="assets/css/slick.css">
        <link rel="stylesheet" href="assets/css/nice-select.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.0/css/bootstrap.min.css" rel="stylesheet"
              type="text/css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick-theme.min.css" integrity="sha512-17EgCFERpgZKcm0j0fEq1YCJuyAWdz9KUtv1EjVuaOz8pDnh/0nZxmU6BBXwaaxqoi9PQXnRWqlcDB027hgv9A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.css" integrity="sha512-yHknP1/AwR+yx26cB1y0cjvQUMvEa2PFzt1c9LlS4pRQ5NOTZFWbhBig+X9G9eYW/8m0/4OXNx8pxJ6z57x0dw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" integrity="sha512-5A8nwdMOWrSz20fDsjczgUidUBR8liPYU+WymTZP1lmY9G6Oc7HlZv156XqnsgNUzTyMefFTcsFH/tnJE/+xBg==" crossorigin="anonymous" referrerpolicy="no-referrer" />

        <style>
            #ul1 {
                float: left;
            }

            #ul2 {
                float: right;
                padding-left: 10em;
                width: 400px;
            }
        </style>
        <style type="text/css">

            .wap-ss-img{
                text-align: center;
                width: 100%;
            }
            .wap-ss-img img{
                height: 250px;
                margin: 0 auto;
            }
            .textleft{
                text-align: center;
            }
            .slick-prev:before, .slick-next:before{
                font-family: fontawesome;
                font-size: 30px;
                color: #fff;
            }
            .slick-prev:before{
                content:'\f100';
            }
            .slick-next:before{
                content:'\f101';
            }
        </style>
    </head>


    <body>

        <header>
            <!-- Header Start -->
            <div class="header-area">
                <div class="main-header ">

                    <div class="header-bottom  header-sticky">
                        <div class="container-fluid">
                            <div class="row align-items-center">
                                <!-- Logo -->
                                <div class="col-xl-1 col-lg-1 col-md-1 col-sm-3">

                                </div>
                                <div class="col-xl-6 col-lg-8 col-md-7 col-sm-5">
                                    <!-- Main-menu -->
                                    <div class="main-menu f-right d-none d-lg-block">
                                        <nav>
                                            <ul id="navigation">
                                                <li><a href="index.php">Home</a></li>


                                                <li class="nav-item dropdown has-megamenu">
                                                    <a class="nav-link dropdown-toggle" href="#">Category</a>
                                                    <ul class="submenu" id="ul1">
                                                        <li>
                                                            <a href="homedanhmuc.php?gender=Woman">
                                                                <h4 class="title" align="center">Women</h4>
                                                            </a>
                                                        </li>
                                                        <?php  
                                                        $Tea = in_danhmucnu();
                                                        $count = mysqli_num_rows($Tea);
                                                        for ($i = 0; $i < $count; $i++):
                                                        $ProductType = mysqli_fetch_assoc($Tea); 
                                                        $IdProductType = mysqli_insert_id($db);
                                                        ?>
                                                        <li><a href="<?php echo "homedanhmuc2.php?idproducttype=".$ProductType['idproducttype'];?>"
                                                               align="center"><?php echo $ProductType["producttypeName"]?></a>
                                                        </li>
                                                        <?php 
                                                        endfor; 
                                                        mysqli_free_result($Tea);
                                                        ?>

                                                    </ul>
                                                    <ul class="submenu" id="ul2">
                                                        <li>
                                                            <a href="homedanhmuc.php?gender=Men">
                                                                <h4 class="title" align="center">Men</h4>
                                                            </a>
                                                        </li>
                                                        <?php  
                                                        $Tea = in_danhmucnam();
                                                        $count = mysqli_num_rows($Tea);
                                                        for ($i = 0; $i < $count; $i++):
                                                        $ProductType = mysqli_fetch_assoc($Tea); 
                                                        $IdProductType = mysqli_insert_id($db);
                                                        ?>
                                                        <li><a href="<?php echo "homedanhmuc2.php?idproducttype=".$ProductType['idproducttype'];?>"
                                                               align="center"><?php echo $ProductType["producttypeName"]?></a>
                                                        </li>
                                                        <?php 
                                                        endfor; 
                                                        mysqli_free_result($Tea);
                                                        ?>
                                                    </ul>
                                                </li>


                                                <li class="hot">
                                                    <a href="#">Top Brand</a>
                                                    <ul class="submenu">
                                                        <?php  
                                                        $Tea = in_hang();
                                                        $count = mysqli_num_rows($Tea);
                                                        for ($i = 0; $i < $count; $i++):
                                                        $ProductType = mysqli_fetch_assoc($Tea); 
                                                        $IdProductType = mysqli_insert_id($db);
                                                        ?>
                                                        <li><a
                                                                href="<?php echo "homesanpham.php?idBrand=".$ProductType['idBrand'];?>"><?php echo $ProductType['brandName']; ?></a>
                                                        </li>
                                                        <?php 
                                                        endfor; 
                                                        mysqli_free_result($Tea);
                                                        ?>
                                                    </ul>

                                                </li>
                                                <li><a href="#">Cart</a></li>
                                                <li><a href="contact.php">Contact</a></li>
                                            </ul>
                                        </nav>
                                    </div>
                                </div>
                                <div class="col-xl-5 col-lg-3 col-md-3 col-sm-3 fix-card">
                                    <ul class="header-right f-right d-none d-lg-block d-flex justify-content-between">
                                        <li class="d-none d-xl-block">
                                            <div class="form-box f-right ">
                                                <input type="text" name="Search" placeholder="Search products">
                                                <div class="search-icon">
                                                    <i class="fas fa-search special-tag"></i>
                                                </div>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="shopping-card">
                                                <a href="ShoppingCard.jsp"><i class="fas fa-shopping-cart"></i></a>
                                            </div>
                                        </li>
                                        <li style="margin: auto">
                                            <div style="margin: auto">
                                                <p style="margin: auto">Hello: <%out.println(session.getAttribute("username"));%></p>
                                            </div>
                                        </li>

                                    </ul>
                                </div>
                                <!-- Mobile Menu -->
                                <div class="col-12">
                                    <div class="mobile_menu d-block d-lg-none"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Header End -->
        </header>

        <!-- slider Area Start-->
        <div class="slider-area ">
            <!-- Mobile Menu -->
            <div class="single-slider slider-height2 d-flex align-items-center"
                 data-background="assets/img/hero/category.jpg">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="hero-cap text-center">
                                <h2>product Details</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="product_image_area">
            <div class="container">
                <form  <% out.print("action='HomeDetails.jsp?Productid="+ request.getParameter("Productid")+"'"); %> method="POST">
                    
                    <div class="row justify-content-center">

                        <%                            
                            String ProductName = "";
                            String Detail = "";
                            Float price = new Float(0.0);
                            ProductDao pd = new ProductDao();
                            ImageDao im = new ImageDao();
                            ArrayList<Product> Products = pd.getProductDetails(Integer.parseInt(request.getParameter("Productid")));
                            for (Product br : Products) {
                                ProductName = br.getProductName();
                                Detail = br.getDetail();
                                price = br.getPrice();
                            }
                            out.print("");

                        %>

                        <div class="col-lg-12">
                            <div id="wapper">
                                <div class="row filtering">
                                    <%                                            
                                        ArrayList<Image> Images = im.GetImage(Integer.parseInt(request.getParameter("Productid")));
                                        for (Image imss : Images) {
                                            out.print("<div class='col-md-12 col-sm-12 col-xs-12'>");
                                            out.print("<div class='row'>");
                                            out.print("<div class='wap-items-ss brbox'>");
                                            out.print("<div class='wap-ss-img'>");
                                            out.print("<img alt='' src='../img/ImageProduct/" + imss.getImage() + "' />");
                                            out.print("</div>");
                                            out.print("</div>");
                                            out.print("</div>");
                                            out.print("</div>");
                                        }

                                    %>



                                </div>
                            </div> 





                            <
                        </div>
                        <div class="col-lg-8">
                            <div class="single_product_text text-center">

                                <h3><% out.print(ProductName); %></h3>
                                <hr> 
                                <h2>The story behind</h2>
                                <p>
                                    <% out.print(Detail); %>
                                </p>
                                <div class="card_area">
                                    <div class="product_count_area">
                                        <p>Quantity</p>
                                        <div class="product_count d-inline-block">
                                            <span class="product_count_item " name="tru" id="tru"> <i class="ti-minus"></i></span>
                                            <input class="product_count_item" type="text" value="1" min="0"
                                                   max="10" name="soluong" id="soluong">
                                            <span class="product_count_item" name="cong" id="cong"> <i class="ti-plus"></i></span>
                                        </div>
                                        <p id="gia"><% out.print(price);%></p>
                                    </div>
                                    <div class="add_to_cart">
                                        <input class="btn_3" type="submit" name="Buy" value="Buy"/>
                                        <input class="btn_3" type="submit" name="addcart" value="add to cart"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                                    <%
                        OrderDao Or = new OrderDao();
                        OrderDetailDao ord=new OrderDetailDao();
                        Date date = new Date();
                        SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy HH:mm:ss");

                        String pp=(String)session.getAttribute("userid");
  
                        int x=Integer.parseInt(pp);
                        String soluong=request.getParameter("soluong");
                        int xem=0;
                        if (request.getParameter("Buy") != null) {
                            if(Or.GetOrder(x)==0){
                                Or.InsertOrder(new Order(0,formatter.format(date),6,x));
                                
                            }
                            ArrayList<OrderDetail> OrderDetailss = ord.GetOderDetail(x);
                            if(OrderDetailss.isEmpty()){
                                ord.InsertOrderDetail(new OrderDetail(Integer.parseInt(soluong),Or.GetOrder(x),Integer.parseInt(request.getParameter("Productid"))));
                            }
                            for (OrderDetail ords : OrderDetailss) {
                                out.print(Integer.parseInt(request.getParameter("Productid"))+"  "+ords.getProductid());
                                if(Integer.parseInt(request.getParameter("Productid"))==ords.getProductid() ){
                                    ord.UpdateOrderDetail(new OrderDetail(Integer.parseInt(soluong)+ords.getQuantity(),Integer.parseInt(request.getParameter("Productid")),x,6));
                                    break;
                                }else{
                                    xem=1;
                                                   
                                }
                                
                            }
                            if(xem==1){
                                ord.InsertOrderDetail(new OrderDetail(Integer.parseInt(soluong),Or.GetOrder(x),Integer.parseInt(request.getParameter("Productid"))));
                            }
                            
                            response.sendRedirect("ShoppingCard.jsp");
                        }

                    %>
                </form>

            </div>
        </div>
        <!--================End Single Product Area =================-->
        <hr>
        <footer>
            <!-- Footer Start-->
            <div class="footer-area footer-padding">
                <div class="container">
                    <div class="row d-flex justify-content-between">
                        <div class="col-xl-3 col-lg-3 col-md-5 col-sm-6">
                            <div class="single-footer-caption mb-50">
                                <div class="single-footer-caption mb-30">
                                    <!-- logo -->

                                    <div class="footer-tittle">
                                        <div class="footer-pera">
                                            <p>Inspire your day with fashion.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-2 col-lg-3 col-md-3 col-sm-5">
                            <div class="single-footer-caption mb-50">
                                <div class="footer-tittle">
                                    <h4>Order</h4>
                                    <ul>
                                        <li><a href="#">Payment</a></li>
                                        <li><a href="#">Shipping</a></li>
                                        <li><a href="#">Gifting</a></li>
                                        <li><a href="#">Find a store</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-3 col-md-4 col-sm-7">
                            <div class="single-footer-caption mb-50">
                                <div class="footer-tittle">
                                    <h4>Products</h4>
                                    <ul>
                                        <li><a href="#">Woman Handbags</a></li>
                                        <li><a href="#">Men Bags</a></li>
                                        <!-- <li><a href="#"> Man Accessories</a></li>
                                <li><a href="#"> Rubber made Toys</a></li> -->
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-3 col-md-5 col-sm-7">
                            <div class="single-footer-caption mb-50">
                                <div class="footer-tittle">
                                    <h4>Support</h4>
                                    <ul>
                                        <li><a href="#">Frequently Asked Questions</a></li>
                                        <li><a href="#">Terms & Conditions</a></li>
                                        <li><a href="#">Privacy Policy</a></li>
                                        <li><a href="#">Contact us</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Footer bottom -->
                    <div class="row">
                        <div class="col-xl-7 col-lg-7 col-md-7">
                            <div class="footer-copy-right">
                                <p>
                                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                    &copy; BagBag Shop <script>
                                        document.write(new Date().getFullYear());
                                    </script> All rights reserved
                                </p>
                            </div>
                        </div>
                        <div class="col-xl-5 col-lg-5 col-md-5">
                            <div class="footer-copy-right f-right">
                                <!-- social -->
                                <div class="footer-social">
                                    <a href="#"><i class="fab fa-twitter"></i></a>
                                    <a href="#"><i class="fab fa-facebook-f"></i></a>
                                    <a href="#"><i class="fab fa-behance"></i></a>
                                    <a href="#"><i class="fas fa-globe"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Footer End-->
        </footer>
        
        <!-- JS here -->
        <!-- All JS Custom Plugins Link Here here -->
        <script src="assets/js/vendor/modernizr-3.5.0.min.js"></script>

        <!-- Jquery, Popper, Bootstrap -->
        <script src="assets/js/vendor/jquery-1.12.4.min.js"></script>
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <!-- Jquery Mobile Menu -->
        <script src="assets/js/jquery.slicknav.min.js"></script>

        <!-- Jquery Slick , Owl-Carousel Plugins -->
        <script src="assets/js/owl.carousel.min.js"></script>
        <script src="assets/js/slick.min.js"></script>

        <!-- One Page, Animated-HeadLin -->
        <script src="assets/js/wow.min.js"></script>
        <script src="assets/js/animated.headline.js"></script>
        <script src="assets/js/jquery.magnific-popup.js"></script>

        <!-- Scrollup, nice-select, sticky -->
        <script src="assets/js/jquery.scrollUp.min.js"></script>
        <script src="assets/js/jquery.nice-select.min.js"></script>
        <script src="assets/js/jquery.sticky.js"></script>

        <!-- contact js -->
        <script src="assets/js/contact.js"></script>
        <script src="assets/js/jquery.form.js"></script>
        <script src="assets/js/jquery.validate.min.js"></script>
        <script src="assets/js/mail-script.js"></script>
        <script src="assets/js/jquery.ajaxchimp.min.js"></script>

        <!-- Jquery Plugins, main Jquery -->
        <script src="assets/js/plugins.js"></script>
        <script src="assets/js/main.js"></script>

        <!-- swiper js -->
        <script src="assets/js/swiper.min.js"></script>
        <!-- swiper js -->
        <script src="assets/js/mixitup.min.js"></script>
        <script src="assets/js/jquery.counterup.min.js"></script>
        <script src="assets/js/waypoints.min.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.9/slick.min.js"></script>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.js" integrity="sha512-HGOnQO9+SP1V92SrtZfjqxxtLmVzqZpjFFekvzZVWoiASSQgSr4cw9Kqd2+l8Llp4Gm0G8GIFJ4ddwZilcdb8A==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.js" integrity="sha512-eP8DK17a+MOcKHXC5Yrqzd8WI5WKh6F1TIk5QZ/8Lbv+8ssblcz7oGC8ZmQ/ZSAPa7ZmsCU4e/hcovqR8jfJqA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script type="text/javascript">
                                        $('.filtering').slick({
                                            dots: true,
                                            infinite: true,
                                            speed: 500,
                                            fade: true,
                                        });


        </script>
        <script type="text/javascript">
            $(document).ready(function () {
                var gias = $('#gia').text();
                $('#tru').bind('click', function (event) {
                    if (parseInt($('#soluong').val()) > 1) {
                        $('#soluong').val(parseInt($('#soluong').val()) - 1);
                        $('#gia').text(gias * parseInt($('#soluong').val()));
                    }
                });

                $('#cong').bind('click', function (event) {
                    if (parseInt($('#soluong').val()) < 10) {
                        $('#soluong').val(parseInt($('#soluong').val()) + 1);
                        $('#gia').text(gias * parseInt($('#soluong').val()));
                    }

                });
            });
        </script>

    </body>

</html>
