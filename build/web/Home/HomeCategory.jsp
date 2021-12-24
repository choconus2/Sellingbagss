<%-- 
    Document   : HomeCategory
    Created on : Dec 23, 2021, 2:50:33 PM
    Author     : hieun
--%>

<%@page import="model.Categorymodel.*"%>
<%@page import="model.Brandmodel.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Productmodel.*"%>
<%@page import="model.ImgProductmodel.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!doctype html>
<html class="no-js" lang="zxx">
    <%
        if (session.getAttribute("username") == null) {
            response.sendRedirect("LoginUser.jsp");
        }
    %>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>My New Bag Bag </title>
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
        <style>
            #ul1 {
                float: left;
            }

            #ul2 {
                float: right;
                padding-left: 10em;
                width: 400px;
            }
            #chinhser{
                display: inline;
                background-color: white;
                border:solid 0px white;
                width:0px;
                height:0px;
            }

            #img11{
                width:800px;
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
                                                <li><a href="Home.jsp?Page=1">Home</a></li>


                                                <li class="nav-item dropdown has-megamenu">
                                                    <a class="nav-link dropdown-toggle" href="#">Category</a>
                                                    <ul class="submenu" id="ul1">
                                                        
                                                        <%
                                                            CategoryDao cgd = new CategoryDao();
                                                            //out.println(db.sayHello());

                                                            ArrayList<Category> Categorys = cgd.CountCategory();
                                                            for (Category br : Categorys) {
                                                                out.print("<li>");
                                                                out.print("<a href='HomeCategory.jsp?Page=1&CategoryName="+br.getCategoryName()+"' >"+br.getCategoryName()+"</a>");
                                                                out.print("</li>");
                                                                
                                                            }

                                                        %>

                                                    </ul>
                                                    
                                                </li>


                                                <li class="hot">
                                                    <a href="#">Top Brand</a>
                                                    <ul class="submenu">
                                                        <%
                                                            BrandDao dbs = new BrandDao();
                                                            //out.println(db.sayHello());

                                                            ArrayList<Brand> Brands = dbs.CountBrand();
                                                            for (Brand br : Brands) {
                                                                out.print("<li>");
                                                                out.print("<a href='HomeBrand.jsp?Page=1&BrandName="+br.getBrandName()+"' >"+br.getBrandName()+"</a>");
                                                                out.print("</li>");
                                                                
                                                            }

                                                        %>
                                                        
                                                    </ul>

                                                </li>
                                                <li><a href="#">Cart</a></li>
                                                <li><a href="contact.php">Contact</a></li>
                                            </ul>
                                        </nav>
                                    </div>
                                </div>

                                <div class="col-xl-5 col-lg-3 col-md-3 col-sm-3 fix-card">
                                    <form class="form-inline" action="/webbantuixach/bagbag/index.php" method="post" value="">
                                        <ul class="header-right f-right d-none d-lg-block d-flex justify-content-between">
                                            <li class="d-none d-xl-block">
                                                <div class="form-box f-right ">

                                                    <input type="search" id="Search" name="Search" placeholder="Search products">

                                                    <div class="search-icon">
                                                        <i class="fas fa-search special-tag" ></i>
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
                                        <input id="chinhser" type="submit" name="submit" value="">
                                    </form> 
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
        <main>
            <!-- slider Area Start -->
            <div class="slider-area ">
                <!-- Mobile Menu -->
                <div class="slider-active">
                    <div class="single-slider slider-height" data-background="assets/img/hero/h1_hero.jpg">
                        <div class="container">
                            <div class="row d-flex align-items-center justify-content-between">
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 d-none d-md-block">
                                    <div class="hero__img" data-animation="bounceIn" data-delay=".4s">
                                        <img id="img11" style="color:#c7ecff;" src="kisspng-handbag-shoulder-5d0f0fe5963a99.6507604515612681976153.png" alt="Banner">
                                    </div>
                                </div>
                                <div class="col-xl-5 col-lg-5 col-md-5 col-sm-8">
                                    <div class="hero__caption">
                                        <!-- <span data-animation="fadeInRight" data-delay=".4s">60% Discount</span> -->
                                        <h1 data-animation="fadeInRight" data-delay=".6s">An understated,<br> dynamic look
                                        </h1>
                                        <!-- Hero-btn -->
                                        <div class="hero__btn" data-animation="fadeInRight" data-delay="1s"><br>
                                            <a href="#" class="btn hero-btn">Shop Now</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <!-- slider Area End-->
            <!-- Category Area Start-->
            <section class="category-area section-padding30">
                <div class="container-fluid">
                    <!-- Section Tittle -->
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="section-tittle text-center mb-85">
                                <h2>Shop by Category</h2>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xl-6 col-lg-6">
                            <div class="single-category mb-30">
                                <a href="homedanhmuc.php?gender=Woman">
                                    <div class="category-img">
                                        <img src="assets/img/categori/cat2.jpg" alt="">
                                        <div class="category-caption">
                                            <h2>Women's Collection</h2>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-6">
                            <div class="single-category mb-30">
                                <a href="homedanhmuc.php?gender=Men">
                                    <div class="category-img">
                                        <img src="assets/img/categori/cat3.jpg" alt="">
                                        <div class="category-caption">
                                            <h2>Men's Collection</h2>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Category Area End-->
            <!-- Latest Products Start -->
            <section class="latest-product-area padding-bottom">
                <div class="container">
                    <div class="row product-btn d-flex justify-content-end align-items-end">
                        <!-- Section Tittle -->
                        <div class="col-xl-4 col-lg-5 col-md-5">
                            <div class="section-tittle mb-30">
                                <h2>Latest Products</h2>
                            </div>
                        </div>
                        <div class="col-xl-8 col-lg-7 col-md-7">
                            <div class="properties__button f-right">
                                <!--Nav Button  -->
                                <nav>
                                    <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                        <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">All</a>
                                    </div>
                                </nav>
                                <!--End Nav Button  -->
                            </div>
                        </div>
                    </div>
                    <!-- Nav Card -->
                    <div class="tab-content" id="nav-tabContent">
                        <!-- card one -->
                        <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                            <div class="row">
                                <%
                                    ProductDao db = new ProductDao();
                                    ImageDao im = new ImageDao();
                                    //out.println(db.sayHello());
                                    String x = request.getParameter("Page");
                                    ArrayList<Product> Products = db.GetProductcg((Integer.parseInt(x) - 1) * 6,request.getParameter("CategoryName"));
                                    for (Product br : Products) {
                                        out.print("<a href='HomeDetails.jsp?Productid=" + br.getProductid() + "' >");
                                        out.print("<div class='col-xl-4 col-lg-4 col-md-6'>");
                                        out.print("<div class='single-product mb-60'>");
                                        out.print("<div class='product-img'>");
                                        ArrayList<Image> Images = im.GetImage(br.getProductid());
                                        for (Image imss : Images) {
                                            out.print("<img style='width: 300px;height: 300px' src='../img/ImageProduct/" + imss.getImage() + "' />");
                                            break;
                                        }
                                        out.print("</div>");
                                        out.print("<div class='product-caption'>");
                                        out.print("<h4><a>" + br.getProductName() + "</a></h4>");
                                        out.print("<div class='price'>" + br.getPrice() + "</div>");
                                        out.print("</div>");
                                        out.print("</div>");
                                        out.print("</div>");
                                        out.print("</a>");

                                    }
                                %>

                            </div>

                        </div>
                        <!-- End Nav Card -->
                    </div>
                    <div class="container">                
                        <ul class="pagination">
                            <%
                                int dem = 0;

                                ArrayList<Product> countbr = db.CountProductcg(request.getParameter("CategoryName"));
                                int tongso = countbr.size();
                                double a = (double) tongso / 6;
                                int sotrang = (int) Math.ceil(a);
                                String listpage = " ";
                                for (int i = 1; i <= sotrang; i++) {
                                    if (i == Integer.parseInt(x)) {
                                        dem = i;
                                        listpage += "<li class='page-item active'><a class='page-link' href='HomeCategory.jsp?Page=" + i + "&CategoryName="+request.getParameter("CategoryName")+"'>" + i + "</a></li>";
                                    } else {
                                        listpage += "<li><a class='page-link' href='HomeCategory.jsp?Page=" + i + "&CategoryName="+request.getParameter("CategoryName")+"'>" + i + "</a></li>";
                                    }

                                }
                                int dem2 = dem + 1;
                                int dem3 = dem - 1;
                                if (dem > 1) {
                                    out.print("<li ><a class='page-link' href='HomeCategory.jsp?Page=" + dem3 + "&CategoryName="+request.getParameter("CategoryName")+"'>"+"Previous</a></li>");
                                }

                                out.print(listpage);
                                if (dem < sotrang) {
                                    out.print("<li ><a class='page-link' href='HomeCategory.jsp?Page=" + dem2 + "&CategoryName="+request.getParameter("CategoryName")+"'>"+"Next</a></li>");
                                }

                            %>
                        </ul>
                    </div>
                </div>    
            </section>

            <!-- Latest Products End -->
            <!-- Latest Offers Start -->
            <div class="latest-wrapper lf-padding">
                <div class="latest-area latest-height d-flex align-items-center" data-background="assets/img/collection/latest-offer.png">
                    <div class="container">
                        <div class="row d-flex align-items-center">
                            <div class="col-xl-5 col-lg-5 col-md-6 offset-xl-1 offset-lg-1">
                                <div class="latest-caption">
                                    <h2>Get Our<br>Latest Offers News</h2>
                                    <p>Subscribe news latter</p>
                                </div>
                            </div>
                            <div class="col-xl-5 col-lg-5 col-md-6 ">
                                <div class="latest-subscribe">
                                    <form action="#">
                                        <input type="email" placeholder="Your email here">
                                        <button>Shop Now</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Latest Offers End -->
            <!-- Gallery Start-->
            <div class="gallery-wrapper lf-padding">
                <div class="gallery-area">
                    <div class="container">
                        <div class="row">
                            <div class="gallery-items">
                                <img src="foot1.png" style="border: none;" class="img-thumbnail" alt="">
                            </div>
                            <div class="gallery-items">
                                <img src="foot2.png" class="img-thumbnail" style="border: none;" alt="">
                            </div>
                            <div class="gallery-items">
                                <img src="foot3.jpg" class="img-thumbnail" style="border: none;" alt="">
                            </div>
                            <div class="gallery-items">
                                <img src="foot4.jpg" class="img-thumbnail" style="border: none;" alt="">
                            </div>
                            <div class="gallery-items">
                                <img src="foot5.jpg" class="img-thumbnail" style="border: none;" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Gallery End-->
        </main>
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
    </body>

</html>
