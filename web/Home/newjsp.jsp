<%-- 
    Document   : newjsp
    Created on : Nov 27, 2021, 9:45:33 AM
    Author     : hieun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Slick Slider</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1">
            <!-- Bootstrap CSS -->
            <!-- CSS LIBRARY -->
            <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.0/css/bootstrap.min.css" rel="stylesheet"
                  type="text/css" />
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick-theme.min.css" integrity="sha512-17EgCFERpgZKcm0j0fEq1YCJuyAWdz9KUtv1EjVuaOz8pDnh/0nZxmU6BBXwaaxqoi9PQXnRWqlcDB027hgv9A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.css" integrity="sha512-yHknP1/AwR+yx26cB1y0cjvQUMvEa2PFzt1c9LlS4pRQ5NOTZFWbhBig+X9G9eYW/8m0/4OXNx8pxJ6z57x0dw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" integrity="sha512-5A8nwdMOWrSz20fDsjczgUidUBR8liPYU+WymTZP1lmY9G6Oc7HlZv156XqnsgNUzTyMefFTcsFH/tnJE/+xBg==" crossorigin="anonymous" referrerpolicy="no-referrer" />

            <style type="text/css">
                body{
                    background-color: #3498db;
                    color: #fff;
                }
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

        <div class="container">
            <p>&nbsp;</p>
            <div id="wapper">
                <div class="row filtering">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="row">
                            <div class="wap-items-ss brbox">
                                <div class="wap-ss-img">
                                    <img alt="" src="frontend/img/iphone1.jpg">
                                </div>
                                <div class="textleft">
                                    <div style="margin-top:10px;">Điện Thoại iPhone 11 64GB - Hàng Chính Hãng</div>

                                    <div><b>14.290.000 ₫</b></div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="row">
                            <div class="wap-items-ss brbox">
                                <div class="wap-ss-img">
                                    <img alt="" src="frontend/img/iphone2.jpg">
                                </div>
                                <div class="textleft">
                                    <div style="margin-top:10px;">Điện Thoại iPhone 11 64GB - Hàng Chính Hãng</div>

                                    <div><b>14.290.000567 ₫</b></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>   


        </div>

        <p style="text-align:justify;">&nbsp;</p>
        </div>


        <script type="text/javascript" src="frontend/js/bootstrap.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.js" integrity="sha512-HGOnQO9+SP1V92SrtZfjqxxtLmVzqZpjFFekvzZVWoiASSQgSr4cw9Kqd2+l8Llp4Gm0G8GIFJ4ddwZilcdb8A==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.js" integrity="sha512-eP8DK17a+MOcKHXC5Yrqzd8WI5WKh6F1TIk5QZ/8Lbv+8ssblcz7oGC8ZmQ/ZSAPa7ZmsCU4e/hcovqR8jfJqA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script type="text/javascript">
            $('.filtering').slick({
                dots: true,
                infinite: true,
                speed: 500,
                fade: true,
                cssEase: 'linear'
            });

            //var filtered = false;
            //
            //$('.js-filter').on('click', function(){
            //  if (filtered === false) {
            //    $('.filtering').slick('slickFilter',':even');
            //    $(this).text('Unfilter Slides');
            //    filtered = true;
            //  } else {
            //    $('.filtering').slick('slickUnfilter');
            //    $(this).text('Filter Slides');
            //    filtered = false;
            //  }
            //});
        </script>

    </body>
</html>

