<%-- 
    Document   : ShoppingCard
    Created on : Dec 5, 2021, 9:41:13 AM
    Author     : hieun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">
    <%
            if(session.getAttribute("username")==null){
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

            .card {
                margin: auto;
                max-width: 950px;
                width: 90%;
                box-shadow: 0 6px 20px 0 rgba(0, 0, 0, 0.19);
                border-radius: 1rem;
                border: transparent
            }

            @media(max-width:767px) {
                .card {
                    margin: 3vh auto
                }
            }

            .cart {
                background-color: #fff;
                padding: 4vh 5vh;
                border-bottom-left-radius: 1rem;
                border-top-left-radius: 1rem
            }

            @media(max-width:767px) {
                .cart {
                    padding: 4vh;
                    border-bottom-left-radius: unset;
                    border-top-right-radius: 1rem
                }
            }

            .summary {
                background-color: #ddd;
                border-top-right-radius: 1rem;
                border-bottom-right-radius: 1rem;
                padding: 4vh;
                color: rgb(65, 65, 65)
            }

            @media(max-width:767px) {
                .summary {
                    border-top-right-radius: unset;
                    border-bottom-left-radius: 1rem
                }
            }

            .summary .col-2 {
                padding: 0
            }

            .summary .col-10 {
                padding: 0
            }

            .row {
                margin: 0
            }

            .title b {
                font-size: 1.5rem
            }

            .main {
                margin: 0;
                padding: 2vh 0;
                width: 100%
            }

            .col-2,
            .col {
                padding: 0 1vh
            }

            a {
                padding: 0 1vh
            }

            .close {
                margin-left: auto;
                font-size: 0.7rem
            }

            img {
                width: 3.5rem
            }

            .back-to-shop {
                margin-top: 4.5rem
            }

            h5 {
                margin-top: 4vh
            }

            hr {
                margin-top: 1.25rem
            }

            form {
                padding: 2vh 0
            }

            select {
                border: 1px solid rgba(0, 0, 0, 0.137);
                padding: 1.5vh 1vh;
                margin-bottom: 4vh;
                outline: none;
                width: 100%;
                background-color: rgb(247, 247, 247)
            }

            input {
                border: 1px solid rgba(0, 0, 0, 0.137);
                padding: 1vh;
                margin-bottom: 4vh;
                outline: none;
                width: 100%;
                background-color: rgb(247, 247, 247)
            }

            input:focus::-webkit-input-placeholder {
                color: transparent
            }

            .btn {
                background-color: #000;
                border-color: #000;
                color: white;
                width: 100%;
                font-size: 0.7rem;
                margin-top: 4vh;
                padding: 1vh;
                border-radius: 0
            }

            .btn:focus {
                box-shadow: none;
                outline: none;
                box-shadow: none;
                color: white;
                -webkit-box-shadow: none;
                -webkit-user-select: none;
                transition: none
            }

            .btn:hover {
                color: white
            }

            a {
                color: black
            }

            a:hover {
                color: black;
                text-decoration: none
            }

            #code {
                background-image: linear-gradient(to left, rgba(255, 255, 255, 0.253), rgba(255, 255, 255, 0.185)), url("https://img.icons8.com/small/16/000000/long-arrow-right.png");
                background-repeat: no-repeat;
                background-position-x: 95%;
                background-position-y: center
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
                                <h2>Shopping Cart</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="product_image_area">
            <div class="card">
                <div class="row">
                    <div class="col-md-8 cart">
                        <div class="title">
                            <div class="row">
                                <div class="col">
                                    <h4><b>Shopping Cart</b></h4>
                                </div>
                                <div class="col align-self-center text-right text-muted">3 items</div>
                            </div>
                        </div>
                        <div class="row border-top border-bottom">
                            <div class="row main align-items-center">
                                <div class="col-2"><img class="img-fluid" src="https://i.imgur.com/1GrakTl.jpg"></div>
                                <div class="col">
                                    <div class="row text-muted">Shirt</div>
                                    <div class="row">Cotton T-shirt</div>
                                </div>
                                <div class="col"> <a href="#">-</a><a href="#" class="border">1</a><a href="#">+</a> </div>
                                <div class="col">&euro; 44.00 <span class="close">&#10005;</span></div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="row main align-items-center">
                                <div class="col-2"><img class="img-fluid" src="https://i.imgur.com/ba3tvGm.jpg"></div>
                                <div class="col">
                                    <div class="row text-muted">Shirt</div>
                                    <div class="row">Cotton T-shirt</div>
                                </div>
                                <div class="col"> <a href="#">-</a><a href="#" class="border">1</a><a href="#">+</a> </div>
                                <div class="col">&euro; 44.00 <span class="close">&#10005;</span></div>
                            </div>
                        </div>
                        <div class="row border-top border-bottom">
                            <div class="row main align-items-center">
                                <div class="col-2"><img class="img-fluid" src="https://i.imgur.com/pHQ3xT3.jpg"></div>
                                <div class="col">
                                    <div class="row text-muted">Shirt</div>
                                    <div class="row">Cotton T-shirt</div>
                                </div>
                                <div class="col"> <a href="#">-</a><a href="#" class="border">1</a><a href="#">+</a> </div>
                                <div class="col">&euro; 44.00 <span class="close">&#10005;</span></div>
                            </div>
                        </div>
                        
                        
                    </div>
                    <div class="col-md-4 summary">
                        <div>
                            <h5><b>Summary</b></h5>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col" style="padding-left:0;">ITEMS 3</div>
                            <div class="col text-right">&euro; 132.00</div>
                        </div>
                        <form>
                            <p>SHIPPING</p> <select>
                                <option class="text-muted">Standard-Delivery- &euro;5.00</option>
                            </select>
                            <p>GIVE CODE</p> <input id="code" placeholder="Enter your code">
                        </form>
                        <div class="row" style="border-top: 1px solid rgba(0,0,0,.1); padding: 2vh 0;">
                            <div class="col">TOTAL PRICE</div>
                            <div class="col text-right">&euro; 137.00</div>
                        </div> <button class="btn">CHECKOUT</button>
                    </div>
                </div>
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


    </body>

</html>