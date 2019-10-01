<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

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

<link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css" />"
	type="text/css" />
<!-- animate css -->
<link rel="stylesheet" href="<c:url value="/css/animate.css" />"
	type="text/css" />
<!-- jquery-ui.min css -->
<link rel="stylesheet" href="<c:url value="/css/jquery-ui.min.css" />"
	type="text/css" />
<!-- meanmenu css -->
<link rel="stylesheet" href="<c:url value="/css/meanmenu.min.css" />"
	type="text/css" />
<!-- nivo slider css -->
<link rel="stylesheet" href="<c:url value="/css/nivo-slider.css" />"
	type="text/css" />
<link rel="stylesheet" href="<c:url value="/css/preview.css" />"
	type="text/css" />
<!-- owl.carousel css -->
<link rel="stylesheet" href="<c:url value="/css/owl.carousel.css" />"
	type="text/css" />
<!-- font-awesome css -->
<link rel="stylesheet"
	href="<c:url value="/css/font-awesome.min.css" />" type="text/css" />
<!-- style css -->
<link rel="stylesheet" href="<c:url value="/css/style.css" />"
	type="text/css" />
<!-- responsive css -->
<link rel="stylesheet" href="<c:url value="/css/responsive.css" />"
	type="text/css" />
<!-- modernizr js -->
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/vendor/modernizr-2.8.3.min.js"></script>
</head>
<body>


        <section class="product_area">
            <div class="container">
                <div class="row">
                    <div class="col-md-9 col-sm-9">
                        <div class="all_product animated fadeInUp">
                            <div class="new_product">
                                <div class="product_heading">
                                    <i class="fa fa-play-circle"></i>
                                    <span>New products</span>
                                </div>
                            </div>
                            <div class="row">
                                <div class="whole_product indicator-brand">
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
                                                            <a class="not-rated" href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
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
                                                                    <a class="button_act" data-quick-id="45" href="" title="" data-toggle="tooltip" data-original-title="Donec non est at">Go to Buy</a>
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
                                                            <a href="#"><i class="fa fa-star"></i></a>
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
                                                            <i class="fa fa-star-o"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="price_box">
                                                        <span class="<spical-></spical->price">$300.00</span>
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
                                                                <div class="woocommerce                                                       product compare-button">
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
                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                            <a href="#"><i class="fa fa-star"></i></a>
                                                            <a class="not-rated" href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
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
                                                                <div class="woocommerce                                                       product compare-button">
                                                                    <a class="compare button" href="" data-product_id="45" rel="nofollow" data-toggle="tooltip" title="" data-original-title="Compare"><i class="fa fa-refresh"></i></a>
                                                                </div>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12  animated fadeInUp">
                                        <div class="all-pros all-pros-5">
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
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-12">
                        <div class="cosmetc_area">
                            <div class="cosmatics_heading">
                                <h3 class="cosmatics_products">
                                    <i class="fa fa-tags"></i>
                                    <span>Hot deals</span>
                                </h3>
                            </div>
                            <div class="row">
                                <div class="new_cosmatic indicator-brand indicator-brand-2">
                                    <div class="col-md-12">
                                        <div class="all-pros all-pros-8 animated fadeInUp">
                                            <div class="single_product_3 ">
                                                <span>sale</span>
                                            </div>
                                            <div class="sinle_pic">
                                                <a href="#">
                                                <img class="primary-img" src="img/cosmatics-pic/cosmatic_pix_1.jpg" alt="" />
                                                <img class="secondary-img" src="img/cosmatics-pic/cosmatic_pix_1.jpg" alt="" />
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
                                    <div class="col-md-12">
                                        <div class="all-pros all-pros-8 animated fadeInUp">
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
                                                <div class="usal_pro usal_pro_eb">
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
                                                            <a href="#"><i class="fa fa-star"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="price_box price_box_dgr">
                                                        <span class="old- price">$200.00</span>
                                                        <span class="spical-price">$150.00</span>
                                                    </div>
                                                    <div class="count-down-area">
                                                        <div data-countdown="2017/11/01">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
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
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>




	<!-- all js here -->
	<!-- jquery latest version -->

	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/vendor/jquery-1.12.0.min.js"></script>


	<!-- bootstrap js -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>

	<!-- nivo slider js -->

	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/jquery.nivo.slider.js"></script>


	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/home.js"></script>
	<!-- owl.carousel js -->

	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/owl.carousel.min.js"></script>

	<!-- meanmenu js -->

	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/jquery.meanmenu.js"></script>
	<!-- jquery-ui js -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/jquery-ui.min.js"></script>


	<!-- easing js -->

	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/jquery.easing.1.3.js"></script>
	<!-- mixitup js -->

	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/jquery.mixitup.min.js"></script>
	<!-- jquery.countdown js -->

	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/jquery.countdown.min.js"></script>
	<!-- wow js -->

	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/wow.min.js"></script>
	<!-- popup js -->

	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/jquery.magnific-popup.min.js"></script>
	<!-- plugins js -->

	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/plugins.js"></script>
	<!-- main js -->

	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/main.js"></script>

	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/jquery.timers.js"></script>

	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/time.js"></script>
</body>
</html>


