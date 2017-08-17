<%@ page language="java" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Home</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
		
        <!-- all css here -->
        <!-- bootstrap v3.3.6 css -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- animate css -->
        <link rel="stylesheet" href="css/animate.css">
        <!-- jquery-ui.min css -->
        <link rel="stylesheet" href="css/jquery-ui.min.css">
        <!-- meanmenu css -->
        <link rel="stylesheet" href="css/meanmenu.min.css">
        <!-- nivo slider css -->
        <link rel="stylesheet" href="lib/css/nivo-slider.css" type="text/css" />
        <link rel="stylesheet" href="lib/css/preview.css" type="text/css" />
        <!-- owl.carousel css -->
        <link rel="stylesheet" href="css/owl.carousel.css">
        <!-- font-awesome css -->
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <!-- style css -->
        <link rel="stylesheet" href="style.css">
        <!-- responsive css -->
        <link rel="stylesheet" href="css/responsive.css">
        <!-- modernizr js -->
        <script src="js/vendor/modernizr-2.8.3.min.js"></script>
    </head>
    <body>




        <!--顶端我的信息,订单,购物车  开始-->
        <div class="header_area">
            <div class="header_border">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6 col-lg-6 col-sm-6 col-xs-12">
                            <div class="header_heaft_area">
                                <div class="header_left_all">
                                    <div class="mean_al_dv">
                                       
                                    </div>
                                    <div class="usd_area">
                                       
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-6 col-sm-6 col-xs-12">
                            <div class="header_right_area">
                                <ul>
                                    <li>
                                        <a class="account" href="#">我的账户</a>
                                    </li>
                                    <li>
                                        <a class="wishlist" href="#">我的订单</a>
                                    </li>
                                    <li>
                                        <a class="Shopping cart" href="#">我的购物车</a>
                                    </li>
                                    <li>
                                        <a class="Checkout" href="#">登出</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
           <!--顶端我的信息,订单,购物车  结束-->
            
            
            
            
            <!--图表及搜索框  开始-->
            <div class="header_middle">
                <div class="container">
                    <div class="row">
                        <div class="col-md-3">
                            <div class="logo_area">
                                <a href="index.html"><img src="img/logo-pic/logo.png" alt="" /></a>
                            </div>
                        </div>
                        <div class="col-md-9">
                            <div class="header_all search_box_area">
                                <form class="new_search" role="search" method="get" action="#">
                                    <input id="mix_search" class="search-field" placeholder="" value="" name="s" title="Search for:" type="search">
                                    <input value="Search" type="submit">
                                    <input name="post_type" value="product" type="hidden">
                                </form>
                            </div>
                            <div class="header_all shopping_cart_area">
                                <div class="widget_shopping_cart_content">
                                    <div class="topcart">
                                        <a class="cart-toggler" href="">
                                            <i class="icon"></i>
                                            <span class="my-cart">购物车</span>
                                            <span class="qty">2 Items</span>
                                            <span class="fa fa-angle-down"></span>
                                        </a>
                                        <div class="new_cart_section">
                                            <ol class="new-list">
                                                <!-- single item -->
                                                <li class="wimix_area">
                                                    <a class="pix_product" href="">
                                                        <img alt="" src="img/product-pic/7-150x98.jpg">
                                                    </a>
                                                    <div class="product-details">
                                                        <a href="#">Adipiscing cursus eu</a>
                                                        <span class="sig-price">1×$300.00</span>
                                                    </div>
                                                    <div class="cart-remove">
                                                        <a class="action" href="#">
                                                            <i class="fa fa-close"></i>
                                                        </a>
                                                    </div>
                                                </li>
                                                <!-- single item -->
                                                 <li class="wimix_area">
                                                    <a class="pix_product" href="">
                                                        <img alt="" src="img/product-pic/7-150x98.jpg">
                                                    </a>
                                                    <div class="product-details">
                                                        <a href="#">Adipiscing cursus eu</a>
                                                        <span class="sig-price">1×$300.00</span>
                                                    </div>
                                                    <div class="cart-remove">
                                                        <a class="action" href="#">
                                                            <i class="fa fa-close"></i>
                                                        </a>
                                                    </div>
                                                </li>
                                                <!-- single item -->
                                                <li class="wimix_area">
                                                    <a class="pix_product" href="#">
                                                    <img alt="" src="img/product-pic/1-150x98.jpg">
                                                    </a>
                                                    <div class="product-details">
                                                        <a href="#">Duis convallis</a>
                                                        <span class="sig-price">1×$100.00</span>
                                                    </div>
                                                    <div class="cart-remove">
                                                        <a class="action" href="#">
                                                            <i class="fa fa-close"></i>
                                                        </a>
                                                    </div>
                                                </li>
                                                <!-- single item -->
                                            </ol>
                                            <div class="top-subtotal">
                                                Subtotal: <span class="sig-price">$400.00</span>
                                            </div>
                                            <div class="cart-button">
                                                <ul>
                                                    <li>
                                                        <a href="#">View my cart <i class="fa fa-angle-right"></i></a>
                                                    </li>
                                                    <li>
                                                        <a href="#">Checkout <i class="fa fa-angle-right"></i></a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--图表及搜索框  结束-->
            
            <!--分类、菜单栏开始-->
            <div class="all_menu_area">
                <div class="menu_inner">
                    <div class="container">
                        <div class="full_menu clearfix">
                            <div class="new_menu">
                                <div class="drp-menu">
                                    <div class="col-md-3 pr pl">
                                        <div class="all_catagories">
                                            <div class="enable_catagories">
                                                <i class="fa fa-bars"></i>
                                                <span>All Categories</span>
                                                <i class="fa fa-angle-down"></i>
                                            </div>
                                        </div>
                                        <div class="catagory_menu_area">
                                            <div class="catagory_mega_menu">
                                                <div class="cat_mega_start">
                                                    <ul class="list">
                                                        <li class="next_area">
                                                            <a class="item_link" href="#">
                                                                <i class="fa fa-television"></i>
                                                                <span class="link_content">
                                                                    <span class="link_text">
                                                                        Electronics
                                                                        <span class="link_descr">Praesent accumsan elementum maximus </span>
                                                                    </span>
                                                                </span>
                                                            </a>
                                                            <ul class="electronics_drpdown">
                                                                <li class="parent">
                                                                    <a href="#"></a>
                                                                    <div class="mega_menu">
                                                                        <div class="mega_menu_coloumn">
                                                                            <ul>
                                                                                <li><a href="#">Men's</a></li>
                                                                                <li><a href="#">Hats</a></li>
                                                                                <li><a href="#">Mirriors</a></li>
                                                                                <li><a href="#">Singles</a></li>
                                                                            </ul>
                                                                        </div>
                                                                        <div class="mega_menu_coloumn">
                                                                            <ul>
                                                                                <li><a href="#">Sports& Outdoors</a></li>
                                                                                <li><a href="#">Smartphones</a></li>
                                                                                <li><a href="#">Womens</a></li>
                                                                                <li><a href="#">Health & Beauty</a></li>
                                                                            </ul>
                                                                        </div>
                                                                        <div class="mega_menu_coloumn">
                                                                            <ul>
                                                                                <li class="mega_content"><a href="#">Accessories</a></li>
                                                                                <li><a href="#">Hobbies</a></li>
                                                                                <li><a href="#">networking</a></li>
                                                                                <li><a href="#">accessories</a></li>
                                                                                <li><a href="#">electronics</a></li>
                                                                            </ul>
                                                                        </div>
                                                                        <div class="mega_menu_coloumn">
                                                                            <ul>
                                                                                <li><a href="#">Laptops & Accessories</a></li>
                                                                                <li><a href="#">hoodies</a></li>
                                                                                <li><a href="#">watches</a></li>
                                                                                <li><a href="#">flashlights</a></li>
                                                                                <li><a href="#">mirriors</a></li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                            </ul>
                                                        </li>
                                                        <li class="differ_sec_area">
                                                            <a class="item_link" href="#">
                                                                <i class="fa fa-mobile"></i>
                                                                <span class="link_content">
                                                                    <span class="link_text">
                                                                        Smartphone & Tablets
                                                                        <span class="link_descr">Praesent accumsan elementum maximus </span>
                                                                    </span>
                                                                </span>
                                                            </a>
                                                            <ul class="another_drop_menu">
                                                                <li class="discrip">
                                                                    <a class="new_link_2 with_icon" href="#" tabindex="1">Posters</a>
                                                                    <ul class="new_miup_menu">
                                                                        <li>
                                                                            <ul class="new_mixup_tm">
                                                                                <li class="exact">
                                                                                    <a class="new_link_8 with_icon" href="#" tabindex="1">Cocktail</a>
                                                                                    <ul class="decent_mean_menu">
                                                                                        <li>
                                                                                            <ul class="new_mixup_tm">
                                                                                                <li>
                                                                                                    <a href="#"></a>Cost & Jackets
                                                                                                </li>
                                                                                            </ul>
                                                                                        </li>
                                                                                    </ul>
                                                                                </li>
                                                                                <li><a href="#">Furniture</a></li>
                                                                            </ul>
                                                                        </li>
                                                                    </ul>
                                                                </li>
                                                                <li class="risk">
                                                                    <a class="new_link_2 new_link_3 with_icon" href="#" tabindex="1">Watches
                                                                    </a>
                                                                    <ul class="new_miup_menu">
                                                                        <li>
                                                                            <ul class="new_mixup_tm">
                                                                                <li><a href="#">Women's</a></li>
                                                                            </ul>
                                                                        </li>
                                                                    </ul>
                                                                </li>
                                                                <li><a href="#">Pendants</a></li>
                                                                <li><a href="#">Chocklates</a></li>
                                                            </ul>
                                                        </li>
                                                        <li class="differ_sec_area">
                                                            <a class="item_link " href="#">
                                                                <i class="fa fa-gift"></i>
                                                                <span class="link_content">
                                                                    <span class="link_text">
                                                                        Health & Beauty
                                                                        <span class="link_descr">Praesent accumsan elementum maximus</span>
                                                                    </span>
                                                                </span>
                                                            </a>
                                                            <ul class="another_drop_menu">
                                                                <li class="discrip">
                                                                    <a class="new_link_2 new_link_4 with_icon" href="#" tabindex="1">
                                                                        <i class="fa fa-futbol-o"></i>
                                                                        Sports & Outdoors
                                                                    </a>
                                                                </li>
                                                                <li class="discrip">
                                                                    <a class="new_link_2 new_link_4 with_icon" href="#" tabindex="1">
                                                                        <i class="fa fa-bullseye"></i>
                                                                        Bags, Shoes & Accessories
                                                                    </a>
                                                                </li>
                                                                <li class="discrip"><a class="new_link_2 new_link_4 with_icon" href="#" tabindex="1"><i class="fa fa-file-image-o"></i>
                                                                    Toys & Hobbies</a>
                                                                </li>
                                                                <li class="discrip">
                                                                    <a class="new_link_2 new_link_4 with_icon" href="#" tabindex="1"><i class="fa fa-television"></i>
                                                                    Computer & Networking</a>
                                                                </li>
                                                                <li class="discrip">
                                                                    <a class="new_link_2 new_link_4 with_icon" href="#" tabindex="1">
                                                                        <i class="fa fa-laptop"></i>
                                                                        Laptops & Accessories
                                                                    </a>
                                                                </li>
                                                            </ul>
                                                        </li>
                                                        <li>
                                                            <a class="item_link item_link_2" href="#">
                                                                <i class="fa fa-heart"></i>
                                                                <span class="link_content">
                                                                    <span class="link_text">
                                                                        Jewelry & Watches
                                                                        <span class="link_descr">Praesent accumsan elementum maximus</span>
                                                                    </span>
                                                                </span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a class="item_link item_link_2" href="#">
                                                                <i class="fa fa-star"></i>
                                                                <span class="link_content">
                                                                    <span class="link_text">
                                                                        Flashlights & Lamps
                                                                        <span class="link_descr">Praesent accumsan elementum maximus</span>
                                                                    </span>
                                                                </span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a class="item_link item_link_2" href="#">
                                                                <i class="fa fa-lightbulb-o"></i>
                                                                <span class="link_content">
                                                                    <span class="link_text">
                                                                        Headlight
                                                                        <span class="link_descr">Praesent accumsan elementum maximus</span>
                                                                    </span>
                                                                </span>
                                                            </a>
                                                        </li>
                                                        <li class="cost-menu">
                                                            <a class="item_link item_link_2" href="#">
                                                                <i class="fa fa-pie-chart"></i>
                                                                <span class="link_content">
                                                                    <span class="link_text">
                                                                        Cost & jackets
                                                                        <span class="link_descr">Praesent accumsan elementum maximus </span>
                                                                    </span>
                                                                </span>
                                                            </a>
                                                        </li>
                                                        <li class="showmore-items shwitm">
                                                            <i class="fa fa-plus-square-o"></i>
                                                            <span>More Categories</span>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!--    菜单开始-->
                                    <div class="col-md-9 pl">
                                        <div class="menu_area">
                                            <div class="menu">
                                                <nav>
                                                    <ul>
                                                        <li><a href="#">首页</a></li>
														<li><a href="seckill/list">秒杀</a></li>
														<li><a href="#">推荐</a></li>
														<li><a href="#">最新产品</a></li>
														<li><a href="#">电子数码</a></li>
														<li><a href="#">服装城</a></li>
														<li><a href="#">联系我们</a></li>
                                                    </ul>
                                                </nav>
                                            </div>
                                        </div>
                                    </div>
                                 		<!--    菜单结束 -->
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
         <!--分类、菜单栏结束-->
        
        

        <!--广告  轮播图  开始-->
        <section class="slider-area">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="bend niceties preview-2">
                            <div id="ensign-nivoslider" class="slides">
                                <img src="img/slider/slider1_1-1.jpg" alt="" title="#slider-caption-1" />
                                <img src="img/slider/slider1_2.jpg" alt="" title="#slider-caption-2" />
                            </div>
                            <!-- direction 1 -->
                            <div id="slider-caption-1" class="t-cn slider-direction slider-one">
                                <div class="slider-progress"></div>
                                <div class="tld-f1">
                                    <div class="layer-1-1 animated fadeInDown">
                                        <h1> $320.00</h1>
                                    </div>
                                    <div class="layer-1-2 animated flipInX">
                                        <h2>$245.00</h2>
                                    </div>
                                    <div class="layer-1-3 animated rotateInUpLeft">
                                        <h1>NOKIA E600</h1>
                                    </div>
                                    <div class="layer-1-4  animated rotateInUpLeft">
                                        <h3>SALE UO TO 30%</h3>
                                    </div>
                                    <div class="layer-1-5 animated rotateInUpLeft">
                                        <a href="#">Shopping Now</a>
                                    </div>
                                </div>
                                <div class="tld-f2">
                                    <div class="layer-1-6 animated zoomIn">
                                        <img src="img/slider/slider_8.png" alt="">
                                    </div>
                                </div>
                            </div>
                            <!-- direction 2 -->
                            <div id="slider-caption-2" class="slider-direction slider-two">
                                <div class="slider-progress"></div>
                                <div class="sld-fl">
                                    <div class="layer-2-1 animated fadeInLeftBig">
                                        <h1> $320.00</h1>
                                    </div>
                                    <div class="layer-2-2 animated slideInLeft">
                                        <h2>$245.00</h2>
                                    </div>
                                    <div class="layer-2-3 animated slideInLeft">
                                        <h1>MEN'S </h1>
                                    </div>
                                    <div class="layer-2-4 animated slideInLeft">
                                        <h3>SALE UO TO 30%</h3>
                                    </div>
                                    <div class="layer-2-5 animated bounceInUp">
                                        <a href="#">Shopping Now</a>
                                    </div>
                                </div>
                                <div class="sld-fr">
                                    <div class="layer-2-6 animated zoomIn">
                                        <img src="img/slider/slider-9.png" alt="">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
              
        <!--广告  轮播图  结束-->
        
        
        
        
 
        <!--空行  开始-->
        <div class="about_us_area">

        </div>
        <!--空行  结束-->
  
        <!--product catagory area start-->
        <div class="catagory_area">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="visible_product">                      
                            <div class="new_product">
                                <div class="product_heading">
                                    <i class="fa fa-star"></i>
                                    <span>秒杀</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12 text-right">
                        <div class="my-tabs">
                           
                            <div class="tab-content">
                                <div role="tabpanel" class="tab-pane active" id="home">
                                    <div class="row">
                                        <div class="feature-carousel indicator-brand-3">
                                        
                                        
                                        
                                        
                                           <!--  一个秒杀商品 -->
                                  <div class="col-md-12">
                                        <div class="all-pros all-pros-8 animated fadeInUp">
                                            <div class="single_product_3 ">
                                                <span>sale</span>
                                            </div>
                                            <div class="sinle_pic">
                                                <a href="#">
                                                <img class="primary-img" src="img/cosmatics-pic/cosmatic_pix_1.jpg" alt="" />
                                                <img class="secondary-img" src="img/cosmatics-pic/cosmatic_pix_2.jpg" alt="" />
                                                </a>
                                            </div>
                                            <div class="product-action" data-toggle="modal" data-target="#myModal">
                                                <button type="button" class="btn btn-info btn-lg quickview" data-toggle="tooltip" title="Quickview">Quick View</button>   
                                            </div>
                                            <div class="product_content">
                                                <div class="usal_pro usal_pro_eb">
                                                    <div class="product_name_2">
                                                        <h2>
                                                            <a href="#">Etiam gravida</a>
                                                        </h2>
                                                    </div>
                                                    <div class="product_price">
                                                        <div class="price_rating">
                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                            <a href="#">
                                                            <i class="fa fa-star"></i>
                                                            </a>
                                                            <a href="#"><i class="fa fa-star"></i>
                                                            </a>
                                                            <a class="not-rated" href="#">
                                                            <i class="fa fa-star-o" aria-hidden="true"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="price_box price_box_dgr">
                                                        <span class="old- price">$250.00</span>
                                                        <span class="spical-price">$200.00</span>
                                                    </div>
                                                    <div class="count-down-area">
                                                        <div data-countdown="2017/11/01">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                   <!--  一个秒杀商品 -->  
                                        
                                           <!--  一个秒杀商品 -->
                                  <div class="col-md-12">
                                        <div class="all-pros all-pros-8 animated fadeInUp">
                                            <div class="single_product_3 ">
                                                <span>sale</span>
                                            </div>
                                            <div class="sinle_pic">
                                                <a href="#">
                                                <img class="primary-img" src="img/cosmatics-pic/cosmatic_pix_1.jpg" alt="" />
                                                <img class="secondary-img" src="img/cosmatics-pic/cosmatic_pix_2.jpg" alt="" />
                                                </a>
                                            </div>
                                            <div class="product-action" data-toggle="modal" data-target="#myModal">
                                                <button type="button" class="btn btn-info btn-lg quickview" data-toggle="tooltip" title="Quickview">Quick View</button>   
                                            </div>
                                            <div class="product_content">
                                                <div class="usal_pro usal_pro_eb">
                                                    <div class="product_name_2">
                                                        <h2>
                                                            <a href="#">Etiam gravida</a>
                                                        </h2>
                                                    </div>
                                                    <div class="product_price">
                                                        <div class="price_rating">
                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                            <a href="#">
                                                            <i class="fa fa-star"></i>
                                                            </a>
                                                            <a href="#"><i class="fa fa-star"></i>
                                                            </a>
                                                            <a class="not-rated" href="#">
                                                            <i class="fa fa-star-o" aria-hidden="true"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="price_box price_box_dgr">
                                                        <span class="old- price">$250.00</span>
                                                        <span class="spical-price">$200.00</span>
                                                    </div>
                                                    <div class="count-down-area">
                                                        <div data-countdown="2017/11/01">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                   <!--  一个秒杀商品 -->  
                                        
                                           <!--  一个秒杀商品 -->
                                  <div class="col-md-12">
                                        <div class="all-pros all-pros-8 animated fadeInUp">
                                            <div class="single_product_3 ">
                                                <span>sale</span>
                                            </div>
                                            <div class="sinle_pic">
                                                <a href="#">
                                                <img class="primary-img" src="img/cosmatics-pic/cosmatic_pix_1.jpg" alt="" />
                                                <img class="secondary-img" src="img/cosmatics-pic/cosmatic_pix_2.jpg" alt="" />
                                                </a>
                                            </div>
                                            <div class="product-action" data-toggle="modal" data-target="#myModal">
                                                <button type="button" class="btn btn-info btn-lg quickview" data-toggle="tooltip" title="Quickview">Quick View</button>   
                                            </div>
                                            <div class="product_content">
                                                <div class="usal_pro usal_pro_eb">
                                                    <div class="product_name_2">
                                                        <h2>
                                                            <a href="#">Etiam gravida</a>
                                                        </h2>
                                                    </div>
                                                    <div class="product_price">
                                                        <div class="price_rating">
                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                            <a href="#">
                                                            <i class="fa fa-star"></i>
                                                            </a>
                                                            <a href="#"><i class="fa fa-star"></i>
                                                            </a>
                                                            <a class="not-rated" href="#">
                                                            <i class="fa fa-star-o" aria-hidden="true"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="price_box price_box_dgr">
                                                        <span class="old- price">$250.00</span>
                                                        <span class="spical-price">$200.00</span>
                                                    </div>
                                                    <div class="count-down-area">
                                                        <div data-countdown="2017/11/01">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                   <!--  一个秒杀商品 -->  
                                        
                                           <!--  一个秒杀商品 -->
                                  <div class="col-md-12">
                                        <div class="all-pros all-pros-8 animated fadeInUp">
                                            <div class="single_product_3 ">
                                                <span>sale</span>
                                            </div>
                                            <div class="sinle_pic">
                                                <a href="#">
                                                <img class="primary-img" src="img/cosmatics-pic/cosmatic_pix_1.jpg" alt="" />
                                                <img class="secondary-img" src="img/cosmatics-pic/cosmatic_pix_2.jpg" alt="" />
                                                </a>
                                            </div>
                                            <div class="product-action" data-toggle="modal" data-target="#myModal">
                                                <button type="button" class="btn btn-info btn-lg quickview" data-toggle="tooltip" title="Quickview">Quick View</button>   
                                            </div>
                                            <div class="product_content">
                                                <div class="usal_pro usal_pro_eb">
                                                    <div class="product_name_2">
                                                        <h2>
                                                            <a href="#">Etiam gravida</a>
                                                        </h2>
                                                    </div>
                                                    <div class="product_price">
                                                        <div class="price_rating">
                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                            <a href="#">
                                                            <i class="fa fa-star"></i>
                                                            </a>
                                                            <a href="#"><i class="fa fa-star"></i>
                                                            </a>
                                                            <a class="not-rated" href="#">
                                                            <i class="fa fa-star-o" aria-hidden="true"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="price_box price_box_dgr">
                                                        <span class="old- price">$250.00</span>
                                                        <span class="spical-price">$200.00</span>
                                                    </div>
                                                    <div class="count-down-area">
                                                        <div data-countdown="2017/11/01">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                   <!--  一个秒杀商品 -->  
                                        
                                           <!--  一个秒杀商品 -->
                                  <div class="col-md-12">
                                        <div class="all-pros all-pros-8 animated fadeInUp">
                                            <div class="single_product_3 ">
                                                <span>sale</span>
                                            </div>
                                            <div class="sinle_pic">
                                                <a href="#">
                                                <img class="primary-img" src="img/cosmatics-pic/cosmatic_pix_1.jpg" alt="" />
                                                <img class="secondary-img" src="img/cosmatics-pic/cosmatic_pix_2.jpg" alt="" />
                                                </a>
                                            </div>
                                            <div class="product-action" data-toggle="modal" data-target="#myModal">
                                                <button type="button" class="btn btn-info btn-lg quickview" data-toggle="tooltip" title="Quickview">Quick View</button>   
                                            </div>
                                            <div class="product_content">
                                                <div class="usal_pro usal_pro_eb">
                                                    <div class="product_name_2">
                                                        <h2>
                                                            <a href="#">Etiam gravida</a>
                                                        </h2>
                                                    </div>
                                                    <div class="product_price">
                                                        <div class="price_rating">
                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                            <a href="#">
                                                            <i class="fa fa-star"></i>
                                                            </a>
                                                            <a href="#"><i class="fa fa-star"></i>
                                                            </a>
                                                            <a class="not-rated" href="#">
                                                            <i class="fa fa-star-o" aria-hidden="true"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="price_box price_box_dgr">
                                                        <span class="old- price">$250.00</span>
                                                        <span class="spical-price">$200.00</span>
                                                    </div>
                                                    <div class="count-down-area">
                                                        <div data-countdown="2017/11/01">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                   <!--  一个秒杀商品 -->  
                                        
                                           <!--  一个秒杀商品 -->
                                  <div class="col-md-12">
                                        <div class="all-pros all-pros-8 animated fadeInUp">
                                            <div class="single_product_3 ">
                                                <span>sale</span>
                                            </div>
                                            <div class="sinle_pic">
                                                <a href="#">
                                                <img class="primary-img" src="img/cosmatics-pic/cosmatic_pix_1.jpg" alt="" />
                                                <img class="secondary-img" src="img/cosmatics-pic/cosmatic_pix_2.jpg" alt="" />
                                                </a>
                                            </div>
                                            <div class="product-action" data-toggle="modal" data-target="#myModal">
                                                <button type="button" class="btn btn-info btn-lg quickview" data-toggle="tooltip" title="Quickview">Quick View</button>   
                                            </div>
                                            <div class="product_content">
                                                <div class="usal_pro usal_pro_eb">
                                                    <div class="product_name_2">
                                                        <h2>
                                                            <a href="#">Etiam gravida</a>
                                                        </h2>
                                                    </div>
                                                    <div class="product_price">
                                                        <div class="price_rating">
                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                            <a href="#">
                                                            <i class="fa fa-star"></i>
                                                            </a>
                                                            <a href="#"><i class="fa fa-star"></i>
                                                            </a>
                                                            <a class="not-rated" href="#">
                                                            <i class="fa fa-star-o" aria-hidden="true"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="price_box price_box_dgr">
                                                        <span class="old- price">$250.00</span>
                                                        <span class="spical-price">$200.00</span>
                                                    </div>
                                                    <div class="count-down-area">
                                                        <div data-countdown="2017/11/01">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                   <!--  一个秒杀商品 -->  
                                        
                                        


                                        </div>
                                    </div>
                                </div>
                                <div role="tabpanel" class="tab-pane" id="profile">
                                    <div class="row">
                                        <div class="feature-carousel indicator-brand-3">
                                            <div class="col-md-12">
                                                <div class="all-pros all-pros-2 animated fadeInUp">
                                                    <div class="single_product">
                                                        <span>New</span>
                                                    </div>
                                                    <div class="sinle_pic">
                                                        <a href="#">
                                                        <img class="primary-img" src="img/product-pic/product_pic_3.jpg" alt="" />
                                                        <img class="secondary-img" src="img/product-pic/product_pic_4.jpg" alt="" />
                                                        </a>
                                                    </div>
                                                    <div class="product-action" data-toggle="modal" data-target="#myModal">
                                                        <button type="button" class="btn btn-info btn-lg quickview" data-toggle="tooltip" title="Quickview">Quick View</button>   
                                                    </div>
                                                    <div class="product_content">
                                                        <div class="usal_pro">
                                                            <div class="product_name_2">
                                                                <h2>
                                                                    <a href="#">Duis convallis</a>
                                                                </h2>
                                                            </div>
                                                            <div class="product_price">
                                                                <div class="price_rating">
                                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                                    <a href="#">
                                                                    <i class="fa fa-star"></i>
                                                                    </a>
                                                                    <a href="#"><i class="fa fa-star"></i>
                                                                    </a>
                                                                    <a class="not-rated" href="#">
                                                                    <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                            <div class="price_box">
                                                                <span class="spical-price">$100.00</span>
                                                            </div>
                                                            <div class="last_button_area">
                                                                <ul class="add-to-links clearfix">
                                                                    <li class="addwishlist">
                                                                        <div class="yith-wcwl-add-button show" >
                                                                            <a class="add_to_wishlist" href="" rel="nofollow" data-product-id="45" data-product-type="external" data-toggle="tooltip" title="" data-original-title="Add to Wishlist"><i class="fa fa-heart"></i></a>
                                                                        </div>
                                                                    </li>
                                                                    <li>
                                                                        <div class="new_act">
                                                                            <a class="button_act" data-quick-id="45" href="" title="" data-toggle="tooltip" data-original-title="Donec non est at">Add To Cart</a>
                                                                        </div>
                                                                    </li>
                                                                    <li class="addcompare">
                                                                        <div class="woocommerce product compare-button">
                                                                            <a class="compare button" href="" data-product_id="45" rel="nofollow" data-toggle="tooltip" title="" data-original-title="Compare"><i class="fa fa-refresh"></i></a>
                                                                        </div>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="all-pros all-pros-3 animated fadeInUp">
                                                    <div class="single_product">
                                                        <span>New</span>
                                                    </div>
                                                    <div class="sinle_pic">
                                                        <a href="#">
                                                        <img class="primary-img" src="img/product-pic/product_pic_5.jpg" alt="" />
                                                        <img class="secondary-img" src="img/product-pic/product_pic_6.jpg" alt="" />
                                                        </a>
                                                    </div>
                                                    <div class="product-action" data-toggle="modal" data-target="#myModal">
                                                        <button type="button" class="btn btn-info btn-lg quickview" data-toggle="tooltip" title="Quickview">Quick View</button>   
                                                    </div>
                                                    <div class="product_content">
                                                        <div class="usal_pro">
                                                            <div class="product_name_2">
                                                                <h2>
                                                                    <a href="#">Adipiscing cursus eu</a>
                                                                </h2>
                                                            </div>
                                                            <div class="product_price">
                                                                <div class="price_rating">
                                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                                    <a href="#">
                                                                    <i class="fa fa-star"></i>
                                                                    </a>
                                                                    <a class="not-rated" href="#">
                                                                    <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                    </a>
                                                                    <a class="not-rated" href="#">
                                                                    <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                            <div class="price_box">
                                                                <span class="spical-price">$300.00</span>
                                                            </div>
                                                            <div class="last_button_area">
                                                                <ul class="add-to-links clearfix">
                                                                    <li class="addwishlist">
                                                                        <div class="yith-wcwl-add-button show" >
                                                                            <a class="add_to_wishlist" href="" rel="nofollow" data-product-id="45" data-product-type="external" data-toggle="tooltip" title="" data-original-title="Add to Wishlist"><i class="fa fa-heart"></i></a>
                                                                        </div>
                                                                    </li>
                                                                    <li>
                                                                        <div class="new_act">
                                                                            <a class="button_act" data-quick-id="45" href="" title="" data-toggle="tooltip" data-original-title="Donec non est at">Add To Cart</a>
                                                                        </div>
                                                                    </li>
                                                                    <li class="addcompare">
                                                                        <div class="woocommerce product compare-button">
                                                                            <a class="compare button" href="" data-product_id="45" rel="nofollow" data-toggle="tooltip" title="" data-original-title="Compare"><i class="fa fa-refresh"></i></a>
                                                                        </div>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="all-pros  all-pros-4 animated fadeInUp">
                                                    <div class="single_product single_product_2">
                                                        <span>hot</span>
                                                    </div>
                                                    <div class="single_product_3 ">
                                                        <span>sale</span>
                                                    </div>
                                                    <div class="sinle_pic">
                                                        <a href="#">
                                                        <img class="primary-img" src="img/product-pic/product_pic_7.jpg" alt="" />
                                                        <img class="secondary-img" src="img/product-pic/product_pic_6.jpg" alt="" />
                                                        </a>
                                                    </div>
                                                    <div class="product-action" data-toggle="modal" data-target="#myModal">
                                                        <button type="button" class="btn btn-info btn-lg quickview" data-toggle="tooltip" title="Quickview">Quick View</button>   
                                                    </div>
                                                    <div class="product_content">
                                                        <div class="usal_pro">
                                                            <div class="product_name_2">
                                                                <h2>
                                                                    <a href="#">Cras nec nisl ut era</a>
                                                                </h2>
                                                            </div>
                                                            <div class="product_price">
                                                                <div class="price_rating">
                                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                                    <a href="#">
                                                                    <i class="fa fa-star"></i>
                                                                    </a>
                                                                    <a href="#"><i class="fa fa-star"></i>
                                                                    </a>
                                                                    <a class="not-rated" href="#">
                                                                    <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                            <div class="price_box">
                                                                <span class="old- price">$250.00</span>
                                                                <span class="spical-price">$200.00</span>
                                                            </div>
                                                            <div class="last_button_area">
                                                                <ul class="add-to-links clearfix">
                                                                    <li class="addwishlist">
                                                                        <div class="yith-wcwl-add-button show" >
                                                                            <a class="add_to_wishlist" href="" rel="nofollow" data-product-id="45" data-product-type="external" data-toggle="tooltip" title="" data-original-title="Add to Wishlist"><i class="fa fa-heart"></i></a>
                                                                        </div>
                                                                    </li>
                                                                    <li>
                                                                        <div class="new_act">
                                                                            <a class="button_act" data-quick-id="45" href="" title="" data-toggle="tooltip" data-original-title="Donec non est at">Add To Cart</a>
                                                                        </div>
                                                                    </li>
                                                                    <li class="addcompare">
                                                                        <div class="woocommerce product compare-button">
                                                                            <a class="compare button" href="" data-product_id="45" rel="nofollow" data-toggle="tooltip" title="" data-original-title="Compare"><i class="fa fa-refresh"></i></a>
                                                                        </div>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="all-pros all-pros-6 animated fadeInUp">
                                                    <div class="single_product_3 ">
                                                        <span>sale</span>
                                                    </div>
                                                    <div class="sinle_pic">
                                                        <a href="#">
                                                        <img class="primary-img" src="img/product-pic/product_pic_10.jpg" alt="" />
                                                        <img class="secondary-img" src="img/product-pic/product_pic_1.jpg" alt="" />
                                                        </a>
                                                    </div>
                                                    <div class="product-action" data-toggle="modal" data-target="#myModal">
                                                        <button type="button" class="btn btn-info btn-lg quickview" data-toggle="tooltip" title="Quickview">Quick View</button>   
                                                    </div>
                                                    <div class="product_content">
                                                        <div class="usal_pro">
                                                            <div class="product_name_2">
                                                                <h2>
                                                                    <a href="#">Metus nisi posuere nisl</a>
                                                                </h2>
                                                            </div>
                                                            <div class="product_price">
                                                                <div class="price_rating">
                                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                                    <a href="#">
                                                                    <i class="fa fa-star"></i>
                                                                    </a>
                                                                    <a href="#"><i class="fa fa-star"></i>
                                                                    </a>
                                                                    <a class="not-rated" href="#">
                                                                    <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                            <div class="price_box">
                                                                <span class="spical-price">$150.00-$200.00</span>
                                                            </div>
                                                            <div class="last_button_area">
                                                                <ul class="add-to-links clearfix">
                                                                    <li class="addwishlist">
                                                                        <div class="yith-wcwl-add-button show" >
                                                                            <a class="add_to_wishlist" href="" rel="nofollow" data-product-id="45" data-product-type="external" data-toggle="tooltip" title="" data-original-title="Add to Wishlist"><i class="fa fa-heart"></i></a>
                                                                        </div>
                                                                    </li>
                                                                    <li>
                                                                        <div class="new_act">
                                                                            <a class="button_act" data-quick-id="45" href="" title="" data-toggle="tooltip" data-original-title="Donec non est at">Add To Cart</a>
                                                                        </div>
                                                                    </li>
                                                                    <li class="addcompare">
                                                                        <div class="woocommerce product compare-button">
                                                                            <a class="compare button" href="" data-product_id="45" rel="nofollow" data-toggle="tooltip" title="" data-original-title="Compare"><i class="fa fa-refresh"></i></a>
                                                                        </div>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="all-pros all-pros-9 animated fadeInUp">
                                                    <div class="single_product_3 ">
                                                        <span>sale</span>
                                                    </div>
                                                    <div class="sinle_pic">
                                                        <a href="#">
                                                        <img class="primary-img" src="img/cosmatics-pic/cosmatic_pix_3.jpg" alt="" />
                                                        <img class="secondary-img" src="img/cosmatics-pic/cosmatic_pix_3.jpg" alt="" />
                                                        </a>
                                                    </div>
                                                    <div class="product-action" data-toggle="modal" data-target="#myModal">
                                                        <button type="button" class="btn btn-info btn-lg quickview" data-toggle="tooltip" title="Quickview">Quick View</button>   
                                                    </div>
                                                    <div class="product_content">
                                                        <div class="usal_pro">
                                                            <div class="product_name_2">
                                                                <h2>
                                                                    <a href="#">Nam fringilla</a>
                                                                </h2>
                                                            </div>
                                                            <div class="product_price">
                                                                <div class="price_rating">
                                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                                    <a href="#">
                                                                    <i class="fa fa-star"></i>
                                                                    </a>
                                                                    <a href="#"><i class="fa fa-star"></i>
                                                                    </a>
                                                                    <a class="not-rated" href="#">
                                                                    <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                            <div class="price_box">
                                                                <span class="old- price">$200.00</span>
                                                                <span class="spical-price">$150.00</span>
                                                            </div>
                                                            <div class="last_button_area">
                                                                <ul class="add-to-links clearfix">
                                                                    <li class="addwishlist">
                                                                        <div class="yith-wcwl-add-button show" >
                                                                            <a class="add_to_wishlist" href="" rel="nofollow" data-product-id="45" data-product-type="external" data-toggle="tooltip" title="" data-original-title="Add to Wishlist"><i class="fa fa-heart"></i></a>
                                                                        </div>
                                                                    </li>
                                                                    <li>
                                                                        <div class="new_act">
                                                                            <a class="button_act" data-quick-id="45" href="" title="" data-toggle="tooltip" data-original-title="Donec non est at">Add To Cart</a>
                                                                        </div>
                                                                    </li>
                                                                    <li class="addcompare">
                                                                        <div class="woocommerce product compare-button">
                                                                            <a class="compare button" href="" data-product_id="45" rel="nofollow" data-toggle="tooltip" title="" data-original-title="Compare"><i class="fa fa-refresh"></i></a>
                                                                        </div>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="all-pros all-pros-10 animated fadeInUp">
                                                    <div class="single_product single_product_2">
                                                        <span>hot</span>
                                                    </div>
                                                    <div class="sinle_pic">
                                                        <a href="#">
                                                        <img class="primary-img" src="img/product-pic/product_pic_12.jpg" alt="" />
                                                        <img class="secondary-img" src="img/product-pic/product_pic_13.jpg" alt="" />
                                                        </a>
                                                    </div>
                                                    <div class="product-action" data-toggle="modal" data-target="#myModal">
                                                        <button type="button" class="btn btn-info btn-lg quickview" data-toggle="tooltip" title="Quickview">Quick View</button>   
                                                    </div>
                                                    <div class="product_content">
                                                        <div class="usal_pro">
                                                            <div class="product_name_2">
                                                                <h2>
                                                                    <a href="#">Duis convallis</a>
                                                                </h2>
                                                            </div>
                                                            <div class="product_price">
                                                                <div class="price_rating">
                                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                                    <a href="#">
                                                                    <i class="fa fa-star"></i>
                                                                    </a>
                                                                    <a href="#"><i class="fa fa-star"></i>
                                                                    </a>
                                                                    <a class="not-rated" href="#">
                                                                    <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                            <div class="price_box">
                                                                <span class="spical-price">$200.00</span>
                                                            </div>
                                                            <div class="last_button_area">
                                                                <ul class="add-to-links clearfix">
                                                                    <li class="addwishlist">
                                                                        <div class="yith-wcwl-add-button show" >
                                                                            <a class="add_to_wishlist" href="" rel="nofollow" data-product-id="45" data-product-type="external" data-toggle="tooltip" title="" data-original-title="Add to Wishlist"><i class="fa fa-heart"></i></a>
                                                                        </div>
                                                                    </li>
                                                                    <li>
                                                                        <div class="new_act">
                                                                            <a class="button_act" data-quick-id="45" href="" title="" data-toggle="tooltip" data-original-title="Donec non est at">Add To Cart</a>
                                                                        </div>
                                                                    </li>
                                                                    <li class="addcompare">
                                                                        <div class="woocommerce product compare-button">
                                                                            <a class="compare button" href="" data-product_id="45" rel="nofollow" data-toggle="tooltip" title="" data-original-title="Compare"><i class="fa fa-refresh"></i></a>
                                                                        </div>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div role="tabpanel" class="tab-pane" id="messages">
                                    <div class="row">
                                        <div class="feature-carousel indicator-brand-3">
                                            <div class="col-md-12">
                                                <div class="all-pros all-pros-2 animated fadeInU">
                                                    <div class="single_product">
                                                        <span>New</span>
                                                    </div>
                                                    <div class="sinle_pic">
                                                        <a href="#">
                                                        <img class="primary-img" src="img/product-pic/product_pic_3.jpg" alt="" />
                                                        <img class="secondary-img" src="img/product-pic/product_pic_4.jpg" alt="" />
                                                        </a>
                                                    </div>
                                                    <div class="product-action" data-toggle="modal" data-target="#myModal">
                                                        <button type="button" class="btn btn-info btn-lg quickview" data-toggle="tooltip" title="Quickview">Quick View</button>   
                                                    </div>
                                                    <div class="product_content">
                                                        <div class="usal_pro">
                                                            <div class="product_name_2">
                                                                <h2>
                                                                    <a href="#">Duis convallis</a>
                                                                </h2>
                                                            </div>
                                                            <div class="product_price">
                                                                <div class="price_rating">
                                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                                    <a href="#">
                                                                    <i class="fa fa-star"></i>
                                                                    </a>
                                                                    <a href="#"><i class="fa fa-star"></i>
                                                                    </a>
                                                                    <a class="not-rated" href="#">
                                                                    <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                            <div class="price_box">
                                                                <span class="spical-price">$100.00</span>
                                                            </div>
                                                            <div class="last_button_area">
                                                                <ul class="add-to-links clearfix">
                                                                    <li class="addwishlist">
                                                                        <div class="yith-wcwl-add-button show" >
                                                                            <a class="add_to_wishlist" href="" rel="nofollow" data-product-id="45" data-product-type="external" data-toggle="tooltip" title="" data-original-title="Add to Wishlist"><i class="fa fa-heart"></i></a>
                                                                        </div>
                                                                    </li>
                                                                    <li>
                                                                        <div class="new_act">
                                                                            <a class="button_act" data-quick-id="45" href="" title="" data-toggle="tooltip" data-original-title="Donec non est at">Add To Cart</a>
                                                                        </div>
                                                                    </li>
                                                                    <li class="addcompare">
                                                                        <div class="woocommerce product compare-button">
                                                                            <a class="compare button" href="" data-product_id="45" rel="nofollow" data-toggle="tooltip" title="" data-original-title="Compare"><i class="fa fa-refresh"></i></a>
                                                                        </div>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="all-pros all-pros-3 animated fadeInUp">
                                                    <div class="single_product">
                                                        <span>New</span>
                                                    </div>
                                                    <div class="sinle_pic">
                                                        <a href="#">
                                                        <img class="primary-img" src="img/product-pic/product_pic_5.jpg" alt="" />
                                                        <img class="secondary-img" src="img/product-pic/product_pic_6.jpg" alt="" />
                                                        </a>
                                                    </div>
                                                    <div class="product-action" data-toggle="modal" data-target="#myModal">
                                                        <button type="button" class="btn btn-info btn-lg quickview" data-toggle="tooltip" title="Quickview">Quick View</button>   
                                                    </div>
                                                    <div class="product_content">
                                                        <div class="usal_pro">
                                                            <div class="product_name_2">
                                                                <h2>
                                                                    <a href="#">Adipiscing cursus eu</a>
                                                                </h2>
                                                            </div>
                                                            <div class="product_price">
                                                                <div class="price_rating">
                                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                                    <a href="#">
                                                                    <i class="fa fa-star"></i>
                                                                    </a>
                                                                    <a class="not-rated" href="#">
                                                                    <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                    </a>
                                                                    <a class="not-rated" href="#">
                                                                    <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                            <div class="price_box">
                                                                <span class="spical-price">$300.00</span>
                                                            </div>
                                                            <div class="last_button_area">
                                                                <ul class="add-to-links clearfix">
                                                                    <li class="addwishlist">
                                                                        <div class="yith-wcwl-add-button show" >
                                                                            <a class="add_to_wishlist" href="" rel="nofollow" data-product-id="45" data-product-type="external" data-toggle="tooltip" title="" data-original-title="Add to Wishlist"><i class="fa fa-heart"></i></a>
                                                                        </div>
                                                                    </li>
                                                                    <li>
                                                                        <div class="new_act">
                                                                            <a class="button_act" data-quick-id="45" href="" title="" data-toggle="tooltip" data-original-title="Donec non est at">Add To Cart</a>
                                                                        </div>
                                                                    </li>
                                                                    <li class="addcompare">
                                                                        <div class="woocommerce product compare-button">
                                                                            <a class="compare button" href="" data-product_id="45" rel="nofollow" data-toggle="tooltip" title="" data-original-title="Compare"><i class="fa fa-refresh"></i></a>
                                                                        </div>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="all-pros all-pros-4 animated fadeInUp">
                                                    <div class="single_product single_product_2">
                                                        <span>hot</span>
                                                    </div>
                                                    <div class="single_product_3 ">
                                                        <span>sale</span>
                                                    </div>
                                                    <div class="sinle_pic">
                                                        <a href="#">
                                                        <img class="primary-img" src="img/product-pic/product_pic_7.jpg" alt="" />
                                                        <img class="secondary-img" src="img/product-pic/product_pic_6.jpg" alt="" />
                                                        </a>
                                                    </div>
                                                    <div class="product-action" data-toggle="modal" data-target="#myModal">
                                                        <button type="button" class="btn btn-info btn-lg quickview" data-toggle="tooltip" title="Quickview">Quick View</button>   
                                                    </div>
                                                    <div class="product_content">
                                                        <div class="usal_pro">
                                                            <div class="product_name_2">
                                                                <h2>
                                                                    <a href="#">Cras nec nisl ut era</a>
                                                                </h2>
                                                            </div>
                                                            <div class="product_price">
                                                                <div class="price_rating">
                                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                                    <a href="#">
                                                                    <i class="fa fa-star"></i>
                                                                    </a>
                                                                    <a href="#"><i class="fa fa-star"></i>
                                                                    </a>
                                                                    <a class="not-rated" href="#">
                                                                    <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                            <div class="price_box">
                                                                <span class="old- price">$250.00</span>
                                                                <span class="spical-price">$200.00</span>
                                                            </div>
                                                            <div class="last_button_area">
                                                                <ul class="add-to-links clearfix">
                                                                    <li class="addwishlist">
                                                                        <div class="yith-wcwl-add-button show" >
                                                                            <a class="add_to_wishlist" href="" rel="nofollow" data-product-id="45" data-product-type="external" data-toggle="tooltip" title="" data-original-title="Add to Wishlist"><i class="fa fa-heart"></i></a>
                                                                        </div>
                                                                    </li>
                                                                    <li>
                                                                        <div class="new_act">
                                                                            <a class="button_act" data-quick-id="45" href="" title="" data-toggle="tooltip" data-original-title="Donec non est at">Add To Cart</a>
                                                                        </div>
                                                                    </li>
                                                                    <li class="addcompare">
                                                                        <div class="woocommerce product compare-button">
                                                                            <a class="compare button" href="" data-product_id="45" rel="nofollow" data-toggle="tooltip" title="" data-original-title="Compare"><i class="fa fa-refresh"></i></a>
                                                                        </div>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="all-pros all-pros-5 animated fadeInUp">
                                                    <div class="single_product">
                                                        <span>New</span>
                                                    </div>
                                                    <div class="sinle_pic">
                                                        <a href="#">
                                                        <img class="primary-img" src="img/product-pic/product_pic_8.jpg" alt="" />
                                                        <img class="secondary-img" src="img/product-pic/product_pic_9.jpg" alt="" />
                                                        </a>
                                                    </div>
                                                    <div class="product-action" data-toggle="modal" data-target="#myModal">
                                                        <button type="button" class="btn btn-info btn-lg quickview" data-toggle="tooltip" title="Quickview">Quick View</button>   
                                                    </div>
                                                    <div class="product_content">
                                                        <div class="usal_pro">
                                                            <div class="product_name_2">
                                                                <h2>
                                                                    <a href="#">Nam fringilla augue</a>
                                                                </h2>
                                                            </div>
                                                            <div class="product_price">
                                                                <div class="price_rating">
                                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                                    <a href="#">
                                                                    <i class="fa fa-star"></i>
                                                                    </a>
                                                                    <a href="#"><i class="fa fa-star"></i>
                                                                    </a>
                                                                    <a class="not-rated" href="#">
                                                                    <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                            <div class="price_box">
                                                                <span class="spical-price">$150.00-$300.00</span>
                                                            </div>
                                                            <div class="last_button_area">
                                                                <ul class="add-to-links clearfix">
                                                                    <li class="addwishlist">
                                                                        <div class="yith-wcwl-add-button show" >
                                                                            <a class="add_to_wishlist" href="" rel="nofollow" data-product-id="45" data-product-type="external" data-toggle="tooltip" title="" data-original-title="Add to Wishlist"><i class="fa fa-heart"></i></a>
                                                                        </div>
                                                                    </li>
                                                                    <li>
                                                                        <div class="new_act">
                                                                            <a class="button_act" data-quick-id="45" href="" title="" data-toggle="tooltip" data-original-title="Donec non est at">Add To Cart</a>
                                                                        </div>
                                                                    </li>
                                                                    <li class="addcompare">
                                                                        <div class="woocommerce product compare-button">
                                                                            <a class="compare button" href="" data-product_id="45" rel="nofollow" data-toggle="tooltip" title="" data-original-title="Compare"><i class="fa fa-refresh"></i></a>
                                                                        </div>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="all-pros all-pros-6 animated fadeInUp">
                                                    <div class="single_product_3 ">
                                                        <span>sale</span>
                                                    </div>
                                                    <div class="sinle_pic">
                                                        <a href="#">
                                                        <img class="primary-img" src="img/product-pic/product_pic_10.jpg" alt="" />
                                                        <img class="secondary-img" src="img/product-pic/product_pic_1.jpg" alt="" />
                                                        </a>
                                                    </div>
                                                    <div class="product-action" data-toggle="modal" data-target="#myModal">
                                                        <button type="button" class="btn btn-info btn-lg quickview" data-toggle="tooltip" title="Quickview">Quick View</button>   
                                                    </div>
                                                    <div class="product_content">
                                                        <div class="usal_pro">
                                                            <div class="product_name_2">
                                                                <h2>
                                                                    <a href="#">Metus nisi posuere nisl</a>
                                                                </h2>
                                                            </div>
                                                            <div class="product_price">
                                                                <div class="price_rating">
                                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                                    <a href="#">
                                                                    <i class="fa fa-star"></i>
                                                                    </a>
                                                                    <a href="#"><i class="fa fa-star"></i>
                                                                    </a>
                                                                    <a class="not-rated" href="#">
                                                                    <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                            <div class="price_box">
                                                                <span class="spical-price">$150.00-$200.00</span>
                                                            </div>
                                                            <div class="last_button_area">
                                                                <ul class="add-to-links clearfix">
                                                                    <li class="addwishlist">
                                                                        <div class="yith-wcwl-add-button show" >
                                                                            <a class="add_to_wishlist" href="" rel="nofollow" data-product-id="45" data-product-type="external" data-toggle="tooltip" title="" data-original-title="Add to Wishlist"><i class="fa fa-heart"></i></a>
                                                                        </div>
                                                                    </li>
                                                                    <li>
                                                                        <div class="new_act">
                                                                            <a class="button_act" data-quick-id="45" href="" title="" data-toggle="tooltip" data-original-title="Donec non est at">Add To Cart</a>
                                                                        </div>
                                                                    </li>
                                                                    <li class="addcompare">
                                                                        <div class="woocommerce product compare-button">
                                                                            <a class="compare button" href="" data-product_id="45" rel="nofollow" data-toggle="tooltip" title="" data-original-title="Compare"><i class="fa fa-refresh"></i></a>
                                                                        </div>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="all-pros all-pros-2 animated fadeInUp">
                                                    <div class="single_product">
                                                        <span>New</span>
                                                    </div>
                                                    <div class="sinle_pic">
                                                        <a href="#">
                                                        <img class="primary-img" src="img/product-pic/product_pic_3.jpg" alt="" />
                                                        <img class="secondary-img" src="img/product-pic/product_pic_4.jpg" alt="" />
                                                        </a>
                                                    </div>
                                                    <div class="product-action" data-toggle="modal" data-target="#myModal">
                                                        <button type="button" class="btn btn-info btn-lg quickview" data-toggle="tooltip" title="Quickview">Quick View</button>   
                                                    </div>
                                                    <div class="product_content">
                                                        <div class="usal_pro">
                                                            <div class="product_name_2">
                                                                <h2>
                                                                    <a href="#">Duis convallis</a>
                                                                </h2>
                                                            </div>
                                                            <div class="product_price">
                                                                <div class="price_rating">
                                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                                    <a href="#">
                                                                    <i class="fa fa-star"></i>
                                                                    </a>
                                                                    <a href="#"><i class="fa fa-star"></i>
                                                                    </a>
                                                                    <a class="not-rated" href="#">
                                                                    <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                            <div class="price_box">
                                                                <span class="spical-price">$100.00</span>
                                                            </div>
                                                            <div class="last_button_area">
                                                                <ul class="add-to-links clearfix">
                                                                    <li class="addwishlist">
                                                                        <div class="yith-wcwl-add-button show" >
                                                                            <a class="add_to_wishlist" href="" rel="nofollow" data-product-id="45" data-product-type="external" data-toggle="tooltip" title="" data-original-title="Add to Wishlist"><i class="fa fa-heart"></i></a>
                                                                        </div>
                                                                    </li>
                                                                    <li>
                                                                        <div class="new_act">
                                                                            <a class="button_act" data-quick-id="45" href="" title="" data-toggle="tooltip" data-original-title="Donec non est at">Add To Cart</a>
                                                                        </div>
                                                                    </li>
                                                                    <li class="addcompare">
                                                                        <div class="woocommerce product compare-button">
                                                                            <a class="compare button" href="" data-product_id="45" rel="nofollow" data-toggle="tooltip" title="" data-original-title="Compare"><i class="fa fa-refresh"></i></a>
                                                                        </div>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--catagory area end-->
        <!--differ pic area start-->
        <div class="differ_pic">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <div class="plus_pic">
                            <div class="pix_new">
                                <a href="#">
                                <img src="img/differ-pic/differ_pic_1.jpg" alt="">
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="plus_pic">
                            <div class="pix_new">
                                <a href="#">
                                <img src="img/differ-pic/differ_pic_2.jpg" alt="">
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="plus_pic">
                            <div class="pix_new">
                                <a href="#">
                                <img src="img/differ-pic/differ_pic_3.jpg" alt="">
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--differ pic area end-->
        <!--product catagory area start-->
        <div class="catagory_area">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="visible_product">
                            <div class="new_product">
                                <div class="product_heading">
                                    <i class="fa fa-star"></i>
                                    <span>Products Catagory</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12 text-right">
                        <div class="my-tabs">
                            <!-- Nav tabs -->
                            <ul class="favtabs" role="tablist">
                                <li role="presentation" class="active"><a href="#elec" aria-controls="elec" role="tab" data-toggle="tab">Accessories</a></li>
                                <li role="presentation"><a href="#acc" aria-controls="acc" role="tab" data-toggle="tab">Headlight</a></li>
                                <li role="presentation"><a href="#head" aria-controls="head" role="tab" data-toggle="tab">Electronics</a></li>
                            </ul>
                            <!-- Tab panes -->
                            <div class="tab-content">
                                <div role="tabpanel" class="tab-pane active" id="elec">
                                    <div class="row">
                                        <div class="feature-carousel indicator-brand-3">
                                            <div class="col-md-12">
                                                <div class="all-pros all-pros-2 animated fadeInUp">
                                                    <div class="single_product">
                                                        <span>New</span>
                                                    </div>
                                                    <div class="sinle_pic">
                                                        <a href="#">
                                                        <img class="primary-img" src="img/product-pic/product_pic_3.jpg" alt="" />
                                                        <img class="secondary-img" src="img/product-pic/product_pic_4.jpg" alt="" />
                                                        </a>
                                                    </div>
                                                    <div class="product-action" data-toggle="modal" data-target="#myModal">
                                                        <button type="button" class="btn btn-info btn-lg quickview" data-toggle="tooltip" title="Quickview">Quick View</button>   
                                                    </div>
                                                    <div class="product_content">
                                                        <div class="usal_pro">
                                                            <div class="product_name_2">
                                                                <h2>
                                                                    <a href="#">Duis convallis</a>
                                                                </h2>
                                                            </div>
                                                            <div class="product_price">
                                                                <div class="price_rating">
                                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                                    <a href="#">
                                                                    <i class="fa fa-star"></i>
                                                                    </a>
                                                                    <a href="#"><i class="fa fa-star"></i>
                                                                    </a>
                                                                    <a class="not-rated" href="#">
                                                                    <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                            <div class="price_box">
                                                                <span class="spical-price">$00.00</span>
                                                            </div>
                                                            <div class="last_button_area">
                                                                <ul class="add-to-links clearfix">
                                                                    <li class="addwishlist">
                                                                        <div class="yith-wcwl-add-button show" >
                                                                            <a class="add_to_wishlist" href="" rel="nofollow" data-product-id="45" data-product-type="external" data-toggle="tooltip" title="" data-original-title="Add to Wishlist"><i class="fa fa-heart"></i></a>
                                                                        </div>
                                                                    </li>
                                                                    <li>
                                                                        <div class="new_act">
                                                                            <a class="button_act" data-quick-id="45" href="" title="" data-toggle="tooltip" data-original-title="Donec non est at">Add To Cart</a>
                                                                        </div>
                                                                    </li>
                                                                    <li class="addcompare">
                                                                        <div class="woocommerce product compare-button">
                                                                            <a class="compare button" href="" data-product_id="45" rel="nofollow" data-toggle="tooltip" title="" data-original-title="Compare"><i class="fa fa-refresh"></i></a>
                                                                        </div>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="all-pros all-pros-3 animated fadeInUp">
                                                    <div class="single_product">
                                                        <span>New</span>
                                                    </div>
                                                    <div class="sinle_pic">
                                                        <a href="#">
                                                        <img class="primary-img" src="img/product-pic/product_pic_5.jpg" alt="" />
                                                        <img class="secondary-img" src="img/product-pic/product_pic_6.jpg" alt="" />
                                                        </a>
                                                    </div>
                                                    <div class="product-action" data-toggle="modal" data-target="#myModal">
                                                        <button type="button" class="btn btn-info btn-lg quickview" data-toggle="tooltip" title="Quickview">Quick View</button>   
                                                    </div>
                                                    <div class="product_content">
                                                        <div class="usal_pro">
                                                            <div class="product_name_2">
                                                                <h2>
                                                                    <a href="#">Adipiscing cursus eu</a>
                                                                </h2>
                                                            </div>
                                                            <div class="product_price">
                                                                <div class="price_rating">
                                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                                    <a href="#">
                                                                    <i class="fa fa-star"></i>
                                                                    </a>
                                                                    <a class="not-rated" href="#">
                                                                    <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                    </a>
                                                                    <a class="not-rated" href="#">
                                                                    <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                            <div class="price_box">
                                                                <span class="spical-price">$300.00</span>
                                                            </div>
                                                            <div class="last_button_area">
                                                                <ul class="add-to-links clearfix">
                                                                    <li class="addwishlist">
                                                                        <div class="yith-wcwl-add-button show" >
                                                                            <a class="add_to_wishlist" href="" rel="nofollow" data-product-id="45" data-product-type="external" data-toggle="tooltip" title="" data-original-title="Add to Wishlist"><i class="fa fa-heart"></i></a>
                                                                        </div>
                                                                    </li>
                                                                    <li>
                                                                        <div class="new_act">
                                                                            <a class="button_act" data-quick-id="45" href="" title="" data-toggle="tooltip" data-original-title="Donec non est at">Add To Cart</a>
                                                                        </div>
                                                                    </li>
                                                                    <li class="addcompare">
                                                                        <div class="woocommerce product compare-button">
                                                                            <a class="compare button" href="" data-product_id="45" rel="nofollow" data-toggle="tooltip" title="" data-original-title="Compare"><i class="fa fa-refresh"></i></a>
                                                                        </div>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="all-pros all-pros-4 animated fadeInUp">
                                                    <div class="single_product single_product_2">
                                                        <span>hot</span>
                                                    </div>
                                                    <div class="single_product_3 ">
                                                        <span>sale</span>
                                                    </div>
                                                    <div class="sinle_pic">
                                                        <a href="#">
                                                        <img class="primary-img" src="img/product-pic/product_pic_7.jpg" alt="" />
                                                        <img class="secondary-img" src="img/product-pic/product_pic_6.jpg" alt="" />
                                                        </a>
                                                    </div>
                                                    <div class="product-action" data-toggle="modal" data-target="#myModal">
                                                        <button type="button" class="btn btn-info btn-lg quickview" data-toggle="tooltip" title="Quickview">Quick View</button>   
                                                    </div>
                                                    <div class="product_content">
                                                        <div class="usal_pro">
                                                            <div class="product_name_2">
                                                                <h2>
                                                                    <a href="#">Cras nec nisl ut era</a>
                                                                </h2>
                                                            </div>
                                                            <div class="product_price">
                                                                <div class="price_rating">
                                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                                    <a href="#">
                                                                    <i class="fa fa-star"></i>
                                                                    </a>
                                                                    <a href="#"><i class="fa fa-star"></i>
                                                                    </a>
                                                                    <a class="not-rated" href="#">
                                                                    <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                            <div class="price_box">
                                                                <span class="old- price">$250.00</span>
                                                                <span class="spical-price">$200.00</span>
                                                            </div>
                                                            <div class="last_button_area">
                                                                <ul class="add-to-links clearfix">
                                                                    <li class="addwishlist">
                                                                        <div class="yith-wcwl-add-button show" >
                                                                            <a class="add_to_wishlist" href="" rel="nofollow" data-product-id="45" data-product-type="external" data-toggle="tooltip" title="" data-original-title="Add to Wishlist"><i class="fa fa-heart"></i></a>
                                                                        </div>
                                                                    </li>
                                                                    <li>
                                                                        <div class="new_act">
                                                                            <a class="button_act" data-quick-id="45" href="" title="" data-toggle="tooltip" data-original-title="Donec non est at">Add To Cart</a>
                                                                        </div>
                                                                    </li>
                                                                    <li class="addcompare">
                                                                        <div class="woocommerce product compare-button">
                                                                            <a class="compare button" href="" data-product_id="45" rel="nofollow" data-toggle="tooltip" title="" data-original-title="Compare"><i class="fa fa-refresh"></i></a>
                                                                        </div>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="all-pros all-pros-6 animated fadeInUp">
                                                    <div class="single_product_3 ">
                                                        <span>sale</span>
                                                    </div>
                                                    <div class="sinle_pic">
                                                        <a href="#">
                                                        <img class="primary-img" src="img/product-pic/product_pic_10.jpg" alt="" />
                                                        <img class="secondary-img" src="img/product-pic/product_pic_1.jpg" alt="" />
                                                        </a>
                                                    </div>
                                                    <div class="product-action" data-toggle="modal" data-target="#myModal">
                                                        <button type="button" class="btn btn-info btn-lg quickview" data-toggle="tooltip" title="Quickview">Quick View</button>   
                                                    </div>
                                                    <div class="product_content">
                                                        <div class="usal_pro">
                                                            <div class="product_name_2">
                                                                <h2>
                                                                    <a href="#">Metus nisi posuere nisl</a>
                                                                </h2>
                                                            </div>
                                                            <div class="product_price">
                                                                <div class="price_rating">
                                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                                    <a href="#">
                                                                    <i class="fa fa-star"></i>
                                                                    </a>
                                                                    <a href="#"><i class="fa fa-star"></i>
                                                                    </a>
                                                                    <a class="not-rated" href="#">
                                                                    <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                            <div class="price_box">
                                                                <span class="spical-price">$150.00-$200.00</span>
                                                            </div>
                                                            <div class="last_button_area">
                                                                <ul class="add-to-links clearfix">
                                                                    <li class="addwishlist">
                                                                        <div class="yith-wcwl-add-button show" >
                                                                            <a class="add_to_wishlist" href="" rel="nofollow" data-product-id="45" data-product-type="external" data-toggle="tooltip" title="" data-original-title="Add to Wishlist"><i class="fa fa-heart"></i></a>
                                                                        </div>
                                                                    </li>
                                                                    <li>
                                                                        <div class="new_act">
                                                                            <a class="button_act" data-quick-id="45" href="" title="" data-toggle="tooltip" data-original-title="Donec non est at">Add To Cart</a>
                                                                        </div>
                                                                    </li>
                                                                    <li class="addcompare">
                                                                        <div class="woocommerce product compare-button">
                                                                            <a class="compare button" href="" data-product_id="45" rel="nofollow" data-toggle="tooltip" title="" data-original-title="Compare"><i class="fa fa-refresh"></i></a>
                                                                        </div>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="all-pros all-pros-9 animated fadeInUp">
                                                    <div class="single_product_3 ">
                                                        <span>sale</span>
                                                    </div>
                                                    <div class="sinle_pic">
                                                        <a href="#">
                                                        <img class="primary-img" src="img/cosmatics-pic/cosmatic_pix_3.jpg" alt="" />
                                                        <img class="secondary-img" src="img/cosmatics-pic/cosmatic_pix_3.jpg" alt="" />
                                                        </a>
                                                    </div>
                                                    <div class="product-action" data-toggle="modal" data-target="#myModal">
                                                        <button type="button" class="btn btn-info btn-lg quickview" data-toggle="tooltip" title="Quickview">Quick View</button>   
                                                    </div>
                                                    <div class="product_content">
                                                        <div class="usal_pro">
                                                            <div class="product_name_2">
                                                                <h2>
                                                                    <a href="#">Nam fringilla</a>
                                                                </h2>
                                                            </div>
                                                            <div class="product_price">
                                                                <div class="price_rating">
                                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                                    <a href="#">
                                                                    <i class="fa fa-star"></i>
                                                                    </a>
                                                                    <a href="#"><i class="fa fa-star"></i>
                                                                    </a>
                                                                    <a class="not-rated" href="#">
                                                                    <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                            <div class="price_box">
                                                                <span class="old- price">$200.00</span>
                                                                <span class="spical-price">$150.00</span>
                                                            </div>
                                                            <div class="last_button_area">
                                                                <ul class="add-to-links clearfix">
                                                                    <li class="addwishlist">
                                                                        <div class="yith-wcwl-add-button show" >
                                                                            <a class="add_to_wishlist" href="" rel="nofollow" data-product-id="45" data-product-type="external" data-toggle="tooltip" title="" data-original-title="Add to Wishlist"><i class="fa fa-heart"></i></a>
                                                                        </div>
                                                                    </li>
                                                                    <li>
                                                                        <div class="new_act">
                                                                            <a class="button_act" data-quick-id="45" href="" title="" data-toggle="tooltip" data-original-title="Donec non est at">Add To Cart</a>
                                                                        </div>
                                                                    </li>
                                                                    <li class="addcompare">
                                                                        <div class="woocommerce product compare-button">
                                                                            <a class="compare button" href="" data-product_id="45" rel="nofollow" data-toggle="tooltip" title="" data-original-title="Compare"><i class="fa fa-refresh"></i></a>
                                                                        </div>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="all-pros all-pros-10 animated fadeInUp">
                                                    <div class="single_product single_product_2">
                                                        <span>hot</span>
                                                    </div>
                                                    <div class="sinle_pic">
                                                        <a href="#">
                                                        <img class="primary-img" src="img/product-pic/product_pic_12.jpg" alt="" />
                                                        <img class="secondary-img" src="img/product-pic/product_pic_13.jpg" alt="" />
                                                        </a>
                                                    </div>
                                                    <div class="product-action" data-toggle="modal" data-target="#myModal">
                                                        <button type="button" class="btn btn-info btn-lg quickview" data-toggle="tooltip" title="Quickview">Quick View</button>   
                                                    </div>
                                                    <div class="product_content">
                                                        <div class="usal_pro">
                                                            <div class="product_name_2">
                                                                <h2>
                                                                    <a href="#">Duis convallis</a>
                                                                </h2>
                                                            </div>
                                                            <div class="product_price">
                                                                <div class="price_rating">
                                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                                    <a href="#">
                                                                    <i class="fa fa-star"></i>
                                                                    </a>
                                                                    <a href="#"><i class="fa fa-star"></i>
                                                                    </a>
                                                                    <a class="not-rated" href="#">
                                                                    <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                            <div class="price_box">
                                                                <span class="spical-price">$200.00</span>
                                                            </div>
                                                            <div class="last_button_area">
                                                                <ul class="add-to-links clearfix">
                                                                    <li class="addwishlist">
                                                                        <div class="yith-wcwl-add-button show" >
                                                                            <a class="add_to_wishlist" href="" rel="nofollow" data-product-id="45" data-product-type="external" data-toggle="tooltip" title="" data-original-title="Add to Wishlist"><i class="fa fa-heart"></i></a>
                                                                        </div>
                                                                    </li>
                                                                    <li>
                                                                        <div class="new_act">
                                                                            <a class="button_act" data-quick-id="45" href="" title="" data-toggle="tooltip" data-original-title="Donec non est at">Add To Cart</a>
                                                                        </div>
                                                                    </li>
                                                                    <li class="addcompare">
                                                                        <div class="woocommerce product compare-button">
                                                                            <a class="compare button" href="" data-product_id="45" rel="nofollow" data-toggle="tooltip" title="" data-original-title="Compare"><i class="fa fa-refresh"></i></a>
                                                                        </div>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div role="tabpanel" class="tab-pane" id="acc">
                                    <div class="row">
                                        <div class="feature-carousel indicator-brand-3">
                                            <div class="col-md-12">
                                                <div class="all-pros all-pros-2 animated fadeInUp">
                                                    <div class="single_product">
                                                        <span>New</span>
                                                    </div>
                                                    <div class="sinle_pic">
                                                        <a href="#">
                                                        <img class="primary-img" src="img/product-pic/product_pic_3.jpg" alt="" />
                                                        <img class="secondary-img" src="img/product-pic/product_pic_4.jpg" alt="" />
                                                        </a>
                                                    </div>
                                                    <div class="product-action" data-toggle="modal" data-target="#myModal">
                                                        <button type="button" class="btn btn-info btn-lg quickview" data-toggle="tooltip" title="Quickview">Quick View</button>   
                                                    </div>
                                                    <div class="product_content">
                                                        <div class="usal_pro">
                                                            <div class="product_name_2">
                                                                <h2>
                                                                    <a href="#">Duis convallis</a>
                                                                </h2>
                                                            </div>
                                                            <div class="product_price">
                                                                <div class="price_rating">
                                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                                    <a href="#">
                                                                    <i class="fa fa-star"></i>
                                                                    </a>
                                                                    <a href="#"><i class="fa fa-star"></i>
                                                                    </a>
                                                                    <a class="not-rated" href="#">
                                                                    <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                            <div class="price_box">
                                                                <span class="spical-price">$100.00</span>
                                                            </div>
                                                            <div class="last_button_area">
                                                                <ul class="add-to-links clearfix">
                                                                    <li class="addwishlist">
                                                                        <div class="yith-wcwl-add-button show" >
                                                                            <a class="add_to_wishlist" href="" rel="nofollow" data-product-id="45" data-product-type="external" data-toggle="tooltip" title="" data-original-title="Add to Wishlist"><i class="fa fa-heart"></i></a>
                                                                        </div>
                                                                    </li>
                                                                    <li>
                                                                        <div class="new_act">
                                                                            <a class="button_act" data-quick-id="45" href="" title="" data-toggle="tooltip" data-original-title="Donec non est at">Add To Cart</a>
                                                                        </div>
                                                                    </li>
                                                                    <li class="addcompare">
                                                                        <div class="woocommerce product compare-button">
                                                                            <a class="compare button" href="" data-product_id="45" rel="nofollow" data-toggle="tooltip" title="" data-original-title="Compare"><i class="fa fa-refresh"></i></a>
                                                                        </div>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="all-pros all-pros-3 animated fadeInUp">
                                                    <div class="single_product">
                                                        <span>New</span>
                                                    </div>
                                                    <div class="sinle_pic">
                                                        <a href="#">
                                                        <img class="primary-img" src="img/product-pic/product_pic_5.jpg" alt="" />
                                                        <img class="secondary-img" src="img/product-pic/product_pic_6.jpg" alt="" />
                                                        </a>
                                                    </div>
                                                    <div class="product-action" data-toggle="modal" data-target="#myModal">
                                                        <button type="button" class="btn btn-info btn-lg quickview" data-toggle="tooltip" title="Quickview">Quick View</button>   
                                                    </div>
                                                    <div class="product_content">
                                                        <div class="usal_pro">
                                                            <div class="product_name_2">
                                                                <h2>
                                                                    <a href="#">Adipiscing cursus eu</a>
                                                                </h2>
                                                            </div>
                                                            <div class="product_price">
                                                                <div class="price_rating">
                                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                                    <a href="#">
                                                                    <i class="fa fa-star"></i>
                                                                    </a>
                                                                    <a class="not-rated" href="#">
                                                                    <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                    </a>
                                                                    <a class="not-rated" href="#"><i class="fa fa-star-o" aria-hidden="true"></i>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                            <div class="price_box">
                                                                <span class="spical-price">$300.00</span>
                                                            </div>
                                                            <div class="last_button_area">
                                                                <ul class="add-to-links clearfix">
                                                                    <li class="addwishlist">
                                                                        <div class="yith-wcwl-add-button show" >
                                                                            <a class="add_to_wishlist" href="" rel="nofollow" data-product-id="45" data-product-type="external" data-toggle="tooltip" title="" data-original-title="Add to Wishlist"><i class="fa fa-heart"></i></a>
                                                                        </div>
                                                                    </li>
                                                                    <li>
                                                                        <div class="new_act">
                                                                            <a class="button_act" data-quick-id="45" href="" title="" data-toggle="tooltip" data-original-title="Donec non est at">Add To Cart</a>
                                                                        </div>
                                                                    </li>
                                                                    <li class="addcompare">
                                                                        <div class="woocommerce product compare-button">
                                                                            <a class="compare button" href="" data-product_id="45" rel="nofollow" data-toggle="tooltip" title="" data-original-title="Compare"><i class="fa fa-refresh"></i></a>
                                                                        </div>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="all-pros all-pros-4 animated fadeInUp">
                                                    <div class="single_product single_product_2">
                                                        <span>hot</span>
                                                    </div>
                                                    <div class="single_product_3 ">
                                                        <span>sale</span>
                                                    </div>
                                                    <div class="sinle_pic">
                                                        <a href="#">
                                                        <img class="primary-img" src="img/product-pic/product_pic_7.jpg" alt="" />
                                                        <img class="secondary-img" src="img/product-pic/product_pic_6.jpg" alt="" />
                                                        </a>
                                                    </div>
                                                    <div class="product-action" data-toggle="modal" data-target="#myModal">
                                                        <button type="button" class="btn btn-info btn-lg quickview" data-toggle="tooltip" title="Quickview">Quick View</button>   
                                                    </div>
                                                    <div class="product_content">
                                                        <div class="usal_pro">
                                                            <div class="product_name_2">
                                                                <h2>
                                                                    <a href="#">Cras nec nisl ut erat</a>
                                                                </h2>
                                                            </div>
                                                            <div class="product_price">
                                                                <div class="price_rating">
                                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                                    <a href="#">
                                                                    <i class="fa fa-star"></i>
                                                                    </a>
                                                                    <a href="#"><i class="fa fa-star"></i>
                                                                    </a>
                                                                    <a class="not-rated" href="#">
                                                                    <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                            <div class="price_box">
                                                                <span class="old-price">$250.00</span>
                                                                <span class="spical-price">$200.00</span>
                                                            </div>
                                                            <div class="last_button_area">
                                                                <ul class="add-to-links clearfix">
                                                                    <li class="addwishlist">
                                                                        <div class="yith-wcwl-add-button show" >
                                                                            <a class="add_to_wishlist" href="" rel="nofollow" data-product-id="45" data-product-type="external" data-toggle="tooltip" title="" data-original-title="Add to Wishlist"><i class="fa fa-heart"></i></a>
                                                                        </div>
                                                                    </li>
                                                                    <li>
                                                                        <div class="new_act">
                                                                            <a class="button_act" data-quick-id="45" href="" title="" data-toggle="tooltip" data-original-title="Donec non est at">Add To Cart</a>
                                                                        </div>
                                                                    </li>
                                                                    <li class="addcompare">
                                                                        <div class="woocommerce product compare-button">
                                                                            <a class="compare button" href="" data-product_id="45" rel="nofollow" data-toggle="tooltip" title="" data-original-title="Compare"><i class="fa fa-refresh"></i></a>
                                                                        </div>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="all-pros all-pros-5 animated fadeInUp">
                                                    <div class="single_product">
                                                        <span>New</span>
                                                    </div>
                                                    <div class="sinle_pic">
                                                        <a href="#">
                                                        <img class="primary-img" src="img/product-pic/product_pic_8.jpg" alt="" />
                                                        <img class="secondary-img" src="img/product-pic/product_pic_9.jpg" alt="" />
                                                        </a>
                                                    </div>
                                                    <div class="product-action" data-toggle="modal" data-target="#myModal">
                                                        <button type="button" class="btn btn-info btn-lg quickview" data-toggle="tooltip" title="Quickview">Quick View</button>   
                                                    </div>
                                                    <div class="product_content">
                                                        <div class="usal_pro">
                                                            <div class="product_name_2">
                                                                <h2>
                                                                    <a href="#">Nam fringilla augue</a>
                                                                </h2>
                                                            </div>
                                                            <div class="product_price">
                                                                <div class="price_rating">
                                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                                    <a href="#">
                                                                    <i class="fa fa-star"></i>
                                                                    </a>
                                                                    <a href="#"><i class="fa fa-star"></i>
                                                                    </a>
                                                                    <a class="not-rated" href="#">
                                                                    <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                            <div class="price_box">
                                                                <span class="spical-price">$150.00-$170.00</span>
                                                            </div>
                                                            <div class="last_button_area">
                                                                <ul class="add-to-links clearfix">
                                                                    <li class="addwishlist">
                                                                        <div class="yith-wcwl-add-button show" >
                                                                            <a class="add_to_wishlist" href="" rel="nofollow" data-product-id="45" data-product-type="external" data-toggle="tooltip" title="" data-original-title="Add to Wishlist"><i class="fa fa-heart"></i></a>
                                                                        </div>
                                                                    </li>
                                                                    <li>
                                                                        <div class="new_act">
                                                                            <a class="button_act" data-quick-id="45" href="" title="" data-toggle="tooltip" data-original-title="Donec non est at">Add To Cart</a>
                                                                        </div>
                                                                    </li>
                                                                    <li class="addcompare">
                                                                        <div class="woocommerce product compare-button">
                                                                            <a class="compare button" href="" data-product_id="45" rel="nofollow" data-toggle="tooltip" title="" data-original-title="Compare"><i class="fa fa-refresh"></i></a>
                                                                        </div>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="all-pros all-pros-6 animated fadeInUp">
                                                    <div class="single_product_3 ">
                                                        <span>sale</span>
                                                    </div>
                                                    <div class="sinle_pic">
                                                        <a href="#">
                                                        <img class="primary-img" src="img/product-pic/product_pic_10.jpg" alt="" />
                                                        <img class="secondary-img" src="img/product-pic/product_pic_1.jpg" alt="" />
                                                        </a>
                                                    </div>
                                                    <div class="product-action" data-toggle="modal" data-target="#myModal">
                                                        <button type="button" class="btn btn-info btn-lg quickview" data-toggle="tooltip" title="Quickview">Quick View</button>   
                                                    </div>
                                                    <div class="product_content">
                                                        <div class="usal_pro">
                                                            <div class="product_name_2">
                                                                <h2>
                                                                    <a href="#">Metus nisi posuere nisl</a>
                                                                </h2>
                                                            </div>
                                                            <div class="product_price">
                                                                <div class="price_rating">
                                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                                    <a href="#">
                                                                    <i class="fa fa-star"></i>
                                                                    </a>
                                                                    <a href="#"><i class="fa fa-star"></i>
                                                                    </a>
                                                                    <a class="not-rated" href="#">
                                                                    <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                            <div class="price_box">
                                                                <span class="spical-price">$150.00-$200.00</span>
                                                            </div>
                                                            <div class="last_button_area">
                                                                <ul class="add-to-links clearfix">
                                                                    <li class="addwishlist">
                                                                        <div class="yith-wcwl-add-button show" >
                                                                            <a class="add_to_wishlist" href="" rel="nofollow" data-product-id="45" data-product-type="external" data-toggle="tooltip" title="" data-original-title="Add to Wishlist"><i class="fa fa-heart"></i></a>
                                                                        </div>
                                                                    </li>
                                                                    <li>
                                                                        <div class="new_act">
                                                                            <a class="button_act" data-quick-id="45" href="" title="" data-toggle="tooltip" data-original-title="Donec non est at">Add To Cart</a>
                                                                        </div>
                                                                    </li>
                                                                    <li class="addcompare">
                                                                        <div class="woocommerce product compare-button">
                                                                            <a class="compare button" href="" data-product_id="45" rel="nofollow" data-toggle="tooltip" title="" data-original-title="Compare"><i class="fa fa-refresh"></i></a>
                                                                        </div>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="all-pros all-pros-10 animated fadeInUp">
                                                    <div class="single_product single_product_2">
                                                        <span>hot</span>
                                                    </div>
                                                    <div class="sinle_pic">
                                                        <a href="#">
                                                        <img class="primary-img" src="img/product-pic/product_pic_12.jpg" alt="" />
                                                        <img class="secondary-img" src="img/product-pic/product_pic_13.jpg" alt="" />
                                                        </a>
                                                    </div>
                                                    <div class="product-action" data-toggle="modal" data-target="#myModal">
                                                        <button type="button" class="btn btn-info btn-lg quickview" data-toggle="tooltip" title="Quickview">Quick View</button>   
                                                    </div>
                                                    <div class="product_content">
                                                        <div class="usal_pro">
                                                            <div class="product_name_2">
                                                                <h2>
                                                                    <a href="#">Duis convallis</a>
                                                                </h2>
                                                            </div>
                                                            <div class="product_price">
                                                                <div class="price_rating">
                                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                                    <a href="#">
                                                                    <i class="fa fa-star"></i>
                                                                    </a>
                                                                    <a href="#"><i class="fa fa-star"></i>
                                                                    </a>
                                                                    <a class="not-rated" href="#">
                                                                    <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                            <div class="price_box">
                                                                <span class="spical-price">$200.00</span>
                                                            </div>
                                                            <div class="last_button_area">
                                                                <ul class="add-to-links clearfix">
                                                                    <li class="addwishlist">
                                                                        <div class="yith-wcwl-add-button show" >
                                                                            <a class="add_to_wishlist" href="" rel="nofollow" data-product-id="45" data-product-type="external" data-toggle="tooltip" title="" data-original-title="Add to Wishlist"><i class="fa fa-heart"></i></a>
                                                                        </div>
                                                                    </li>
                                                                    <li>
                                                                        <div class="new_act">
                                                                            <a class="button_act" data-quick-id="45" href="" title="" data-toggle="tooltip" data-original-title="Donec non est at">Add To Cart</a>
                                                                        </div>
                                                                    </li>
                                                                    <li class="addcompare">
                                                                        <div class="woocommerce product compare-button">
                                                                            <a class="compare button" href="" data-product_id="45" rel="nofollow" data-toggle="tooltip" title="" data-original-title="Compare"><i class="fa fa-refresh"></i></a>
                                                                        </div>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div role="tabpanel" class="tab-pane" id="head">
                                    <div class="row">
                                        <div class="feature-carousel indicator-brand-3">
                                            <div class="col-md-12">
                                                <div class="all-pros animated fadeInUp">
                                                    <div class="single_product">
                                                        <span>New</span>
                                                    </div>
                                                    <div class="sinle_pic">
                                                        <a href="#">
                                                        <img class="primary-img" src="img/product-pic/product_pic_2.jpg" alt="" />
                                                        <img class="secondary-img" src="img/product-pic/product_pic_1.jpg" alt="" />
                                                        </a>
                                                    </div>
                                                    <div class="product-action" data-toggle="modal" data-target="#myModal">
                                                        <button type="button" class="btn btn-info btn-lg quickview" data-toggle="tooltip" title="Quickview">Quick View</button>   
                                                    </div>
                                                    <div class="product_content">
                                                        <div class="usal_pro">
                                                            <div class="product_name_2">
                                                                <h2>
                                                                    <a href="#">Donec non est at</a>
                                                                </h2>
                                                            </div>
                                                            <div class="product_price">
                                                                <div class="price_rating">
                                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                                    <a href="#">
                                                                    <i class="fa fa-star"></i>
                                                                    </a>
                                                                    <a class="not-rated" href="#">
                                                                    <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                    </a>
                                                                    <a class="not-rated" href="#">
                                                                    <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                            <div class="price_box">
                                                                <span class="spical-price">$250.00</span>
                                                            </div>
                                                            <div class="last_button_area">
                                                                <ul class="add-to-links clearfix">
                                                                    <li class="addwishlist">
                                                                        <div class="yith-wcwl-add-button show" >
                                                                            <a class="add_to_wishlist" href="" rel="nofollow" data-product-id="45" data-product-type="external" data-toggle="tooltip" title="" data-original-title="Add to Wishlist"><i class="fa fa-heart"></i></a>
                                                                        </div>
                                                                    </li>
                                                                    <li>
                                                                        <div class="new_act">
                                                                            <a class="button_act" data-quick-id="45" href="" title="" data-toggle="tooltip" data-original-title="Donec non est at">Add To Cart</a>
                                                                        </div>
                                                                    </li>
                                                                    <li class="addcompare">
                                                                        <div class="woocommerce product compare-button">
                                                                            <a class="compare button" href="" data-product_id="45" rel="nofollow" data-toggle="tooltip" title="" data-original-title="Compare"><i class="fa fa-refresh"></i></a>
                                                                        </div>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="all-pros animated fadeInUp">
                                                    <div class="single_product">
                                                        <span>New</span>
                                                    </div>
                                                    <div class="sinle_pic">
                                                        <a href="#">
                                                        <img class="primary-img" src="img/product-pic/product_pic_3.jpg" alt="" />
                                                        <img class="secondary-img" src="img/product-pic/product_pic_4.jpg" alt="" />
                                                        </a>
                                                    </div>
                                                    <div class="product-action" data-toggle="modal" data-target="#myModal">
                                                        <button type="button" class="btn btn-info btn-lg quickview" data-toggle="tooltip" title="Quickview">Quick View</button>   
                                                    </div>
                                                    <div class="product_content">
                                                        <div class="usal_pro">
                                                            <div class="product_name_2">
                                                                <h2>
                                                                    <a href="#">Duis convallis</a>
                                                                </h2>
                                                            </div>
                                                            <div class="product_price">
                                                                <div class="price_rating">
                                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                                    <a href="#">
                                                                    <i class="fa fa-star"></i>
                                                                    </a>
                                                                    <a href="#"><i class="fa fa-star"></i>
                                                                    </a>
                                                                    <a class="not-rated" href="#">
                                                                    <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                            <div class="price_box">
                                                                <span class="spical-price">$100.00</span>
                                                            </div>
                                                            <div class="last_button_area">
                                                                <ul class="add-to-links clearfix">
                                                                    <li class="addwishlist">
                                                                        <div class="yith-wcwl-add-button show" >
                                                                            <a class="add_to_wishlist" href="" rel="nofollow" data-product-id="45" data-product-type="external" data-toggle="tooltip" title="" data-original-title="Add to Wishlist"><i class="fa fa-heart"></i></a>
                                                                        </div>
                                                                    </li>
                                                                    <li>
                                                                        <div class="new_act">
                                                                            <a class="button_act" data-quick-id="45" href="" title="" data-toggle="tooltip" data-original-title="Donec non est at">Add To Cart</a>
                                                                        </div>
                                                                    </li>
                                                                    <li class="addcompare">
                                                                        <div class="woocommerce product compare-button">
                                                                            <a class="compare button" href="" data-product_id="45" rel="nofollow" data-toggle="tooltip" title="" data-original-title="Compare"><i class="fa fa-refresh"></i></a>
                                                                        </div>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="all-pros all-pros-5 animated fadeInUp">
                                                    <div class="single_product">
                                                        <span>New</span>
                                                    </div>
                                                    <div class="sinle_pic">
                                                        <a href="#">
                                                        <img class="primary-img" src="img/product-pic/product_pic_8.jpg" alt="" />
                                                        <img class="secondary-img" src="img/product-pic/product_pic_9.jpg" alt="" />
                                                        </a>
                                                    </div>
                                                    <div class="product-action" data-toggle="modal" data-target="#myModal">
                                                        <button type="button" class="btn btn-info btn-lg quickview" data-toggle="tooltip" title="Quickview">Quick View</button>   
                                                    </div>
                                                    <div class="product_content">
                                                        <div class="usal_pro">
                                                            <div class="product_name_2">
                                                                <h2>
                                                                    <a href="#">Nam fringilla augue</a>
                                                                </h2>
                                                            </div>
                                                            <div class="product_price">
                                                                <div class="price_rating">
                                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                                    <a href="#">
                                                                    <i class="fa fa-star"></i>
                                                                    </a>
                                                                    <a href="#"><i class="fa fa-star"></i>
                                                                    </a>
                                                                    <a class="not-rated" href="#">
                                                                    <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                            <div class="price_box">
                                                                <span class="spical-price">$150.00-$170.00</span>
                                                            </div>
                                                            <div class="last_button_area">
                                                                <ul class="add-to-links clearfix">
                                                                    <li class="addwishlist">
                                                                        <div class="yith-wcwl-add-button show" >
                                                                            <a class="add_to_wishlist" href="" rel="nofollow" data-product-id="45" data-product-type="external" data-toggle="tooltip" title="" data-original-title="Add to Wishlist"><i class="fa fa-heart"></i></a>
                                                                        </div>
                                                                    </li>
                                                                    <li>
                                                                        <div class="new_act">
                                                                            <a class="button_act" data-quick-id="45" href="" title="" data-toggle="tooltip" data-original-title="Donec non est at">Add To Cart</a>
                                                                        </div>
                                                                    </li>
                                                                    <li class="addcompare">
                                                                        <div class="woocommerce product compare-button">
                                                                            <a class="compare button" href="" data-product_id="45" rel="nofollow" data-toggle="tooltip" title="" data-original-title="Compare"><i class="fa fa-refresh"></i></a>
                                                                        </div>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="all-pros all-pros-6 animated fadeInUp">
                                                    <div class="single_product_3 ">
                                                        <span>sale</span>
                                                    </div>
                                                    <div class="sinle_pic">
                                                        <a href="#">
                                                        <img class="primary-img" src="img/product-pic/product_pic_10.jpg" alt="" />
                                                        <img class="secondary-img" src="img/product-pic/product_pic_1.jpg" alt="" />
                                                        </a>
                                                    </div>
                                                    <div class="product-action" data-toggle="modal" data-target="#myModal">
                                                        <button type="button" class="btn btn-info btn-lg quickview" data-toggle="tooltip" title="Quickview">Quick View</button>   
                                                    </div>
                                                    <div class="product_content">
                                                        <div class="usal_pro">
                                                            <div class="product_name_2">
                                                                <h2>
                                                                    <a href="#">Metus nisi posuere nisl</a>
                                                                </h2>
                                                            </div>
                                                            <div class="product_price">
                                                                <div class="price_rating">
                                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                                    <a href="#">
                                                                    <i class="fa fa-star"></i>
                                                                    </a>
                                                                    <a href="#"><i class="fa fa-star"></i>
                                                                    </a>
                                                                    <a class="not-rated" href="#">
                                                                    <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                            <div class="price_box">
                                                                <span class="spical-price">$150.00-$200.00</span>
                                                            </div>
                                                            <div class="last_button_area">
                                                                <ul class="add-to-links clearfix">
                                                                    <li class="addwishlist">
                                                                        <div class="yith-wcwl-add-button show" >
                                                                            <a class="add_to_wishlist" href="" rel="nofollow" data-product-id="45" data-product-type="external" data-toggle="tooltip" title="" data-original-title="Add to Wishlist"><i class="fa fa-heart"></i></a>
                                                                        </div>
                                                                    </li>
                                                                    <li>
                                                                        <div class="new_act">
                                                                            <a class="button_act" data-quick-id="45" href="" title="" data-toggle="tooltip" data-original-title="Donec non est at">Add To Cart</a>
                                                                        </div>
                                                                    </li>
                                                                    <li class="addcompare">
                                                                        <div class="woocommerce product compare-button">
                                                                            <a class="compare button" href="" data-product_id="45" rel="nofollow" data-toggle="tooltip" title="" data-original-title="Compare"><i class="fa fa-refresh"></i></a>
                                                                        </div>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="all-pros all-pros-6 animated fadeInUp">
                                                    <div class="single_product single_product_2">
                                                        <span>hot</span>
                                                    </div>
                                                    <div class="sinle_pic">
                                                        <a href="#">
                                                        <img class="primary-img" src="img/product-pic/product_pic_11.jpg" alt="" />
                                                        <img class="secondary-img" src="img/cosmatics-pic/cosmatic_pix_2.jpg" alt="" />
                                                        </a>
                                                    </div>
                                                    <div class="product-action" data-toggle="modal" data-target="#myModal">
                                                        <button type="button" class="btn btn-info btn-lg quickview" data-toggle="tooltip" title="Quickview">Quick View</button>   
                                                    </div>
                                                    <div class="product_content">
                                                        <div class="usal_pro">
                                                            <div class="product_name_2">
                                                                <h2>
                                                                    <a href="#">Ligula euismod eget</a>
                                                                </h2>
                                                            </div>
                                                            <div class="product_price">
                                                                <div class="price_rating">
                                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                                    <a href="#">
                                                                    <i class="fa fa-star"></i>
                                                                    </a>
                                                                    <a href="#"><i class="fa fa-star"></i>
                                                                    </a>
                                                                    <a class="not-rated" href="#">
                                                                    <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                            <div class="price_box">
                                                                <span class="spical-price">$200.00</span>
                                                            </div>
                                                            <div class="last_button_area">
                                                                <ul class="add-to-links clearfix">
                                                                    <li class="addwishlist">
                                                                        <div class="yith-wcwl-add-button show" >
                                                                            <a class="add_to_wishlist" href="" rel="nofollow" data-product-id="45" data-product-type="external" data-toggle="tooltip" title="" data-original-title="Add to Wishlist"><i class="fa fa-heart"></i></a>
                                                                        </div>
                                                                    </li>
                                                                    <li>
                                                                        <div class="new_act">
                                                                            <a class="button_act" data-quick-id="45" href="" title="" data-toggle="tooltip" data-original-title="Donec non est at">Add To Cart</a>
                                                                        </div>
                                                                    </li>
                                                                    <li class="addcompare">
                                                                        <div class="woocommerce product compare-button">
                                                                            <a class="compare button" href="" data-product_id="45" rel="nofollow" data-toggle="tooltip" title="" data-original-title="Compare"><i class="fa fa-refresh"></i></a>
                                                                        </div>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="all-pros all-pros-7 animated fadeInUp">
                                                    <div class="single_product_3 ">
                                                        <span>sale</span>
                                                    </div>
                                                    <div class="sinle_pic">
                                                        <a href="#">
                                                        <img class="primary-img" src="img/cosmatics-pic/cosmatic_pix_1.jpg" alt="" />
                                                        <img class="secondary-img" src="img/cosmatics-pic/cosmatic_pix_2.jpg" alt="" />
                                                        </a>
                                                    </div>
                                                    <div class="product-action" data-toggle="modal" data-target="#myModal">
                                                        <button type="button" class="btn btn-info btn-lg quickview" data-toggle="tooltip" title="Quickview">Quick View</button>   
                                                    </div>
                                                    <div class="product_content">
                                                        <div class="usal_pro">
                                                            <div class="product_name_2">
                                                                <h2>
                                                                    <a href="#">Etiam gravida</a>
                                                                </h2>
                                                            </div>
                                                            <div class="product_price">
                                                                <div class="price_rating">
                                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                                    <a href="#">
                                                                    <i class="fa fa-star"></i>
                                                                    </a>
                                                                    <a href="#"><i class="fa fa-star"></i>
                                                                    </a>
                                                                    <a class="not-rated" href="#">
                                                                    <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                            <div class="price_box">
                                                                <span class="old- price">$250.00</span>
                                                                <span class="spical-price">$150.00</span>
                                                            </div>
                                                            <div class="last_button_area">
                                                                <ul class="add-to-links clearfix">
                                                                    <li class="addwishlist">
                                                                        <div class="yith-wcwl-add-button show" >
                                                                            <a class="add_to_wishlist" href="" rel="nofollow" data-product-id="45" data-product-type="external" data-toggle="tooltip" title="" data-original-title="Add to Wishlist"><i class="fa fa-heart"></i></a>
                                                                        </div>
                                                                    </li>
                                                                    <li>
                                                                        <div class="new_act">
                                                                            <a class="button_act" data-quick-id="45" href="" title="" data-toggle="tooltip" data-original-title="Donec non est at">Add To Cart</a>
                                                                        </div>
                                                                    </li>
                                                                    <li class="addcompare">
                                                                        <div class="woocommerce product compare-button">
                                                                            <a class="compare button" href="" data-product_id="45" rel="nofollow" data-toggle="tooltip" title="" data-original-title="Compare"><i class="fa fa-refresh"></i></a>
                                                                        </div>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--catagory area end-->
        <!--lumia area start-->
        <div class="lumia_area">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="plus_pic">
                            <div class="pix_new">
                                <a href="#">
                                <img src="img/differ-pic/differ_pic_6.jpg" alt="">
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--lumia area end-->
        <!--top rate area start-->
        <div class="top_rate_area">
            <div class="container">
                <div class="row">
                    <div class="col-md-3 col-sm-12">
                        <div class="rate-extra">
                            <div class="new_product">
                                <div class="product_heading">
                                    <i class="fa fa-shopping-bag"></i>
                                    <span>Top Rate</span>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="all_ayntex indicator-brand-4">
                                <div class="nyx_top_rte">
                                    <div class="col-md-12  ">
                                        <div class="all-pros-ex animated fadeInUp">
                                            <div class="llc_pro">
                                                <div class="sinle_pic sinle_pic_2">
                                                    <a href="#">
                                                    <img class="primary-img" src="img/top-pic/top_pic_1.jpg" alt="" />
                                                    <img class="secondary-img" src="img/top-pic/top_pic_5.jpg" alt="" />
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="product_content_2">
                                                <div class="usal_pro">
                                                    <div class=" product_name_new">
                                                        <h2>
                                                            <a href="#">Nam fringilla</a>
                                                        </h2>
                                                    </div>
                                                    <div class="product_price product_price_new product_price_new_3">
                                                        <div class="price_rating">
                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                            <a href="#">
                                                            <i class="fa fa-star"></i>
                                                            </a>
                                                            <a href="#"><i class="fa fa-star"></i>
                                                            </a>
                                                            <a href="#"><i class="fa fa-star"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="price_box price_box_new price_box_new_3">
                                                        <span class="spical-price">$150.00</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="all-pros-ex animated fadeInUp">
                                            <div class="llc_pro">
                                                <div class=" sinle_pic sinle_pic_2">
                                                    <a href="#">
                                                    <img class="primary-img" src="img/top-pic/top_pic_2.jpg" alt="" />
                                                    <img class="secondary-img" src="img/top-pic/top_pic_3.jpg" alt="" />
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="product_content_2">
                                                <div class="usal_pro">
                                                    <div class=" product_name_new">
                                                        <h2>
                                                            <a href="#">Duis convallis</a>
                                                        </h2>
                                                    </div>
                                                    <div class="product_price product_price_new">
                                                        <div class="price_rating">
                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                            <a href="#">
                                                            <i class="fa fa-star"></i>
                                                            </a>
                                                            <a href="#"><i class="fa fa-star"></i>
                                                            </a>
                                                            <a href="#"><i class="fa fa-star"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="price_box price_box_new">
                                                        <span class="spical-price">$200.00</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="all-pros-ex animated fadeInUp">
                                            <div class="llc_pro">
                                                <div class=" sinle_pic sinle_pic_2">
                                                    <a href="#">
                                                    <img class="primary-img" src="img/top-pic/top_pic_4.jpg" alt="" />
                                                    <img class="secondary-img" src="img/top-pic/top_pic_5.jpg" alt="" />
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="product_content_2">
                                                <div class="usal_pro">
                                                    <div class=" product_name_new">
                                                        <h2>
                                                            <a href="#">Nam fringilla</a>
                                                        </h2>
                                                    </div>
                                                    <div class="product_price product_price_new">
                                                        <div class="price_rating">
                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                            <a href="#">
                                                            <i class="fa fa-star"></i>
                                                            </a>
                                                            <a href="#"><i class="fa fa-star"></i>
                                                            </a>
                                                            <a href="#"><i class="fa fa-star"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="price_box price_box_new">
                                                        <span class="spical-price">$100.00</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="all-pros-ex animated fadeInUp">
                                            <div class="llc_pro">
                                                <div class=" sinle_pic sinle_pic_2">
                                                    <a href="#">
                                                    <img class="primary-img" src="img/top-pic/top_pic_6.jpg" alt="" />
                                                    <img class="secondary-img" src="img/top-pic/top_pic_7.jpg" alt="" />
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="product_content_2">
                                                <div class="usal_pro">
                                                    <div class=" product_name_new">
                                                        <h2>
                                                            <a href="#">Purus felis</a>
                                                        </h2>
                                                    </div>
                                                    <div class="product_price product_price_new">
                                                        <div class="price_rating">
                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                            <a href="#">
                                                            <i class="fa fa-star"></i>
                                                            </a>
                                                            <a href="#"><i class="fa fa-star"></i>
                                                            </a>
                                                            <a href="#"><i class="fa fa-star"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="price_box price_box_new">
                                                        <span class="spical-price">$200.00</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="nyx_top_rte">
                                    <div class="col-md-12">
                                        <div class="all-pros-ex animated fadeInUp">
                                            <div class="llc_pro">
                                                <div class="sinle_pic sinle_pic_2">
                                                    <a href="#">
                                                    <img class="primary-img" src="img/top-pic/top_pic_8.jpg" alt="" />
                                                    <img class="secondary-img" src="img/top-pic/top_pic_9.jpg" alt="" />
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="product_content_2">
                                                <div class="usal_pro">
                                                    <div class=" product_name_new">
                                                        <h2>
                                                            <a href="#">Donec a neque</a>
                                                        </h2>
                                                    </div>
                                                    <div class="product_price product_price_new">
                                                        <div class="price_rating">
                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                            <a href="#">
                                                            <i class="fa fa-star"></i>
                                                            </a>
                                                            <a href="#"><i class="fa fa-star"></i>
                                                            </a>
                                                            <a href="#"><i class="fa fa-star"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="price_box price_box_new">
                                                        <span class="spical-price">$250.00</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="all-pros-ex animated fadeInUp">
                                            <div class="llc_pro">
                                                <div class=" sinle_pic sinle_pic_2">
                                                    <a href="#">
                                                    <img class="primary-img" src="img/top-pic/top_pic_10.jpg" alt="" />
                                                    <img class="secondary-img" src="img/top-pic/top_pic_8.jpg" alt="" />
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="product_content_2">
                                                <div class="usal_pro">
                                                    <div class=" product_name_new">
                                                        <h2>
                                                            <a href="#">Cras neque</a>
                                                        </h2>
                                                    </div>
                                                    <div class="product_price product_price_new">
                                                        <div class="price_rating">
                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                            <a href="#">
                                                            <i class="fa fa-star"></i>
                                                            </a>
                                                            <a href="#"><i class="fa fa-star"></i>
                                                            </a>
                                                            <a href="#"><i class="fa fa-star"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="price_box price_box_new">
                                                        <span class="spical-price">$200.00</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="all-pros-ex animated fadeInUp">
                                            <div class="llc_pro">
                                                <div class=" sinle_pic sinle_pic_2">
                                                    <a href="#">
                                                    <img class="primary-img" src="img/top-pic/top_pic_11.jpg" alt="" />
                                                    <img class="secondary-img" src="img/top-pic/top_pic_12.jpg" alt="" />
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="product_content_2">
                                                <div class="usal_pro">
                                                    <div class=" product_name_new">
                                                        <h2>
                                                            <a href="#">Lorem nec augue</a>
                                                        </h2>
                                                    </div>
                                                    <div class="product_price product_price_new">
                                                        <div class="price_rating">
                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                            <a href="#">
                                                            <i class="fa fa-star"></i>
                                                            </a>
                                                            <a href="#"><i class="fa fa-star"></i>
                                                            </a>
                                                            <a href="#"><i class="fa fa-star"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="price_box price_box_new">
                                                        <span class="spical-price">$220.00</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="all-pros-ex animated fadeInUp">
                                            <div class="llc_pro">
                                                <div class=" sinle_pic sinle_pic_2">
                                                    <a href="#">
                                                    <img class="primary-img" src="img/top-pic/top_pic_12.jpg" alt="" />
                                                    <img class="secondary-img" src="img/top-pic/top_pic_11.jpg" alt="" />
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="product_content_2">
                                                <div class="usal_pro">
                                                    <div class=" product_name_new">
                                                        <h2>
                                                            <a href="#">Morbi ornare</a>
                                                        </h2>
                                                    </div>
                                                    <div class="product_price product_price_new">
                                                        <div class="price_rating">
                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                            <a href="#">
                                                            <i class="fa fa-star"></i>
                                                            </a>
                                                            <a href="#"><i class="fa fa-star"></i>
                                                            </a>
                                                            <a href="#"><i class="fa fa-star"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="price_box price_box_new">
                                                        <span class="spical-price">$9.00</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="nyx_top_rte">
                                    <div class="col-md-12  ">
                                        <div class="all-pros-ex animated fadeInUp">
                                            <div class="llc_pro">
                                                <div class="sinle_pic sinle_pic_2">
                                                    <a href="#">
                                                    <img class="primary-img" src="img/top-pic/top_pic_1.jpg" alt="" />
                                                    <img class="secondary-img" src="img/top-pic/top_pic_5.jpg" alt="" />
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="product_content_2">
                                                <div class="usal_pro">
                                                    <div class=" product_name_new">
                                                        <h2>
                                                            <a href="#">Nam fringilla</a>
                                                        </h2>
                                                    </div>
                                                    <div class="product_price product_price_new product_price_new_3">
                                                        <div class="price_rating">
                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                            <a href="#">
                                                            <i class="fa fa-star"></i>
                                                            </a>
                                                            <a href="#"><i class="fa fa-star"></i>
                                                            </a>
                                                            <a href="#"><i class="fa fa-star"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="price_box price_box_new price_box_new_3">
                                                        <span class="spical-price">$150.00</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="all-pros-ex animated fadeInUp">
                                            <div class="llc_pro">
                                                <div class=" sinle_pic sinle_pic_2">
                                                    <a href="#">
                                                    <img class="primary-img" src="img/top-pic/top_pic_2.jpg" alt="" />
                                                    <img class="secondary-img" src="img/top-pic/top_pic_3.jpg" alt="" />
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="product_content_2">
                                                <div class="usal_pro">
                                                    <div class=" product_name_new">
                                                        <h2>
                                                            <a href="#">Duis convallis</a>
                                                        </h2>
                                                    </div>
                                                    <div class="product_price product_price_new">
                                                        <div class="price_rating">
                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                            <a href="#">
                                                            <i class="fa fa-star"></i>
                                                            </a>
                                                            <a href="#"><i class="fa fa-star"></i>
                                                            </a>
                                                            <a href="#"><i class="fa fa-star"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="price_box price_box_new">
                                                        <span class="spical-price">$200.00</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="all-pros-ex animated fadeInUp">
                                            <div class="llc_pro">
                                                <div class=" sinle_pic sinle_pic_2">
                                                    <a href="#">
                                                    <img class="primary-img" src="img/top-pic/top_pic_4.jpg" alt="" />
                                                    <img class="secondary-img" src="img/top-pic/top_pic_5.jpg" alt="" />
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="product_content_2">
                                                <div class="usal_pro">
                                                    <div class=" product_name_new">
                                                        <h2>
                                                            <a href="#">Nam fringilla</a>
                                                        </h2>
                                                    </div>
                                                    <div class="product_price product_price_new">
                                                        <div class="price_rating">
                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                            <a href="#">
                                                            <i class="fa fa-star"></i>
                                                            </a>
                                                            <a href="#"><i class="fa fa-star"></i>
                                                            </a>
                                                            <a href="#"><i class="fa fa-star"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="price_box price_box_new">
                                                        <span class="spical-price">$100.00</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="all-pros-ex animated fadeInUp">
                                            <div class="llc_pro">
                                                <div class=" sinle_pic sinle_pic_2">
                                                    <a href="#">
                                                    <img class="primary-img" src="img/top-pic/top_pic_6.jpg" alt="" />
                                                    <img class="secondary-img" src="img/top-pic/top_pic_7.jpg" alt="" />
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="product_content_2">
                                                <div class="usal_pro">
                                                    <div class=" product_name_new">
                                                        <h2>
                                                            <a href="#">Purus felis</a>
                                                        </h2>
                                                    </div>
                                                    <div class="product_price product_price_new">
                                                        <div class="price_rating">
                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                            <a href="#">
                                                            <i class="fa fa-star"></i>
                                                            </a>
                                                            <a href="#"><i class="fa fa-star"></i>
                                                            </a>
                                                            <a href="#"><i class="fa fa-star"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="price_box price_box_new">
                                                        <span class="spical-price">$200.00</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <aside class="single-sidebar">
                                <h3>Tags</h3>
                                <div class="compare_content">
                                    <div class="new_tag">
                                        <a href="#">Clothing</a>
                                        <a href="#">Enim</a>
                                        <a href="#">Fashion</a>
                                        <a href="#">Glasses</a>
                                        <a href="#">Hats</a>
                                        <a href="#">Hoodies</a>
                                    </div>
                                </div>
                            </aside>
                        </div>
                    </div>
                    <div class="col-md-9 col-sm-12">
                        <div class="haxico_main haxico_main_grf">
                            <div class="fchered_area">
                                <div class="new_product">
                                    <div class="product_heading">
                                        <i class="fa fa-list-ol"></i>
                                        <span>Featured Catagories</span>
                                    </div>
                                </div>
                            </div>
                            <div class="chard_ex_al">
                                <div class="row">
                                    <div class="achard_all indicator-brand indicator-brand-5">
                                        <div class="col-md-12">
                                            <div class="fchered_item">
                                                <div class="fechered_pix">
                                                    <img src="img/featured-pic/f_pix_1.jpg" alt="" />
                                                </div>
                                                <div class="fechered_heading">
                                                    <h3><a href="#">Accessories</a></h3>
                                                </div>
                                                <a class="view_button">View More</a>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="fchered_item">
                                                <div class="fechered_pix">
                                                    <img src="img/featured-pic/f_pix_2.jpg" alt="" />
                                                </div>
                                                <div class="fechered_heading">
                                                    <h3><a href="#">Albums</a></h3>
                                                </div>
                                                <a class="view_button">View More</a>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="fchered_item">
                                                <div class="fechered_pix">
                                                    <img src="img/featured-pic/f_pix_3.jpg" alt="" />
                                                </div>
                                                <div class="fechered_heading">
                                                    <h3><a href="#">Electronic</a></h3>
                                                </div>
                                                <a class="view_button">View More</a>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="fchered_item">
                                                <div class="fechered_pix">
                                                    <img src="img/featured-pic/f_pix_4.jpg" alt="" />
                                                </div>
                                                <div class="fechered_heading">
                                                    <h3><a href="#">Headlight</a></h3>
                                                </div>
                                                <a class="view_button">View More</a>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="fchered_item">
                                                <div class="fechered_pix">
                                                    <img src="img/featured-pic/f_pix_5.jpg" alt="" />
                                                </div>
                                                <div class="fechered_heading">
                                                    <h3><a href="#">Mirrors</a></h3>
                                                </div>
                                                <a class="view_button">View More</a>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="fchered_item">
                                                <div class="fechered_pix">
                                                    <img src="img/featured-pic/f_pix_5.jpg" alt="" />
                                                </div>
                                                <div class="fechered_heading">
                                                    <h3><a href="#">Accessories</a></h3>
                                                </div>
                                                <a class="view_button">View More</a>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="fchered_item">
                                                <div class="fechered_pix">
                                                    <img src="img/featured-pic/f_pix_3.jpg" alt="" />
                                                </div>
                                                <div class="fechered_heading">
                                                    <h3><a href="#">Accessories</a></h3>
                                                </div>
                                                <a class="view_button">View More</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="blog">
                                    <div class="new_product">
                                        <div class="product_heading">
                                            <i class="fa fa-comments"></i>
                                            <span>Blog Post</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="blog_carasel indicator-brand indicator-brand-6">
                                <div class="col-md-12">
                                    <div class="blog_next">
                                        <div class="blog_thumb">
                                            <a href="#">
                                            <img src="img/blog-pic/blog_pic_1.jpg" alt="" />
                                            </a>
                                            <div class="blogdate">
                                                <div>
                                                    <span class="day">29</span>
                                                    <span class="month">Jan</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="blog_info">
                                            <h3 class="post-title">
                                                <a href="#">Hello world!</a>
                                            </h3>
                                            <div class="post-excerpt">Donec vitae hendrerit arcu, sit amet faucibus nisl. Cras pretium arcu ex. Aenean posuere libero eu augue condimentum rhoncus. Praesent …</div>
                                            <a href="#">
                                            <span class="readmore-text">Read More</span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="blog_next">
                                        <div class="blog_thumb">
                                            <a href="#">
                                            <img src="img/blog-pic/blog_pic_2.jpg" alt="" />
                                            </a>
                                            <div class="blogdate">
                                                <div>
                                                    <span class="day">19</span>
                                                    <span class="month">Jan</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="blog_info">
                                            <h3 class="post-title">
                                                <a href="#">Curabitur lobortis</a>
                                            </h3>
                                            <div class="post-excerpt">Donec vitae hendrerit arcu, sit amet faucibus nisl. Cras pretium arcu ex. Aenean posuere libero eu augue condimentum rhoncus. Praesent …</div>
                                            <a href="#">
                                            <span class="readmore-text">Read More</span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="blog_next">
                                        <div class="blog_thumb">
                                            <a href="#">
                                            <img src="img/blog-pic/blog_pic_3.jpg" alt="" />
                                            </a>
                                            <div class="blogdate">
                                                <div>
                                                    <span class="day">19</span>
                                                    <span class="month">Jan</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="blog_info">
                                            <h3 class="post-title">
                                                <a href="#">Vivamus gravida</a>
                                            </h3>
                                            <div class="post-excerpt">Donec vitae hendrerit arcu, sit amet faucibus nisl. Cras pretium arcu ex. Aenean posuere libero eu augue condimentum rhoncus. Praesent …</div>
                                            <a href="#">
                                            <span class="readmore-text">Read More</span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="blog_next">
                                        <div class="blog_thumb">
                                            <a href="#">
                                            <img src="img/blog-pic/blog_pic_6.jpg" alt="" />
                                            </a>
                                            <div class="blogdate">
                                                <div>
                                                    <span class="day">4</span>
                                                    <span class="month">Jan</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="blog_info">
                                            <h3 class="post-title">
                                                <a href="#">Post Format:Image</a>
                                            </h3>
                                            <div class="post-excerpt">Donec vitae hendrerit arcu, sit amet faucibus nisl. Cras pretium arcu ex. Aenean posuere libero eu augue condimentum rhoncus. Praesent …</div>
                                            <a href="#">
                                            <span class="readmore-text">Read More</span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="blog_next">
                                        <div class="blog_thumb">
                                            <a href="#">
                                            <img src="img/blog-pic/blog_pic_5.jpg" alt="" />
                                            </a>
                                            <div class="blogdate">
                                                <div>
                                                    <span class="day">4</span>
                                                    <span class="month">Jan</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="blog_info">
                                            <h3 class="post-title">
                                                <a href="#">Post Format:Gallery</a>
                                            </h3>
                                            <div class="post-excerpt">Donec vitae hendrerit arcu, sit amet faucibus nisl. Cras pretium arcu ex. Aenean posuere libero eu augue condimentum rhoncus. Praesent …</div>
                                            <a href="#">
                                            <span class="readmore-text">Read More</span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--blog area end-->
        <!--brand area start-->
        <div class="logo_area">
            <div class="container">
                <div class="row">
                    <div class="brand brand-2 brand-sth">
                        <div class="new_product new_product_nx new_product_nx_et ">
                            <div class="product_heading product_heading_tf">
                                <i class="fa fa-coffee"></i>
                                <span>Brand Logo</span>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="main_brand main_brand_tf main_brand_sw">
                            <div class="all_brand indicator-brand indicator-brand-7">
                                <div class="col-md-12">
                                    <div class="brand_pix">
                                        <img src="img/brand-logo/logo_1.jpg" alt="" />
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="brand_pix">
                                        <img src="img/brand-logo/logo_2.jpg" alt="" />
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="brand_pix">
                                        <img src="img/brand-logo/logo_3.jpg" alt="" />
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="brand_pix">
                                        <img src="img/brand-logo/logo_4.jpg" alt="" />
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="brand_pix">
                                        <img src="img/brand-logo/logo_5.jpg" alt="" />
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="brand_pix">
                                        <img src="img/brand-logo/logo_6.jpg" alt="" />
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="brand_pix">
                                        <img src="img/brand-logo/logo_3.jpg" alt="" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--brand area end-->
        <!--newsletter area start-->
        <div class="all_news_letter">
            <div class="news_letter">
                <div class="news_middele">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="news_heading">
                                    <h3> newsletter </h3>
                                </div>
                                <div class="full_form">
                                    <form id="form-newsletter1" class="widget_wysija" method="post" action="#wysija">
                                        <p class="wysija-paragraph">
                                            <input name="wysija[user][email]" class="wysija-input validate[required,custom[email]]" title="Enter Your Mail..." placeholder="Enter Your Mail..." value="" id="form-validation-field-0" style="" type="text">
                                        </p>
                                        <input class="wysija-submit wysija-submit-field" value="Subscribe!" type="submit">
                                    </form>
                                </div>
                            </div>
                            <div class="col-md-6 col-xs-12">
                                <div class="dxpt_area">
                                    <div class="news_right">
                                        <div class="news_heading news_heading_3">
                                            <h3 class="follow_mix">Follow us:</h3>
                                        </div>
                                        <ul class="social-icons">
                                            <li>
                                                <a class="facebook social-icon" href="#facebook" title="" target="_blank" data-toggle="tooltip" data-original-title="Facebook">
                                                <i class="fa fa-facebook"></i>
                                                </a>
                                            </li>
                                            <li>
                                                <a class="twitter social-icon" href="#twitter.com" title="" target="_blank" data-toggle="tooltip" data-original-title="Twitter">
                                                <i class="fa fa-twitter"></i>
                                                </a>
                                            </li>
                                            <li>
                                                <a class="google-plus social-icon" href="#google-plus" title="" target="_blank" data-toggle="tooltip" data-original-title="Google-plus">
                                                <i class="fa fa-google-plus"></i>
                                                </a>
                                            </li>
                                            <li>
                                                <a class="youtube social-icon" href="#youtube" title="" target="_blank" data-toggle="tooltip" data-original-title="Youtube">
                                                <i class="fa fa-youtube"></i>
                                                </a>
                                            </li>
                                            <li>
                                                <a class="social-icon instagram" href="#" title="" target="_blank" data-toggle="tooltip" data-original-title="instagram">
                                                <i class="fa fa-instagram"></i>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--newsletter area end-->
        
        
        
        <!--底部信息开始-->
        <div class="footer_area">
            <div class="container">
                <div class="row">
                    <div class="col-md-3 col-sm-6">
                        <div class="footer_menu">
                            <div class="news_heading_2">
                                <h3>信息 </h3>
                            </div>
                            <div class="footer_menu">
                                <ul>
                                    <li>
                                        <a href="#">我们的博客</a>
                                    </li>
                                    <li>
                                        <a href="#">关于我们</a>
                                    </li>
                                    <li>
                                        <a href="#">安全</a>
                                    </li>
                                    <li>
                                        <a href="#">隐私政策</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="footer_menu">
                            <div class="news_heading_2">
                                <h3>支付方式 </h3>
                            </div>
                            <div class="footer_menu">
                                <ul>
                                    <li>
                                        <a href="#">货到付款</a>
                                    </li>
                                    <li>
                                        <a href="#">在线支付</a>
                                    </li>
                                    <li>
                                        <a href="#">分期付款</a>
                                    </li>
                                    <li>
                                        <a href="#">公司转账</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="footer_menu">
                            <div class="news_heading_2">
                                <h3> 售后服务 </h3>
                            </div>
                            <div class="footer_menu">
                                <ul>
                                    <li>
                                        <a href="#">售后政策</a>
                                    </li>
                                    <li>
                                        <a href="#">价格保护</a>
                                    </li>
                                    <li>
                                        <a href="#">退款说明</a>
                                    </li>
                                    <li>
                                        <a href="#">返修/退换货</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="footer_menu footer_menu_2">
                            <div class="news_heading_2">
                                <h3> 联系我们 </h3>
                            </div>
                            <ul>
                                <li>
                                    <i class="fa fa-home"></i>
                                    <p>地址 : 42 avenue des Champs Elysées 75000  France</p>
                                </li>
                                <li>
                                    <i class="fa fa-phone"></i>
                                    <p>电话: (0123) 456789</p>
                                </li>
                                <li>
                                    <i class="fa fa-envelope"></i>
                                    <p>邮箱: admin@hastech.company</p>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!--footer top area end-->
            <!--footer middle area start-->
            <div class="footer_middle">
                <div class="container">
                    <div class="fotter_inner">
                        <div class="middele_pic">
                            <img src="img/icon/payment-300x30.png" alt="" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--底部信息结束-->
        
        
        
        <!--底部开始-->
        <div class="footer-bottom">
            <div class="container">
                <div class="widget-copyright text-center">
                    Copyright &copy; 2017.Company name All rights reserved.
                </div>
            </div>
        </div>
        <!--底部结束-->
        
        
        <!--modal content start-->
        <!-- Modal -->
        <div class="modal fade" id="myModal" role="dialog">
            <div class="modal-dialog modal-dialog-2">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body">
                        <div class="modal-product">
                            <div class="row">
                                <div class="new_port new_port_2">
                                    <div class="port_pix">
                                        <img src="img/product-pic/product_pic_2.jpg" alt="">
                                    </div>
                                </div>
                                <div class="elav_titel elav_titel_2">
                                    <div class="elv_heading elv_heading_therteen">
                                        <h3>Donec non est at</h3>
                                    </div>
                                    <div class="elav_info">
                                        <div class="price_box price_box_pb">
                                            <span class="spical-price spical-price-nk">$250.00</span>
                                        </div>
                                        <form class="cart-btn-area cart-btn-area-dec" action="#">
                                            <a class="see-all" href="#">See all features</a><br>
                                            <input type="number" value="1">
                                            <button class="add-tocart add-tocart-2" type="submit">Add to cart</button>
                                        </form>
                                    </div>
                                    <div class="evavet_description evavet_description_dec">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce posuere metus vitae arcu imperdiet, id aliquet ante scelerisque. Sed sit amet sem vitae urna fringilla tempus.</p>
                                    </div>
                                    <div class="elavetor_social">
                                        <h3 class="widget-title">Share this product</h3>
                                        <br>
                                        <ul class="social-link social-link-bbt">
                                            <li><a class="fb" data-original-title="facebook" href="#" title="" data-toggle="tooltip"><i class="fa fa-facebook"></i></a></li>
                                            <li><a class="twit" data-original-title="twitter" href="#" title="" data-toggle="tooltip"><i class="fa fa-twitter"></i></a></li>
                                            <li><a class="pinter" data-original-title="pinterest" href="#" title="" data-toggle="tooltip"><i class="fa fa-pinterest"></i></a></li>
                                            <li><a class="google+" href="#" title="Google+" data-target="#productModal" data-toggle="tooltip"><i class="fa fa-google-plus"></i></a></li>
                                            <li><a class="lindin" href="#" title="LinkedIn" data-target="#productModal" data-toggle="tooltip"><i class="fa fa-linkedin"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--modal content end-->
		
		
		
		
		
		
        <!-- all js here -->
        <!-- jquery latest version -->
        <script src="js/vendor/jquery-1.12.0.min.js"></script>
        <!-- bootstrap js -->
        <script src="js/bootstrap.min.js"></script>
        <!-- nivo slider js -->
        <script src="lib/js/jquery.nivo.slider.js" type="text/javascript"></script>
        <script src="lib/home.js" type="text/javascript"></script>
        <!-- owl.carousel js -->
        <script src="js/owl.carousel.min.js"></script>
        <!-- meanmenu js -->
        <script src="js/jquery.meanmenu.js"></script>
        <!-- jquery-ui js -->
        <script src="js/jquery-ui.min.js"></script>
        <!-- easing js -->
        <script src="js/jquery.easing.1.3.js"></script>
        <!-- mixitup js -->
        <script src="js/jquery.mixitup.min.js"></script>
        <!-- jquery.countdown js -->
        <script src="js/jquery.countdown.min.js"></script>
        <!-- wow js -->
        <script src="js/wow.min.js"></script>
        <!-- popup js -->
        <script src="js/jquery.magnific-popup.min.js"></script> 
        <!-- plugins js -->
        <script src="js/plugins.js"></script>
        <!-- main js -->
        <script src="js/main.js"></script>
    </body>
</html>


