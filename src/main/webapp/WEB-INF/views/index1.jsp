<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!doctype html>

<html class="no-js" lang="en">
<head>
<!-- <meta charset="utf-8"> -->
<!-- <meta http-equiv="x-ua-compatible" content="ie=edge"> -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
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

<script type="text/javascript">
	// 	function searchByF(){
	// 	$.ajax({
	// 		type: 'POST',
	// 		url: "getProductsBy",
	// 		data: "searchBy="+$("#searchBy").val(),
	// 		dataType: "text",
	// 		success: function(response) {

	// 		},
	// 		error: function(jqXHR, textStatus, errorThrown) {},
	// 	});
	// 	}
</script>


</head>
<body>
	<!-- TOP -->
	<jsp:include page="/WEB-INF/views/fragment/top.jsp" />

	<jsp:include page="/WEB-INF/views/fragment/header.jsp" />

	<!-- TOP END -->


	<!--slider area start-->
	<section class="slider-area">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="bend niceties preview-2">
						<div id="ensign-nivoslider" class="slides">

							<img alt="" title="#slider-caption-1"
								src="<c:url value="/images/slider/xrlogo.png"  />"> <img
								alt="" title="#slider-caption-2"
								src="<c:url value="/images/slider/dyson.png" />">
						</div>
						<!-- direction 1 -->
						<div id="slider-caption-1"
							class="t-cn slider-direction slider-one">
							<div class="slider-progress"></div>
							<div class="tld-f1">
								<div class="layer-1-1 animated fadeInDown">
									<h1>$28000</h1>
								</div>
								<div class="layer-1-2 animated flipInX">
									<h2>$22400</h2>
								</div>
								<div class="layer-1-3 animated rotateInUpLeft">
									<h1>Iphone XR</h1>
								</div>
								<div class="layer-1-4  animated rotateInUpLeft">
									<h3>SALE UO TO 20%</h3>
								</div>
								<div class="layer-1-5 animated rotateInUpLeft">
									<a href="#">點我下單</a>
								</div>
							</div>
							<div class="tld-f2">
								<div class="layer-1-6 animated zoomIn">

									<img src="<c:url value="/images/slider/IPHONEXR.png"/>">
								</div>
							</div>
						</div>
						<!-- direction 2 -->
						<div id="slider-caption-2" class="slider-direction slider-two">
							<div class="slider-progress"></div>
							<div class="sld-fl">
								<div class="layer-2-1 animated fadeInLeftBig">
									<h1>$21840</h1>
								</div>
								<div class="layer-2-2 animated slideInLeft">
									<h2>$16800</h2>
								</div>
								<div class="layer-2-3 animated slideInLeft">
									<h1>Dyson吸塵機器人</h1>
								</div>
								<div class="layer-2-4 animated slideInLeft">
									<h3>SALE UO TO 30%</h3>
								</div>
								<div class="layer-2-5 animated bounceInUp">
									<a href="#">點我下單</a>
								</div>
							</div>
							<div class="sld-fr">
								<div class="layer-2-6 animated zoomIn">
									<img src="<c:url value="/images/slider/dyson.logo.png"/>">
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--slider area end-->
	<!--social design arae start-->
	<!-- 右邊的那一條 -->
	<div class="link_area">
		<div class="container">
			<div class="row">
				<div class="social_design on_right">
					<ul>
						<li><a class="facebook" target="_blank" href="#facebook">
								<span> <i class="fa fa-facebook"></i> <span
									class="social-text">追蹤 Facebook</span>
							</span>
						</a></li>
						<!-- <li>
                                <a class="twitter" target="_blank" href="#twitter.com">
                                    <span>
                                        <i class="fa fa-twitter"></i>
                                        <span class="social-text">Follow via Twitter</span>
                                    </span>
                                </a>
                            </li> -->
						<li><a class="google-plus" target="_blank"
							href="#google-plus"> <span> <i class="fa fa-google"></i>
									<span class="social-text">追蹤 Google</span>
							</span>
						</a></li>
						<li><a class="youtube" target="_blank" href="#youtube"> <span>
									<i class="fa fa-youtube"></i> <span class="social-text">訂閱
										Youtube</span>
							</span>
						</a></li>
						<li><a class="pinterest" target="_blank" href="#"> <span>
									<i class="fa fa-instagram"></i> <span class="social-text">追蹤
										IG</span>
							</span>
						</a></li>
						<li><a class="mail-to" target="_blank"
							href="mailto:moghost520@gmail.com"> <span> <i
									class="fa fa-envelope-o"></i> <span class="social-text">寄信給卡痞</span>
							</span>
						</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<!--social design arae end-->

	<!-- 左邊那一條 -->

	<!--about us area-->
	<div class="about_us_area">
		<div class="about_main">
			<div class="container">
				<div class="row">
					<div class="col-md-4">
						<div class="about_all">
							<div class="single_about">
								<div class="about_icon">
									<span class="fa fa-truck"></span>
								</div>
								<div class="about_content">
									<div class="about_text">免運活動中</div>
									<div class="about_prgph">全館不管消費金額多少，運費皆由卡痞購物買單！</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="about_all">
							<div class="single_about">
								<div class="about_icon">
									<span class="fa fa-history"></span>
								</div>
								<div class="about_content">
									<div class="about_text">全台24小時到貨</div>
									<div class="about_prgph">
										限定商品，全台24小時內到貨<br>(偏遠地區除外)
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="about_all">
							<div class="single_about">
								<div class="about_icon">
									<span class="fa fa-lock"></span>
								</div>
								<div class="about_content">
									<div class="about_text">限量商品熱賣中</div>
									<div class="about_prgph">
										限量商品到貨，熱賣搶購中！<br>售完為止。
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--about us end-->
	<!--product area start-->
	<section class="product_area">
		<div class="container">
			<div class="row">
				<div class="col-md-9 col-sm-9">
					<div class="all_product animated fadeInUp">
						<div class="new_product">
							<div class="product_heading">
								<i class="fa fa-play-circle"></i> <span>新貨商品</span>
							</div>
						</div>


						<c:forEach var="product01" items='${products}' begin="2" end="2">
							<div class="row">
								<div class="whole_product indicator-brand">
									<div class="col-md-12">
										<div class="all-pros animated fadeInUp">
											<div class="single_product">
												<span>New</span>
											</div>
											<div class="sinle_pic">
												<a
													href="<spring:url value='productById02?pId=${product01.pId}'/>">
													<img class="primary-img"
													src="data:image/jpg;base64,${product01.base64Image}" alt="">
													<img class="secondary-img"
													src="data:image/jpg;base64,${product01.base64Image1}"
													alt="">
												</a>
											</div>


											<div class="product_content">
												<div class="usal_pro">
													<div class="product_name_2">
														<h2>
															<a href="#">${product01.pname}</a>
														</h2>
													</div>
													<div class="product_price">
														<div class="price_rating">
															<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
																class="fa fa-star"></i></a> <a href="#"> <i
																class="fa fa-star"></i>
															</a> <a class="not-rated" href="#"> <i
																class="fa fa-star-o" aria-hidden="true"></i>
															</a> <a class="not-rated" href="#"><i
																class="fa fa-star-o" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="price_box">
														<span class="spical-price">商品價錢 :
															${product01.price}</span>
													</div>
													<div class="last_button_area">
														<ul class="add-to-links clearfix">
															<li class="addwishlist">
																<div class="yith-wcwl-add-button show">
																	<a class="add_to_wishlist" href="" rel="nofollow"
																		data-product-id="45" data-product-type="external"
																		data-toggle="tooltip" title=""
																		data-original-title="Add to Wishlist"><i
																		class="fa fa-heart"></i></a>
																</div>
															</li>
															<li>
																<div class="new_act">
																	<a class="button_act" data-quick-id="45"
																		href="<spring:url value='productById02?pId=${product01.pId}'/>"
																		title="" data-toggle="tooltip"
																		data-original-title="Donec non est at">詳細頁面</a>
																</div>
															</li>
															<li class="addcompare">
																<div class="woocommerce product compare-button">
																	<a class="compare button" href="" data-product_id="45"
																		rel="nofollow" data-toggle="tooltip" title=""
																		data-original-title="Compare"><i
																		class="fa fa-refresh"></i></a>
																</div>
															</li>
														</ul>
													</div>
												</div>
											</div>
										</div>
									</div>
						</c:forEach>
						<c:forEach var="product01" items='${products}' begin="1" end="1">
							<div class="col-md-12">
								<div class="all-pros all-pros-2 animated fadeInUp">
									<div class="single_product">
										<span>New</span>
									</div>
									<div class="sinle_pic" style="width: 300px; height: 300px;">
										<a
											href="<spring:url value='productById02?pId=${product01.pId}'/>">
											<img class="primary-img"
											src="data:image/jpg;base64,${product01.base64Image}" alt="">
											<img class="secondary-img"
											src="data:image/jpg;base64,${product01.base64Image1}" alt="">
										</a>
									</div>

									<div class="product_content">
										<div class="usal_pro">
											<div class="product_name_2">
												<h2>
													<a href="#">${product01.pname}</a>
												</h2>
											</div>
											<div class="product_price">
												<div class="price_rating">
													<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
														class="fa fa-star"></i></a> <a href="#"> <i
														class="fa fa-star"></i>
													</a> <a href="#"><i class="fa fa-star"></i></a> <a
														class="not-rated" href="#"> <i class="fa fa-star-o"
														aria-hidden="true"></i>
													</a>
												</div>
											</div>
											<div class="price_box">
												<span class="spical-price">商品價錢 : ${product01.price}</span>
											</div>
											<div class="last_button_area">
												<ul class="add-to-links clearfix">
													<li class="addwishlist">
														<div class="yith-wcwl-add-button show">
															<a class="add_to_wishlist" href="" rel="nofollow"
																data-product-id="45" data-product-type="external"
																data-toggle="tooltip" title=""
																data-original-title="Add to Wishlist"><i
																class="fa fa-heart"></i></a>
														</div>
													</li>
													<li>
														<div class="new_act">
															<a class="button_act" data-quick-id="45"
																href="<spring:url value='productById02?pId=${product01.pId}'/>"
																title="" data-toggle="tooltip"
																data-original-title="Donec non est at">詳細頁面</a>
														</div>
													</li>
													<li class="addcompare">
														<div class="woocommerce product compare-button">
															<a class="compare button" href="" data-product_id="45"
																rel="nofollow" data-toggle="tooltip" title=""
																data-original-title="Compare"><i
																class="fa fa-refresh"></i></a>
														</div>
													</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
						<c:forEach var="product01" items='${products}' begin="3" end="3">
							<div class="col-md-12">
								<div class="all-pros all-pros-3 animated fadeInUp">
									<div class="single_product">
										<span>New</span>
									</div>
									<div class="sinle_pic" style="width: 300px; height: 300px;">
										<a
											href="<spring:url value='productById02?pId=${product01.pId}'/>">
											<img class="primary-img"
											src="data:image/jpg;base64,${product01.base64Image}" alt="">
											<img class="secondary-img"
											src="data:image/jpg;base64,${product01.base64Image1}" alt="">
										</a>
									</div>

									<div class="product_content">
										<div class="usal_pro">
											<div class="product_name_2">
												<h2>
													<a href="#">${product01.pname}</a>
												</h2>
											</div>
											<div class="product_price">
												<div class="price_rating">
													<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
														class="fa fa-star"></i></a> <a href="#"> <i
														class="fa fa-star"></i>
													</a> <a class="not-rated" href="#"> <i class="fa fa-star-o"
														aria-hidden="true"></i>
													</a> <a class="not-rated" href="#"> <i class="fa fa-star-o"></i>
													</a>
												</div>
											</div>
											<div class="price_box">
												<span class="<spical-></spical->price">商品價錢 :
													${product01.price}</span>
											</div>
											<div class="last_button_area">
												<ul class="add-to-links clearfix">
													<li class="addwishlist">
														<div class="yith-wcwl-add-button show">
															<a class="add_to_wishlist" href="" rel="nofollow"
																data-product-id="45" data-product-type="external"
																data-toggle="tooltip" title=""
																data-original-title="Add to Wishlist"><i
																class="fa fa-heart"></i></a>
														</div>
													</li>
													<li>
														<div class="new_act">
															<a class="button_act" data-quick-id="45"
																href="<spring:url value='productById02?pId=${product01.pId}'/>"
																title="" data-toggle="tooltip"
																data-original-title="Donec non est at">詳細頁面</a>
														</div>
													</li>
													<li class="addcompare">
														<div
															class="woocommerce                                                       product compare-button">
															<a class="compare button" href="" data-product_id="45"
																rel="nofollow" data-toggle="tooltip" title=""
																data-original-title="Compare"><i
																class="fa fa-refresh"></i></a>
														</div>
													</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
						<c:forEach var="product01" items='${products}' begin="4" end="4">
							<div class="col-md-12">
								<div class="all-pros all-pros-4 animated fadeInUp">
									<div class="single_product single_product_2">
										<span>hot</span>
									</div>
									<div class="single_product_3 ">
										<span>sale</span>
									</div>
									<div class="sinle_pic">
										<a
											href="<spring:url value='productById02?pId=${product01.pId}'/>">
											<img class="primary-img"
											src="data:image/jpg;base64,${product01.base64Image}" alt="">
											<img class="secondary-img"
											src="data:image/jpg;base64,${product01.base64Image1}" alt="">
										</a>
									</div>

									<div class="product_content">
										<div class="usal_pro">
											<div class="product_name_2">
												<h2>
													<a href="#">${product01.pname}</a>
												</h2>
											</div>
											<div class="product_price">
												<div class="price_rating">
													<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
														class="fa fa-star"></i></a> <a href="#"><i
														class="fa fa-star"></i></a> <a href="#"><i
														class="fa fa-star"></i></a> <a class="not-rated" href="#"><i
														class="fa fa-star-o" aria-hidden="true"></i></a>
												</div>
											</div>
											<div class="price_box">
												<span class="<spical-></spical->price">商品價錢 :
													${product01.price}</span>
											</div>
											<div class="last_button_area">
												<ul class="add-to-links clearfix">
													<li class="addwishlist">
														<div class="yith-wcwl-add-button show">
															<a class="add_to_wishlist" href="" rel="nofollow"
																data-product-id="45" data-product-type="external"
																data-toggle="tooltip" title=""
																data-original-title="Add to Wishlist"><i
																class="fa fa-heart"></i></a>
														</div>
													</li>
													<li>
														<div class="new_act">
															<a class="button_act" data-quick-id="45"
																href="<spring:url value='productById02?pId=${product01.pId}'/>"
																title="" data-toggle="tooltip"
																data-original-title="Donec non est at">詳細頁面</a>
														</div>
													</li>
													<li class="addcompare">
														<div
															class="woocommerce                                                       product compare-button">
															<a class="compare button" href="" data-product_id="45"
																rel="nofollow" data-toggle="tooltip" title=""
																data-original-title="Compare"><i
																class="fa fa-refresh"></i></a>
														</div>
													</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
						<c:forEach var="product01" items='${products}' begin="5" end="5">
							<div class="col-md-12  animated fadeInUp">
								<div class="all-pros all-pros-5">
									<div class="single_product">
										<span>New</span>
									</div>
									<div class="sinle_pic">
										<a
											href="<spring:url value='productById02?pId=${product01.pId}'/>">
											<img class="primary-img"
											src="data:image/jpg;base64,${product01.base64Image}" alt="">
											<img class="secondary-img"
											src="data:image/jpg;base64,${product01.base64Image1}" alt="">
										</a>
									</div>

									<div class="product_content">
										<div class="usal_pro">
											<div class="product_name_2">
												<h2>
													<a href="#">${product01.pname}</a>
												</h2>
											</div>
											<div class="product_price">
												<div class="price_rating">
													<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
														class="fa fa-star"></i></a> <a href="#"> <i
														class="fa fa-star"></i>
													</a> <a href="#"><i class="fa fa-star"></i> </a> <a
														class="not-rated" href="#"> <i class="fa fa-star-o"
														aria-hidden="true"></i>
													</a>
												</div>
											</div>
											<div class="price_box">
												<span class="spical-price"> 商品價錢 : ${product01.price}</span>
											</div>
											<div class="last_button_area">
												<ul class="add-to-links clearfix">
													<li class="addwishlist">
														<div class="yith-wcwl-add-button show">
															<a class="add_to_wishlist" href="" rel="nofollow"
																data-product-id="45" data-product-type="external"
																data-toggle="tooltip" title=""
																data-original-title="Add to Wishlist"><i
																class="fa fa-heart"></i></a>
														</div>
													</li>
													<li>
														<div class="new_act">
															<a class="button_act" data-quick-id="45"
																href="<spring:url value='productById02?pId=${product01.pId}'/>"
																title="" data-toggle="tooltip"
																data-original-title="Donec non est at">詳細頁面</a>
														</div>
													</li>
													<li class="addcompare">
														<div class="woocommerce product compare-button">
															<a class="compare button" href="" data-product_id="45"
																rel="nofollow" data-toggle="tooltip" title=""
																data-original-title="Compare"><i
																class="fa fa-refresh"></i></a>
														</div>
													</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>

		<c:forEach var="product01" items='${products}' begin="6" end="6">
			<div class="col-md-3 col-sm-12">

				<div class="cosmetc_area">
					<div class="cosmatics_heading">
						<h3 class="cosmatics_products">
							<i class="fa fa-tags"></i> <span>熱銷商品</span>
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
										<a
											href="<spring:url value='productById02?pId=${product01.pId}'/>">
											<img class="primary-img"
											src="data:image/jpg;base64,${product01.base64Image}" alt="">
											<img class="secondary-img"
											src="data:image/jpg;base64,${product01.base64Image1}" alt="">
										</a>
									</div>

									<div class="product_content">
										<div class="usal_pro usal_pro_eb">
											<div class="product_name_2">
												<h2>
													<a href="#">${product01.pname}</a>
												</h2>
											</div>
											<div class="product_price">
												<div class="price_rating">
													<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
														class="fa fa-star"></i></a> <a href="#"> <i
														class="fa fa-star"></i>
													</a> <a href="#"><i class="fa fa-star"></i> </a> <a
														class="not-rated" href="#"> <i class="fa fa-star-o"
														aria-hidden="true"></i>
													</a>
												</div>
											</div>
											<div class="price_box price_box_dgr">
												<span class="old- price">商品價錢 : ${product01.price}</span>

											</div>
											<div class="count-down-area">
												<div style="float: left; margin-left: 30px;">
													<span id=demo></span>
													<p>Days</p>
												</div>
												<div style="float: left; margin-left: 30px;">
													<span id=demo1></span>
													<p>Hour</p>
												</div>
												<div style="float: left; margin-left: 30px;">
													<span id=demo2></span>
													<p>Min</p>
												</div>
												<div style="float: left; margin-left: 30px;">
													<span id=demo3></span>
													<p>Sec</p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
		</c:forEach>
		<c:forEach var="product01" items='${products}' begin="7" end="7">
			<div class="col-md-12">
				<div class="all-pros all-pros-8 animated fadeInUp">
					<div class="single_product_3 ">
						<span>sale</span>
					</div>
					<div class="sinle_pic">
						<a href="<spring:url value='productById02?pId=${product01.pId}'/>">
							<img class="primary-img"
							src="data:image/jpg;base64,${product01.base64Image}" alt="">
							<img class="secondary-img"
							src="data:image/jpg;base64,${product01.base64Image1}" alt="">
						</a>
					</div>

					<div class="product_content">
						<div class="usal_pro usal_pro_eb">
							<div class="product_name_2">
								<h2>
									<a href="#">${product01.pname}</a>
								</h2>
							</div>
							<div class="product_price">
								<div class="price_rating">
									<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
										class="fa fa-star"></i></a> <a href="#"> <i class="fa fa-star"></i>
									</a> <a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
										class="fa fa-star"></i> </a>
								</div>
							</div>
							<div class="price_box price_box_dgr">
								<span class="old- price">商品價錢 : ${product01.price}</span>
							</div>
							<div class="count-down-area">
								<div style="float: left; margin-left: 30px;">
									<span id=demo4></span>
									<p>Days</p>
								</div>
								<div style="float: left; margin-left: 30px;">
									<span id=demo5></span>
									<p>Hour</p>
								</div>
								<div style="float: left; margin-left: 30px;">
									<span id=demo6></span>
									<p>Min</p>
								</div>
								<div style="float: left; margin-left: 30px;">
									<span id=demo7></span>
									<p>Sec</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
		<c:forEach var="product01" items='${products}' begin="8" end="8">
			<div class="col-md-12">
				<div class="all-pros all-pros-8 animated fadeInUp">
					<div class="single_product_3 ">
						<span>sale</span>
					</div>
					<div class="sinle_pic">
						<a href="<spring:url value='productById02?pId=${product01.pId}'/>">
							<img class="primary-img"
							src="data:image/jpg;base64,${product01.base64Image}" alt="">
							<img class="secondary-img"
							src="data:image/jpg;base64,${product01.base64Image1}" alt="">
						</a>
					</div>

					<div class="product_content">
						<div class="usal_pro usal_pro_eb">
							<div class="product_name_2">
								<h2>
									<a href="#">${product01.pname}</a>
								</h2>
							</div>
							<div class="product_price">
								<div class="price_rating">
									<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
										class="fa fa-star"></i></a> <a href="#"> <i class="fa fa-star"></i>
									</a> <a href="#"><i class="fa fa-star"></i> </a> <a
										class="not-rated" href="#"> <i class="fa fa-star-o"
										aria-hidden="true"></i>
									</a>
								</div>
							</div>
							<div class="price_box price_box_dgr">
								<span class="old- price">商品價錢 : ${product01.price}</span>
							</div>
							<div class="count-down-area">
								<div style="float: left; margin-left: 30px;">
									<span id=demo8></span>
									<p>Days</p>
								</div>
								<div style="float: left; margin-left: 30px;">
									<span id=demo9></span>
									<p>Hour</p>
								</div>
								<div style="float: left; margin-left: 30px;">
									<span id=demo10></span>
									<p>Min</p>
								</div>
								<div style="float: left; margin-left: 30px;">
									<span id=demo11></span>
									<p>Sec</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

		</c:forEach>
	</section>

	<!--product area end-->
	<!--plus area start-->
	<div class="plus_area">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<div class="plus_pic">
						<div class="pix_new">
							<a href="#"> <img
								src="<c:url value="/images/differ-pic/1.jpg" />" alt="">
							</a>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="plus_pic">
						<div class="pix_new">
							<a class="#" href="#"> <img
								src="<c:url value="/images/differ-pic/differ_pic_5.jpg" />"
								alt="">
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--plus area end-->
	<!--product catagory area start-->
	<div class="catagory_area">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="visible_product">
						<div class="new_product">
							<div class="product_heading">
								<i class="fa fa-star"></i> <span>男性專區</span>
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
							<li role="presentation" class="active"><a href="#home"
								aria-controls="home" role="tab" data-toggle="tab">Electronics</a></li>
							<li role="presentation"><a href="#profile"
								aria-controls="profile" role="tab" data-toggle="tab">Accessories</a></li>
							<li role="presentation"><a href="#messages"
								aria-controls="messages" role="tab" data-toggle="tab">Headlight</a></li>
						</ul>
						<!-- Tab panes -->
						<div class="tab-content">
							<div role="tabpanel" class="tab-pane active" id="home">
								<div class="row">
									<div class="feature-carousel indicator-brand-3">

										<c:forEach var="product01" items='${products}' begin="9"
											end="9">
											<div class="col-md-12">
												<div class="all-pros animated fadeInUp">
													<div class="single_product">
														<span>New</span>
													</div>
													<div class="sinle_pic">
														<a
															href="<spring:url value='productById02?pId=${product01.pId}'/>">
															<img class="primary-img"
															src="data:image/jpg;base64,${product01.base64Image}"
															alt=""> <img class="secondary-img"
															src="data:image/jpg;base64,${product01.base64Image1}"
															alt="">
														</a>
													</div>

													<div class="product_content">
														<div class="usal_pro">
															<div class="product_name_2">
																<h2>
																	<a href="#">${product01.pname}</a>
																</h2>
															</div>
															<div class="product_price">
																<div class="price_rating">
																	<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
																		class="fa fa-star"></i></a> <a href="#"> <i
																		class="fa fa-star"></i>
																	</a> <a class="not-rated" href="#"> <i
																		class="fa fa-star-o"></i>
																	</a> <a class="not-rated" href="#"> <i
																		class="fa fa-star-o"></i>
																	</a>
																</div>
															</div>
															<div class="price_box">
																<span class="spical-price"> 商品價錢 :
																	${product01.price}</span>
															</div>
															<div class="last_button_area">
																<ul class="add-to-links clearfix">
																	<li class="addwishlist">
																		<div class="yith-wcwl-add-button show">
																			<a class="add_to_wishlist" href="" rel="nofollow"
																				data-product-id="45" data-product-type="external"
																				data-toggle="tooltip" title=""
																				data-original-title="Add to Wishlist"><i
																				class="fa fa-heart"></i></a>
																		</div>
																	</li>
																	<li>
																		<div class="new_act">
																			<a class="button_act" data-quick-id="45"
																				href="<spring:url value='productById02?pId=${product01.pId}'/>"
																				title="" data-toggle="tooltip"
																				data-original-title="Donec non est at">詳細頁面</a>
																		</div>
																	</li>
																	<li class="addcompare">
																		<div
																			class="woocommerce product                                               compare-button">
																			<a class="compare button" href=""
																				data-product_id="45" rel="nofollow"
																				data-toggle="tooltip" title=""
																				data-original-title="Compare"><i
																				class="fa fa-refresh"></i></a>
																		</div>
																	</li>
																</ul>
															</div>
														</div>
													</div>
												</div>
											</div>
										</c:forEach>

										<c:forEach var="product01" items='${products}' begin="10"
											end="10">
											<div class="col-md-12">
												<div class="all-pros animated fadeInUp">
													<div class="single_product">
														<span>New</span>
													</div>
													<div class="sinle_pic">
														<a
															href="<spring:url value='productById02?pId=${product01.pId}'/>">
															<img class="primary-img"
															src="data:image/jpg;base64,${product01.base64Image}"
															alt=""> <img class="secondary-img"
															src="data:image/jpg;base64,${product01.base64Image1}"
															alt="">
														</a>
													</div>

													<div class="product_content">
														<div class="usal_pro">
															<div class="product_name_2">
																<h2>
																	<a href="#">${product01.pname}</a>
																</h2>
															</div>
															<div class="product_price">
																<div class="price_rating">
																	<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
																		class="fa fa-star"></i></a> <a href="#"> <i
																		class="fa fa-star"></i>
																	</a> <a class="not-rated" href="#"> <i
																		class="fa fa-star-o"></i>
																	</a> <a class="not-rated" href="#"> <i
																		class="fa fa-star-o"></i>
																	</a>
																</div>
															</div>
															<div class="price_box">
																<span class="spical-price"> 商品價錢 :
																	${product01.price}</span>
															</div>
															<div class="last_button_area">
																<ul class="add-to-links clearfix">
																	<li class="addwishlist">
																		<div class="yith-wcwl-add-button show">
																			<a class="add_to_wishlist" href="" rel="nofollow"
																				data-product-id="45" data-product-type="external"
																				data-toggle="tooltip" title=""
																				data-original-title="Add to Wishlist"><i
																				class="fa fa-heart"></i></a>
																		</div>
																	</li>
																	<li>
																		<div class="new_act">
																			<a class="button_act" data-quick-id="45"
																				href="<spring:url value='productById02?pId=${product01.pId}'/>"
																				title="" data-toggle="tooltip"
																				data-original-title="Donec non est at">詳細頁面</a>
																		</div>
																	</li>
																	<li class="addcompare">
																		<div
																			class="woocommerce product                                               compare-button">
																			<a class="compare button" href=""
																				data-product_id="45" rel="nofollow"
																				data-toggle="tooltip" title=""
																				data-original-title="Compare"><i
																				class="fa fa-refresh"></i></a>
																		</div>
																	</li>
																</ul>
															</div>
														</div>
													</div>
												</div>
											</div>
										</c:forEach>
										<c:forEach var="product01" items='${products}' begin="11"
											end="11">
											<div class="col-md-12">
												<div class="all-pros animated fadeInUp">
													<div class="single_product">
														<span>New</span>
													</div>
													<div class="sinle_pic">
														<a
															href="<spring:url value='productById02?pId=${product01.pId}'/>">
															<img class="primary-img"
															src="data:image/jpg;base64,${product01.base64Image}"
															alt=""> <img class="secondary-img"
															src="data:image/jpg;base64,${product01.base64Image1}"
															alt="">
														</a>
													</div>

													<div class="product_content">
														<div class="usal_pro">
															<div class="product_name_2">
																<h2>
																	<a href="#">${product01.pname}</a>
																</h2>
															</div>
															<div class="product_price">
																<div class="price_rating">
																	<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
																		class="fa fa-star"></i></a> <a href="#"> <i
																		class="fa fa-star"></i>
																	</a> <a class="not-rated" href="#"> <i
																		class="fa fa-star-o"></i>
																	</a> <a class="not-rated" href="#"> <i
																		class="fa fa-star-o"></i>
																	</a>
																</div>
															</div>
															<div class="price_box">
																<span class="spical-price"> 商品價錢 :
																	${product01.price}</span>
															</div>
															<div class="last_button_area">
																<ul class="add-to-links clearfix">
																	<li class="addwishlist">
																		<div class="yith-wcwl-add-button show">
																			<a class="add_to_wishlist" href="" rel="nofollow"
																				data-product-id="45" data-product-type="external"
																				data-toggle="tooltip" title=""
																				data-original-title="Add to Wishlist"><i
																				class="fa fa-heart"></i></a>
																		</div>
																	</li>
																	<li>
																		<div class="new_act">
																			<a class="button_act" data-quick-id="45"
																				href="<spring:url value='productById02?pId=${product01.pId}'/>"
																				title="" data-toggle="tooltip"
																				data-original-title="Donec non est at">詳細頁面</a>
																		</div>
																	</li>
																	<li class="addcompare">
																		<div
																			class="woocommerce product                                               compare-button">
																			<a class="compare button" href=""
																				data-product_id="45" rel="nofollow"
																				data-toggle="tooltip" title=""
																				data-original-title="Compare"><i
																				class="fa fa-refresh"></i></a>
																		</div>
																	</li>
																</ul>
															</div>
														</div>
													</div>
												</div>
											</div>
										</c:forEach>
										<c:forEach var="product01" items='${products}' begin="12"
											end="12">
											<div class="col-md-12">
												<div class="all-pros animated fadeInUp">
													<div class="single_product">
														<span>New</span>
													</div>
													<div class="sinle_pic">
														<a
															href="<spring:url value='productById02?pId=${product01.pId}'/>">
															<img class="primary-img"
															src="data:image/jpg;base64,${product01.base64Image}"
															alt=""> <img class="secondary-img"
															src="data:image/jpg;base64,${product01.base64Image1}"
															alt="">
														</a>
													</div>

													<div class="product_content">
														<div class="usal_pro">
															<div class="product_name_2">
																<h2>
																	<a href="#">${product01.pname}</a>
																</h2>
															</div>
															<div class="product_price">
																<div class="price_rating">
																	<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
																		class="fa fa-star"></i></a> <a href="#"> <i
																		class="fa fa-star"></i>
																	</a> <a class="not-rated" href="#"> <i
																		class="fa fa-star-o"></i>
																	</a> <a class="not-rated" href="#"> <i
																		class="fa fa-star-o"></i>
																	</a>
																</div>
															</div>
															<div class="price_box">
																<span class="spical-price"> 商品價錢 :
																	${product01.price}</span>
															</div>
															<div class="last_button_area">
																<ul class="add-to-links clearfix">
																	<li class="addwishlist">
																		<div class="yith-wcwl-add-button show">
																			<a class="add_to_wishlist" href="" rel="nofollow"
																				data-product-id="45" data-product-type="external"
																				data-toggle="tooltip" title=""
																				data-original-title="Add to Wishlist"><i
																				class="fa fa-heart"></i></a>
																		</div>
																	</li>
																	<li>
																		<div class="new_act">
																			<a class="button_act" data-quick-id="45"
																				href="<spring:url value='productById02?pId=${product01.pId}'/>"
																				title="" data-toggle="tooltip"
																				data-original-title="Donec non est at">詳細頁面</a>
																		</div>
																	</li>
																	<li class="addcompare">
																		<div
																			class="woocommerce product                                               compare-button">
																			<a class="compare button" href=""
																				data-product_id="45" rel="nofollow"
																				data-toggle="tooltip" title=""
																				data-original-title="Compare"><i
																				class="fa fa-refresh"></i></a>
																		</div>
																	</li>
																</ul>
															</div>
														</div>
													</div>
												</div>
											</div>
										</c:forEach>
										<c:forEach var="product01" items='${products}' begin="13"
											end="13">
											<div class="col-md-12">
												<div class="all-pros animated fadeInUp">
													<div class="single_product">
														<span>New</span>
													</div>
													<div class="sinle_pic">
														<a
															href="<spring:url value='productById02?pId=${product01.pId}'/>">
															<img class="primary-img"
															src="data:image/jpg;base64,${product01.base64Image}"
															alt=""> <img class="secondary-img"
															src="data:image/jpg;base64,${product01.base64Image1}"
															alt="">
														</a>
													</div>

													<div class="product_content">
														<div class="usal_pro">
															<div class="product_name_2">
																<h2>
																	<a href="#">${product01.pname}</a>
																</h2>
															</div>
															<div class="product_price">
																<div class="price_rating">
																	<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
																		class="fa fa-star"></i></a> <a href="#"> <i
																		class="fa fa-star"></i>
																	</a> <a class="not-rated" href="#"> <i
																		class="fa fa-star-o"></i>
																	</a> <a class="not-rated" href="#"> <i
																		class="fa fa-star-o"></i>
																	</a>
																</div>
															</div>
															<div class="price_box">
																<span class="spical-price"> 商品價錢 :
																	${product01.price}</span>
															</div>
															<div class="last_button_area">
																<ul class="add-to-links clearfix">
																	<li class="addwishlist">
																		<div class="yith-wcwl-add-button show">
																			<a class="add_to_wishlist" href="" rel="nofollow"
																				data-product-id="45" data-product-type="external"
																				data-toggle="tooltip" title=""
																				data-original-title="Add to Wishlist"><i
																				class="fa fa-heart"></i></a>
																		</div>
																	</li>
																	<li>
																		<div class="new_act">
																			<a class="button_act" data-quick-id="45"
																				href="<spring:url value='productById02?pId=${product01.pId}'/>"
																				title="" data-toggle="tooltip"
																				data-original-title="Donec non est at">詳細頁面</a>
																		</div>
																	</li>
																	<li class="addcompare">
																		<div
																			class="woocommerce product                                               compare-button">
																			<a class="compare button" href=""
																				data-product_id="45" rel="nofollow"
																				data-toggle="tooltip" title=""
																				data-original-title="Compare"><i
																				class="fa fa-refresh"></i></a>
																		</div>
																	</li>
																</ul>
															</div>
														</div>
													</div>
												</div>
											</div>
										</c:forEach>
										<c:forEach var="product01" items='${products}' begin="14"
											end="14">
											<div class="col-md-12">
												<div class="all-pros animated fadeInUp">
													<div class="single_product">
														<span>New</span>
													</div>
													<div class="sinle_pic">
														<a
															href="<spring:url value='productById02?pId=${product01.pId}'/>">
															<img class="primary-img"
															src="data:image/jpg;base64,${product01.base64Image}"
															alt=""> <img class="secondary-img"
															src="data:image/jpg;base64,${product01.base64Image1}"
															alt="">
														</a>
													</div>

													<div class="product_content">
														<div class="usal_pro">
															<div class="product_name_2">
																<h2>
																	<a href="#">${product01.pname}</a>
																</h2>
															</div>
															<div class="product_price">
																<div class="price_rating">
																	<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
																		class="fa fa-star"></i></a> <a href="#"> <i
																		class="fa fa-star"></i>
																	</a> <a class="not-rated" href="#"> <i
																		class="fa fa-star-o"></i>
																	</a> <a class="not-rated" href="#"> <i
																		class="fa fa-star-o"></i>
																	</a>
																</div>
															</div>
															<div class="price_box">
																<span class="spical-price"> 商品價錢 :
																	${product01.price}</span>
															</div>
															<div class="last_button_area">
																<ul class="add-to-links clearfix">
																	<li class="addwishlist">
																		<div class="yith-wcwl-add-button show">
																			<a class="add_to_wishlist" href="" rel="nofollow"
																				data-product-id="45" data-product-type="external"
																				data-toggle="tooltip" title=""
																				data-original-title="Add to Wishlist"><i
																				class="fa fa-heart"></i></a>
																		</div>
																	</li>
																	<li>
																		<div class="new_act">
																			<a class="button_act" data-quick-id="45"
																				href="<spring:url value='productById02?pId=${product01.pId}'/>"
																				title="" data-toggle="tooltip"
																				data-original-title="Donec non est at">詳細頁面</a>
																		</div>
																	</li>
																	<li class="addcompare">
																		<div
																			class="woocommerce product                                               compare-button">
																			<a class="compare button" href=""
																				data-product_id="45" rel="nofollow"
																				data-toggle="tooltip" title=""
																				data-original-title="Compare"><i
																				class="fa fa-refresh"></i></a>
																		</div>
																	</li>
																</ul>
															</div>
														</div>
													</div>
												</div>
											</div>
										</c:forEach>
									</div>
								</div>
							</div>

							<c:forEach var="product01" items='${products}' begin="15"
								end="15">
								<div role="tabpanel" class="tab-pane" id="profile">
									<div class="row">
										<div class="feature-carousel indicator-brand-3">
											<div class="col-md-12">
												<div class="all-pros all-pros-2 animated fadeInUp">
													<div class="single_product">
														<span>New</span>
													</div>
													<div class="sinle_pic">
														<a
															href="<spring:url value='productById02?pId=${product01.pId}'/>">
															<img class="primary-img"
															src="data:image/jpg;base64,${product01.base64Image}"
															alt=""> <img class="secondary-img"
															src="data:image/jpg;base64,${product01.base64Image1}"
															alt="">
														</a>
													</div>

													<div class="product_content">
														<div class="usal_pro">
															<div class="product_name_2">
																<h2>
																	<a href="#">${product01.pname}</a>
																</h2>
															</div>
															<div class="product_price">
																<div class="price_rating">
																	<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
																		class="fa fa-star"></i></a> <a href="#"> <i
																		class="fa fa-star"></i>
																	</a> <a href="#"><i class="fa fa-star"></i> </a> <a
																		class="not-rated" href="#"> <i
																		class="fa fa-star-o" aria-hidden="true"></i>
																	</a>
																</div>
															</div>
															<div class="price_box">
																<span class="spical-price">商品價錢 :
																	${product01.price}</span>
															</div>
															<div class="last_button_area">
																<ul class="add-to-links clearfix">
																	<li class="addwishlist">
																		<div class="yith-wcwl-add-button show">
																			<a class="add_to_wishlist" href="" rel="nofollow"
																				data-product-id="45" data-product-type="external"
																				data-toggle="tooltip" title=""
																				data-original-title="Add to Wishlist"><i
																				class="fa fa-heart"></i></a>
																		</div>
																	</li>
																	<li>
																		<div class="new_act">
																			<a class="button_act" data-quick-id="45"
																				href="<spring:url value='productById02?pId=${product01.pId}'/>"
																				title="" data-toggle="tooltip"
																				data-original-title="Donec non est at">詳細頁面</a>
																		</div>
																	</li>
																	<li class="addcompare">
																		<div class="woocommerce product compare-button">
																			<a class="compare button" href=""
																				data-product_id="45" rel="nofollow"
																				data-toggle="tooltip" title=""
																				data-original-title="Compare"><i
																				class="fa fa-refresh"></i></a>
																		</div>
																	</li>
																</ul>
															</div>
														</div>
													</div>
												</div>
											</div>
							</c:forEach>
							<c:forEach var="product01" items='${products}' begin="16"
								end="16">
								<div class="col-md-12">
									<div class="all-pros all-pros-3 animated fadeInUp">
										<div class="single_product">
											<span>New</span>
										</div>
										<div class="sinle_pic">
											<a
												href="<spring:url value='productById02?pId=${product01.pId}'/>">
												<img class="primary-img"
												src="data:image/jpg;base64,${product01.base64Image}" alt="">
												<img class="secondary-img"
												src="data:image/jpg;base64,${product01.base64Image1}" alt="">
											</a>
										</div>

										<div class="product_content">
											<div class="usal_pro">
												<div class="product_name_2">
													<h2>
														<a href="#">${product01.pname}</a>
													</h2>
												</div>
												<div class="product_price">
													<div class="price_rating">
														<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
															class="fa fa-star"></i></a> <a href="#"> <i
															class="fa fa-star"></i>
														</a> <a class="not-rated" href="#"> <i
															class="fa fa-star-o" aria-hidden="true"></i>
														</a> <a class="not-rated" href="#"> <i
															class="fa fa-star-o" aria-hidden="true"></i>
														</a>
													</div>
												</div>
												<div class="price_box">
													<span class="spical-price">商品價錢 : ${product01.price}</span>
												</div>
												<div class="last_button_area">
													<ul class="add-to-links clearfix">
														<li class="addwishlist">
															<div class="yith-wcwl-add-button show">
																<a class="add_to_wishlist" href="" rel="nofollow"
																	data-product-id="45" data-product-type="external"
																	data-toggle="tooltip" title=""
																	data-original-title="Add to Wishlist"><i
																	class="fa fa-heart"></i></a>
															</div>
														</li>
														<li>
															<div class="new_act">
																<a class="button_act" data-quick-id="45"
																	href="<spring:url value='productById02?pId=${product01.pId}'/>"
																	title="" data-toggle="tooltip"
																	data-original-title="Donec non est at">詳細頁面</a>
															</div>
														</li>
														<li class="addcompare">
															<div class="woocommerce product compare-button">
																<a class="compare button" href="" data-product_id="45"
																	rel="nofollow" data-toggle="tooltip" title=""
																	data-original-title="Compare"><i
																	class="fa fa-refresh"></i></a>
															</div>
														</li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>
							<c:forEach var="product01" items='${products}' begin="17"
								end="17">
								<div class="col-md-12">
									<div class="all-pros all-pros-3 animated fadeInUp">
										<div class="single_product">
											<span>New</span>
										</div>
										<div class="sinle_pic">
											<a
												href="<spring:url value='productById02?pId=${product01.pId}'/>">
												<img class="primary-img"
												src="data:image/jpg;base64,${product01.base64Image}" alt="">
												<img class="secondary-img"
												src="data:image/jpg;base64,${product01.base64Image1}" alt="">
											</a>
										</div>

										<div class="product_content">
											<div class="usal_pro">
												<div class="product_name_2">
													<h2>
														<a href="#">${product01.pname}</a>
													</h2>
												</div>
												<div class="product_price">
													<div class="price_rating">
														<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
															class="fa fa-star"></i></a> <a href="#"> <i
															class="fa fa-star"></i>
														</a> <a class="not-rated" href="#"> <i
															class="fa fa-star-o" aria-hidden="true"></i>
														</a> <a class="not-rated" href="#"> <i
															class="fa fa-star-o" aria-hidden="true"></i>
														</a>
													</div>
												</div>
												<div class="price_box">
													<span class="spical-price">商品價錢 : ${product01.price}</span>
												</div>
												<div class="last_button_area">
													<ul class="add-to-links clearfix">
														<li class="addwishlist">
															<div class="yith-wcwl-add-button show">
																<a class="add_to_wishlist" href="" rel="nofollow"
																	data-product-id="45" data-product-type="external"
																	data-toggle="tooltip" title=""
																	data-original-title="Add to Wishlist"><i
																	class="fa fa-heart"></i></a>
															</div>
														</li>
														<li>
															<div class="new_act">
																<a class="button_act" data-quick-id="45"
																	href="<spring:url value='productById02?pId=${product01.pId}'/>"
																	title="" data-toggle="tooltip"
																	data-original-title="Donec non est at">詳細頁面</a>
															</div>
														</li>
														<li class="addcompare">
															<div class="woocommerce product compare-button">
																<a class="compare button" href="" data-product_id="45"
																	rel="nofollow" data-toggle="tooltip" title=""
																	data-original-title="Compare"><i
																	class="fa fa-refresh"></i></a>
															</div>
														</li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>
							<c:forEach var="product01" items='${products}' begin="18"
								end="18">
								<div class="col-md-12">
									<div class="all-pros all-pros-3 animated fadeInUp">
										<div class="single_product">
											<span>New</span>
										</div>
										<div class="sinle_pic">
											<a
												href="<spring:url value='productById02?pId=${product01.pId}'/>">
												<img class="primary-img"
												src="data:image/jpg;base64,${product01.base64Image}" alt="">
												<img class="secondary-img"
												src="data:image/jpg;base64,${product01.base64Image1}" alt="">
											</a>
										</div>

										<div class="product_content">
											<div class="usal_pro">
												<div class="product_name_2">
													<h2>
														<a href="#">${product01.pname}</a>
													</h2>
												</div>
												<div class="product_price">
													<div class="price_rating">
														<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
															class="fa fa-star"></i></a> <a href="#"> <i
															class="fa fa-star"></i>
														</a> <a class="not-rated" href="#"> <i
															class="fa fa-star-o" aria-hidden="true"></i>
														</a> <a class="not-rated" href="#"> <i
															class="fa fa-star-o" aria-hidden="true"></i>
														</a>
													</div>
												</div>
												<div class="price_box">
													<span class="spical-price">商品價錢 : ${product01.price}</span>
												</div>
												<div class="last_button_area">
													<ul class="add-to-links clearfix">
														<li class="addwishlist">
															<div class="yith-wcwl-add-button show">
																<a class="add_to_wishlist" href="" rel="nofollow"
																	data-product-id="45" data-product-type="external"
																	data-toggle="tooltip" title=""
																	data-original-title="Add to Wishlist"><i
																	class="fa fa-heart"></i></a>
															</div>
														</li>
														<li>
															<div class="new_act">
																<a class="button_act" data-quick-id="45"
																	href="<spring:url value='productById02?pId=${product01.pId}'/>"
																	title="" data-toggle="tooltip"
																	data-original-title="Donec non est at">詳細頁面</a>
															</div>
														</li>
														<li class="addcompare">
															<div class="woocommerce product compare-button">
																<a class="compare button" href="" data-product_id="45"
																	rel="nofollow" data-toggle="tooltip" title=""
																	data-original-title="Compare"><i
																	class="fa fa-refresh"></i></a>
															</div>
														</li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>
							<c:forEach var="product01" items='${products}' begin="19"
								end="19">
								<div class="col-md-12">
									<div class="all-pros all-pros-3 animated fadeInUp">
										<div class="single_product">
											<span>New</span>
										</div>
										<div class="sinle_pic">
											<a
												href="<spring:url value='productById02?pId=${product01.pId}'/>">
												<img class="primary-img"
												src="data:image/jpg;base64,${product01.base64Image}" alt="">
												<img class="secondary-img"
												src="data:image/jpg;base64,${product01.base64Image1}" alt="">
											</a>
										</div>

										<div class="product_content">
											<div class="usal_pro">
												<div class="product_name_2">
													<h2>
														<a href="#">${product01.pname}</a>
													</h2>
												</div>
												<div class="product_price">
													<div class="price_rating">
														<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
															class="fa fa-star"></i></a> <a href="#"> <i
															class="fa fa-star"></i>
														</a> <a class="not-rated" href="#"> <i
															class="fa fa-star-o" aria-hidden="true"></i>
														</a> <a class="not-rated" href="#"> <i
															class="fa fa-star-o" aria-hidden="true"></i>
														</a>
													</div>
												</div>
												<div class="price_box">
													<span class="spical-price">商品價錢 : ${product01.price}</span>
												</div>
												<div class="last_button_area">
													<ul class="add-to-links clearfix">
														<li class="addwishlist">
															<div class="yith-wcwl-add-button show">
																<a class="add_to_wishlist" href="" rel="nofollow"
																	data-product-id="45" data-product-type="external"
																	data-toggle="tooltip" title=""
																	data-original-title="Add to Wishlist"><i
																	class="fa fa-heart"></i></a>
															</div>
														</li>
														<li>
															<div class="new_act">
																<a class="button_act" data-quick-id="45"
																	href="<spring:url value='productById02?pId=${product01.pId}'/>"
																	title="" data-toggle="tooltip"
																	data-original-title="Donec non est at">詳細頁面</a>
															</div>
														</li>
														<li class="addcompare">
															<div class="woocommerce product compare-button">
																<a class="compare button" href="" data-product_id="45"
																	rel="nofollow" data-toggle="tooltip" title=""
																	data-original-title="Compare"><i
																	class="fa fa-refresh"></i></a>
															</div>
														</li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>
							<c:forEach var="product01" items='${products}' begin="20"
								end="20">
								<div class="col-md-12">
									<div class="all-pros all-pros-3 animated fadeInUp">
										<div class="single_product">
											<span>New</span>
										</div>
										<div class="sinle_pic">
											<a
												href="<spring:url value='productById02?pId=${product01.pId}'/>">
												<img class="primary-img"
												src="data:image/jpg;base64,${product01.base64Image}" alt="">
												<img class="secondary-img"
												src="data:image/jpg;base64,${product01.base64Image1}" alt="">
											</a>
										</div>

										<div class="product_content">
											<div class="usal_pro">
												<div class="product_name_2">
													<h2>
														<a href="#">${product01.pname}</a>
													</h2>
												</div>
												<div class="product_price">
													<div class="price_rating">
														<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
															class="fa fa-star"></i></a> <a href="#"> <i
															class="fa fa-star"></i>
														</a> <a class="not-rated" href="#"> <i
															class="fa fa-star-o" aria-hidden="true"></i>
														</a> <a class="not-rated" href="#"> <i
															class="fa fa-star-o" aria-hidden="true"></i>
														</a>
													</div>
												</div>
												<div class="price_box">
													<span class="spical-price">商品價錢 : ${product01.price}</span>
												</div>
												<div class="last_button_area">
													<ul class="add-to-links clearfix">
														<li class="addwishlist">
															<div class="yith-wcwl-add-button show">
																<a class="add_to_wishlist" href="" rel="nofollow"
																	data-product-id="45" data-product-type="external"
																	data-toggle="tooltip" title=""
																	data-original-title="Add to Wishlist"><i
																	class="fa fa-heart"></i></a>
															</div>
														</li>
														<li>
															<div class="new_act">
																<a class="button_act" data-quick-id="45"
																	href="<spring:url value='productById02?pId=${product01.pId}'/>"
																	title="" data-toggle="tooltip"
																	data-original-title="Donec non est at">詳細頁面</a>
															</div>
														</li>
														<li class="addcompare">
															<div class="woocommerce product compare-button">
																<a class="compare button" href="" data-product_id="45"
																	rel="nofollow" data-toggle="tooltip" title=""
																	data-original-title="Compare"><i
																	class="fa fa-refresh"></i></a>
															</div>
														</li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>
							<c:forEach var="product01" items='${products}' begin="21"
								end="21">
								<div class="col-md-12">
									<div class="all-pros all-pros-3 animated fadeInUp">
										<div class="single_product">
											<span>New</span>
										</div>
										<div class="sinle_pic">
											<a
												href="<spring:url value='productById02?pId=${product01.pId}'/>">
												<img class="primary-img"
												src="data:image/jpg;base64,${product01.base64Image}" alt="">
												<img class="secondary-img"
												src="data:image/jpg;base64,${product01.base64Image1}" alt="">
											</a>
										</div>

										<div class="product_content">
											<div class="usal_pro">
												<div class="product_name_2">
													<h2>
														<a href="#">${product01.pname}</a>
													</h2>
												</div>
												<div class="product_price">
													<div class="price_rating">
														<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
															class="fa fa-star"></i></a> <a href="#"> <i
															class="fa fa-star"></i>
														</a> <a class="not-rated" href="#"> <i
															class="fa fa-star-o" aria-hidden="true"></i>
														</a> <a class="not-rated" href="#"> <i
															class="fa fa-star-o" aria-hidden="true"></i>
														</a>
													</div>
												</div>
												<div class="price_box">
													<span class="spical-price">商品價錢 : ${product01.price}</span>
												</div>
												<div class="last_button_area">
													<ul class="add-to-links clearfix">
														<li class="addwishlist">
															<div class="yith-wcwl-add-button show">
																<a class="add_to_wishlist" href="" rel="nofollow"
																	data-product-id="45" data-product-type="external"
																	data-toggle="tooltip" title=""
																	data-original-title="Add to Wishlist"><i
																	class="fa fa-heart"></i></a>
															</div>
														</li>
														<li>
															<div class="new_act">
																<a class="button_act" data-quick-id="45"
																	href="<spring:url value='productById02?pId=${product01.pId}'/>"
																	title="" data-toggle="tooltip"
																	data-original-title="Donec non est at">詳細頁面</a>
															</div>
														</li>
														<li class="addcompare">
															<div class="woocommerce product compare-button">
																<a class="compare button" href="" data-product_id="45"
																	rel="nofollow" data-toggle="tooltip" title=""
																	data-original-title="Compare"><i
																	class="fa fa-refresh"></i></a>
															</div>
														</li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>
							<c:forEach var="product01" items='${products}' begin="22"
								end="22">
								<div class="col-md-12">
									<div class="all-pros all-pros-3 animated fadeInUp">
										<div class="single_product">
											<span>New</span>
										</div>
										<div class="sinle_pic">
											<a
												href="<spring:url value='productById02?pId=${product01.pId}'/>">
												<img class="primary-img"
												src="data:image/jpg;base64,${product01.base64Image}" alt="">
												<img class="secondary-img"
												src="data:image/jpg;base64,${product01.base64Image1}" alt="">
											</a>
										</div>

										<div class="product_content">
											<div class="usal_pro">
												<div class="product_name_2">
													<h2>
														<a href="#">${product01.pname}</a>
													</h2>
												</div>
												<div class="product_price">
													<div class="price_rating">
														<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
															class="fa fa-star"></i></a> <a href="#"> <i
															class="fa fa-star"></i>
														</a> <a class="not-rated" href="#"> <i
															class="fa fa-star-o" aria-hidden="true"></i>
														</a> <a class="not-rated" href="#"> <i
															class="fa fa-star-o" aria-hidden="true"></i>
														</a>
													</div>
												</div>
												<div class="price_box">
													<span class="spical-price">商品價錢 : ${product01.price}</span>
												</div>
												<div class="last_button_area">
													<ul class="add-to-links clearfix">
														<li class="addwishlist">
															<div class="yith-wcwl-add-button show">
																<a class="add_to_wishlist" href="" rel="nofollow"
																	data-product-id="45" data-product-type="external"
																	data-toggle="tooltip" title=""
																	data-original-title="Add to Wishlist"><i
																	class="fa fa-heart"></i></a>
															</div>
														</li>
														<li>
															<div class="new_act">
																<a class="button_act" data-quick-id="45"
																	href="<spring:url value='productById02?pId=${product01.pId}'/>"
																	title="" data-toggle="tooltip"
																	data-original-title="Donec non est at">詳細頁面</a>
															</div>
														</li>
														<li class="addcompare">
															<div class="woocommerce product compare-button">
																<a class="compare button" href="" data-product_id="45"
																	rel="nofollow" data-toggle="tooltip" title=""
																	data-original-title="Compare"><i
																	class="fa fa-refresh"></i></a>
															</div>
														</li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>
							<c:forEach var="product01" items='${products}' begin="23"
								end="23">
								<div class="col-md-12">
									<div class="all-pros all-pros-3 animated fadeInUp">
										<div class="single_product">
											<span>New</span>
										</div>
										<div class="sinle_pic">
											<a
												href="<spring:url value='productById02?pId=${product01.pId}'/>">
												<img class="primary-img"
												src="data:image/jpg;base64,${product01.base64Image}" alt="">
												<img class="secondary-img"
												src="data:image/jpg;base64,${product01.base64Image1}" alt="">
											</a>
										</div>

										<div class="product_content">
											<div class="usal_pro">
												<div class="product_name_2">
													<h2>
														<a href="#">${product01.pname}</a>
													</h2>
												</div>
												<div class="product_price">
													<div class="price_rating">
														<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
															class="fa fa-star"></i></a> <a href="#"> <i
															class="fa fa-star"></i>
														</a> <a class="not-rated" href="#"> <i
															class="fa fa-star-o" aria-hidden="true"></i>
														</a> <a class="not-rated" href="#"> <i
															class="fa fa-star-o" aria-hidden="true"></i>
														</a>
													</div>
												</div>
												<div class="price_box">
													<span class="spical-price">商品價錢 : ${product01.price}</span>
												</div>
												<div class="last_button_area">
													<ul class="add-to-links clearfix">
														<li class="addwishlist">
															<div class="yith-wcwl-add-button show">
																<a class="add_to_wishlist" href="" rel="nofollow"
																	data-product-id="45" data-product-type="external"
																	data-toggle="tooltip" title=""
																	data-original-title="Add to Wishlist"><i
																	class="fa fa-heart"></i></a>
															</div>
														</li>
														<li>
															<div class="new_act">
																<a class="button_act" data-quick-id="45"
																	href="<spring:url value='productById02?pId=${product01.pId}'/>"
																	title="" data-toggle="tooltip"
																	data-original-title="Donec non est at">詳細頁面</a>
															</div>
														</li>
														<li class="addcompare">
															<div class="woocommerce product compare-button">
																<a class="compare button" href="" data-product_id="45"
																	rel="nofollow" data-toggle="tooltip" title=""
																	data-original-title="Compare"><i
																	class="fa fa-refresh"></i></a>
															</div>
														</li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>
							<c:forEach var="product01" items='${products}' begin="24"
								end="24">
								<div class="col-md-12">
									<div class="all-pros all-pros-3 animated fadeInUp">
										<div class="single_product">
											<span>New</span>
										</div>
										<div class="sinle_pic">
											<a
												href="<spring:url value='productById02?pId=${product01.pId}'/>">
												<img class="primary-img"
												src="data:image/jpg;base64,${product01.base64Image}" alt="">
												<img class="secondary-img"
												src="data:image/jpg;base64,${product01.base64Image1}" alt="">
											</a>
										</div>

										<div class="product_content">
											<div class="usal_pro">
												<div class="product_name_2">
													<h2>
														<a href="#">${product01.pname}</a>
													</h2>
												</div>
												<div class="product_price">
													<div class="price_rating">
														<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
															class="fa fa-star"></i></a> <a href="#"> <i
															class="fa fa-star"></i>
														</a> <a class="not-rated" href="#"> <i
															class="fa fa-star-o" aria-hidden="true"></i>
														</a> <a class="not-rated" href="#"> <i
															class="fa fa-star-o" aria-hidden="true"></i>
														</a>
													</div>
												</div>
												<div class="price_box">
													<span class="spical-price">商品價錢 : ${product01.price}</span>
												</div>
												<div class="last_button_area">
													<ul class="add-to-links clearfix">
														<li class="addwishlist">
															<div class="yith-wcwl-add-button show">
																<a class="add_to_wishlist" href="" rel="nofollow"
																	data-product-id="45" data-product-type="external"
																	data-toggle="tooltip" title=""
																	data-original-title="Add to Wishlist"><i
																	class="fa fa-heart"></i></a>
															</div>
														</li>
														<li>
															<div class="new_act">
																<a class="button_act" data-quick-id="45"
																	href="<spring:url value='productById02?pId=${product01.pId}'/>"
																	title="" data-toggle="tooltip"
																	data-original-title="Donec non est at">詳細頁面</a>
															</div>
														</li>
														<li class="addcompare">
															<div class="woocommerce product compare-button">
																<a class="compare button" href="" data-product_id="45"
																	rel="nofollow" data-toggle="tooltip" title=""
																	data-original-title="Compare"><i
																	class="fa fa-refresh"></i></a>
															</div>
														</li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>
							<c:forEach var="product01" items='${products}' begin="25"
								end="25">
								<div class="col-md-12">
									<div class="all-pros all-pros-3 animated fadeInUp">
										<div class="single_product">
											<span>New</span>
										</div>
										<div class="sinle_pic">
											<a
												href="<spring:url value='productById02?pId=${product01.pId}'/>">
												<img class="primary-img"
												src="data:image/jpg;base64,${product01.base64Image}" alt="">
												<img class="secondary-img"
												src="data:image/jpg;base64,${product01.base64Image1}" alt="">
											</a>
										</div>

										<div class="product_content">
											<div class="usal_pro">
												<div class="product_name_2">
													<h2>
														<a href="#">${product01.pname}</a>
													</h2>
												</div>
												<div class="product_price">
													<div class="price_rating">
														<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
															class="fa fa-star"></i></a> <a href="#"> <i
															class="fa fa-star"></i>
														</a> <a class="not-rated" href="#"> <i
															class="fa fa-star-o" aria-hidden="true"></i>
														</a> <a class="not-rated" href="#"> <i
															class="fa fa-star-o" aria-hidden="true"></i>
														</a>
													</div>
												</div>
												<div class="price_box">
													<span class="spical-price">商品價錢 : ${product01.price}</span>
												</div>
												<div class="last_button_area">
													<ul class="add-to-links clearfix">
														<li class="addwishlist">
															<div class="yith-wcwl-add-button show">
																<a class="add_to_wishlist" href="" rel="nofollow"
																	data-product-id="45" data-product-type="external"
																	data-toggle="tooltip" title=""
																	data-original-title="Add to Wishlist"><i
																	class="fa fa-heart"></i></a>
															</div>
														</li>
														<li>
															<div class="new_act">
																<a class="button_act" data-quick-id="45"
																	href="<spring:url value='productById02?pId=${product01.pId}'/>"
																	title="" data-toggle="tooltip"
																	data-original-title="Donec non est at">詳細頁面</a>
															</div>
														</li>
														<li class="addcompare">
															<div class="woocommerce product compare-button">
																<a class="compare button" href="" data-product_id="45"
																	rel="nofollow" data-toggle="tooltip" title=""
																	data-original-title="Compare"><i
																	class="fa fa-refresh"></i></a>
															</div>
														</li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>
							<c:forEach var="product01" items='${products}' begin="26"
								end="26">
								<div class="col-md-12">
									<div class="all-pros all-pros-3 animated fadeInUp">
										<div class="single_product">
											<span>New</span>
										</div>
										<div class="sinle_pic">
											<a
												href="<spring:url value='productById02?pId=${product01.pId}'/>">
												<img class="primary-img"
												src="data:image/jpg;base64,${product01.base64Image}" alt="">
												<img class="secondary-img"
												src="data:image/jpg;base64,${product01.base64Image1}" alt="">
											</a>
										</div>

										<div class="product_content">
											<div class="usal_pro">
												<div class="product_name_2">
													<h2>
														<a href="#">${product01.pname}</a>
													</h2>
												</div>
												<div class="product_price">
													<div class="price_rating">
														<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
															class="fa fa-star"></i></a> <a href="#"> <i
															class="fa fa-star"></i>
														</a> <a class="not-rated" href="#"> <i
															class="fa fa-star-o" aria-hidden="true"></i>
														</a> <a class="not-rated" href="#"> <i
															class="fa fa-star-o" aria-hidden="true"></i>
														</a>
													</div>
												</div>
												<div class="price_box">
													<span class="spical-price">商品價錢 : ${product01.price}</span>
												</div>
												<div class="last_button_area">
													<ul class="add-to-links clearfix">
														<li class="addwishlist">
															<div class="yith-wcwl-add-button show">
																<a class="add_to_wishlist" href="" rel="nofollow"
																	data-product-id="45" data-product-type="external"
																	data-toggle="tooltip" title=""
																	data-original-title="Add to Wishlist"><i
																	class="fa fa-heart"></i></a>
															</div>
														</li>
														<li>
															<div class="new_act">
																<a class="button_act" data-quick-id="45"
																	href="<spring:url value='productById02?pId=${product01.pId}'/>"
																	title="" data-toggle="tooltip"
																	data-original-title="Donec non est at">詳細頁面</a>
															</div>
														</li>
														<li class="addcompare">
															<div class="woocommerce product compare-button">
																<a class="compare button" href="" data-product_id="45"
																	rel="nofollow" data-toggle="tooltip" title=""
																	data-original-title="Compare"><i
																	class="fa fa-refresh"></i></a>
															</div>
														</li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>
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
							<a href="#"> <img
								src="<c:url value="/images/differ-pic/differ_pic_1.jpg" />"
								alt="">

							</a>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="plus_pic">
						<div class="pix_new">
							<a href="#"> <img
								src="<c:url value="/images/differ-pic/differ_pic_2.jpg" />"
								alt="">

							</a>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="plus_pic">
						<div class="pix_new">
							<a href="#"> <img
								src="<c:url value="/images/differ-pic/differ_pic_3.jpg" />"
								alt="">
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
								<i class="fa fa-star"></i> <span>女性專區</span>
							</div>
						</div>
					</div>
				</div>
			</div>
			<c:forEach var="product01" items='${products}' begin="27" end="27">
				<div class="row">
					<div class="col-md-12 col-sm-12 col-xs-12 text-right">
						<div class="my-tabs">
							<!-- Nav tabs -->

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
														<a
															href="<spring:url value='productById02?pId=${product01.pId}'/>">
															<img class="primary-img"
															src="data:image/jpg;base64,${product01.base64Image}"
															alt=""> <img class="secondary-img"
															src="data:image/jpg;base64,${product01.base64Image1}"
															alt="">
														</a>
													</div>

													<div class="product_content">
														<div class="usal_pro">
															<div class="product_name_2">
																<h2>
																	<a href="#">${product01.pname}</a>
																</h2>
															</div>
															<div class="product_price">
																<div class="price_rating">
																	<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
																		class="fa fa-star"></i></a> <a href="#"> <i
																		class="fa fa-star"></i>
																	</a> <a href="#"><i class="fa fa-star"></i> </a> <a
																		class="not-rated" href="#"> <i
																		class="fa fa-star-o" aria-hidden="true"></i>
																	</a>
																</div>
															</div>
															<div class="price_box">
																<span class="spical-price">商品價錢 :
																	${product01.price}</span>
															</div>
															<div class="last_button_area">
																<ul class="add-to-links clearfix">
																	<li class="addwishlist">
																		<div class="yith-wcwl-add-button show">
																			<a class="add_to_wishlist" href="" rel="nofollow"
																				data-product-id="45" data-product-type="external"
																				data-toggle="tooltip" title=""
																				data-original-title="Add to Wishlist"><i
																				class="fa fa-heart"></i></a>
																		</div>
																	</li>
																	<li>
																		<div class="new_act">
																			<a class="button_act" data-quick-id="45"
																				href="<spring:url value='productById02?pId=${product01.pId}'/>"
																				title="" data-toggle="tooltip"
																				data-original-title="Donec non est at">詳細頁面</a>
																		</div>
																	</li>
																	<li class="addcompare">
																		<div class="woocommerce product compare-button">
																			<a class="compare button" href=""
																				data-product_id="45" rel="nofollow"
																				data-toggle="tooltip" title=""
																				data-original-title="Compare"><i
																				class="fa fa-refresh"></i></a>
																		</div>
																	</li>
																</ul>
															</div>
														</div>
													</div>
												</div>
											</div>
			</c:forEach>
			<c:forEach var="product01" items='${products}' begin="28" end="28">
				<div class="col-md-12">
					<div class="all-pros all-pros-3 animated fadeInUp">
						<div class="single_product">
							<span>New</span>
						</div>
						<div class="sinle_pic">
							<a
								href="<spring:url value='productById02?pId=${product01.pId}'/>">
								<img class="primary-img"
								src="data:image/jpg;base64,${product01.base64Image}" alt="">
								<img class="secondary-img"
								src="data:image/jpg;base64,${product01.base64Image1}" alt="">
							</a>
						</div>

						<div class="product_content">
							<div class="usal_pro">
								<div class="product_name_2">
									<h2>
										<a href="#">${product01.pname}</a>
									</h2>
								</div>
								<div class="product_price">
									<div class="price_rating">
										<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
											class="fa fa-star"></i></a> <a href="#"> <i
											class="fa fa-star"></i>
										</a> <a class="not-rated" href="#"> <i class="fa fa-star-o"
											aria-hidden="true"></i>
										</a> <a class="not-rated" href="#"> <i class="fa fa-star-o"
											aria-hidden="true"></i>
										</a>
									</div>
								</div>
								<div class="price_box">
									<span class="spical-price">商品價錢 : ${product01.price}</span>
								</div>
								<div class="last_button_area">
									<ul class="add-to-links clearfix">
										<li class="addwishlist">
											<div class="yith-wcwl-add-button show">
												<a class="add_to_wishlist" href="" rel="nofollow"
													data-product-id="45" data-product-type="external"
													data-toggle="tooltip" title=""
													data-original-title="Add to Wishlist"><i
													class="fa fa-heart"></i></a>
											</div>
										</li>
										<li>
											<div class="new_act">
												<a class="button_act" data-quick-id="45"
													href="<spring:url value='productById02?pId=${product01.pId}'/>"
													title="" data-toggle="tooltip"
													data-original-title="Donec non est at">詳細頁面</a>
											</div>
										</li>
										<li class="addcompare">
											<div class="woocommerce product compare-button">
												<a class="compare button" href="" data-product_id="45"
													rel="nofollow" data-toggle="tooltip" title=""
													data-original-title="Compare"><i class="fa fa-refresh"></i></a>
											</div>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
			<c:forEach var="product01" items='${products}' begin="29" end="29">
				<div class="col-md-12">
					<div class="all-pros all-pros-3 animated fadeInUp">
						<div class="single_product">
							<span>New</span>
						</div>
						<div class="sinle_pic">
							<a
								href="<spring:url value='productById02?pId=${product01.pId}'/>">
								<img class="primary-img"
								src="data:image/jpg;base64,${product01.base64Image}" alt="">
								<img class="secondary-img"
								src="data:image/jpg;base64,${product01.base64Image1}" alt="">
							</a>
						</div>

						<div class="product_content">
							<div class="usal_pro">
								<div class="product_name_2">
									<h2>
										<a href="#">${product01.pname}</a>
									</h2>
								</div>
								<div class="product_price">
									<div class="price_rating">
										<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
											class="fa fa-star"></i></a> <a href="#"> <i
											class="fa fa-star"></i>
										</a> <a class="not-rated" href="#"> <i class="fa fa-star-o"
											aria-hidden="true"></i>
										</a> <a class="not-rated" href="#"> <i class="fa fa-star-o"
											aria-hidden="true"></i>
										</a>
									</div>
								</div>
								<div class="price_box">
									<span class="spical-price">商品價錢 : ${product01.price}</span>
								</div>
								<div class="last_button_area">
									<ul class="add-to-links clearfix">
										<li class="addwishlist">
											<div class="yith-wcwl-add-button show">
												<a class="add_to_wishlist" href="" rel="nofollow"
													data-product-id="45" data-product-type="external"
													data-toggle="tooltip" title=""
													data-original-title="Add to Wishlist"><i
													class="fa fa-heart"></i></a>
											</div>
										</li>
										<li>
											<div class="new_act">
												<a class="button_act" data-quick-id="45"
													href="<spring:url value='productById02?pId=${product01.pId}'/>"
													title="" data-toggle="tooltip"
													data-original-title="Donec non est at">詳細頁面</a>
											</div>
										</li>
										<li class="addcompare">
											<div class="woocommerce product compare-button">
												<a class="compare button" href="" data-product_id="45"
													rel="nofollow" data-toggle="tooltip" title=""
													data-original-title="Compare"><i class="fa fa-refresh"></i></a>
											</div>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
			<c:forEach var="product01" items='${products}' begin="30" end="30">
				<div class="col-md-12">
					<div class="all-pros all-pros-3 animated fadeInUp">
						<div class="single_product">
							<span>New</span>
						</div>
						<div class="sinle_pic">
							<a
								href="<spring:url value='productById02?pId=${product01.pId}'/>">
								<img class="primary-img"
								src="data:image/jpg;base64,${product01.base64Image}" alt="">
								<img class="secondary-img"
								src="data:image/jpg;base64,${product01.base64Image1}" alt="">
							</a>
						</div>

						<div class="product_content">
							<div class="usal_pro">
								<div class="product_name_2">
									<h2>
										<a href="#">${product01.pname}</a>
									</h2>
								</div>
								<div class="product_price">
									<div class="price_rating">
										<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
											class="fa fa-star"></i></a> <a href="#"> <i
											class="fa fa-star"></i>
										</a> <a class="not-rated" href="#"> <i class="fa fa-star-o"
											aria-hidden="true"></i>
										</a> <a class="not-rated" href="#"> <i class="fa fa-star-o"
											aria-hidden="true"></i>
										</a>
									</div>
								</div>
								<div class="price_box">
									<span class="spical-price">商品價錢 : ${product01.price}</span>
								</div>
								<div class="last_button_area">
									<ul class="add-to-links clearfix">
										<li class="addwishlist">
											<div class="yith-wcwl-add-button show">
												<a class="add_to_wishlist" href="" rel="nofollow"
													data-product-id="45" data-product-type="external"
													data-toggle="tooltip" title=""
													data-original-title="Add to Wishlist"><i
													class="fa fa-heart"></i></a>
											</div>
										</li>
										<li>
											<div class="new_act">
												<a class="button_act" data-quick-id="45"
													href="<spring:url value='productById02?pId=${product01.pId}'/>"
													title="" data-toggle="tooltip"
													data-original-title="Donec non est at">詳細頁面</a>
											</div>
										</li>
										<li class="addcompare">
											<div class="woocommerce product compare-button">
												<a class="compare button" href="" data-product_id="45"
													rel="nofollow" data-toggle="tooltip" title=""
													data-original-title="Compare"><i class="fa fa-refresh"></i></a>
											</div>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
			<c:forEach var="product01" items='${products}' begin="0" end="0">
				<div class="col-md-12">
					<div class="all-pros all-pros-3 animated fadeInUp">
						<div class="single_product">
							<span>New</span>
						</div>
						<div class="sinle_pic">
							<a
								href="<spring:url value='productById02?pId=${product01.pId}'/>">
								<img class="primary-img"
								src="data:image/jpg;base64,${product01.base64Image}" alt="">
								<img class="secondary-img"
								src="data:image/jpg;base64,${product01.base64Image1}" alt="">
							</a>
						</div>

						<div class="product_content">
							<div class="usal_pro">
								<div class="product_name_2">
									<h2>
										<a href="#">${product01.pname}</a>
									</h2>
								</div>
								<div class="product_price">
									<div class="price_rating">
										<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
											class="fa fa-star"></i></a> <a href="#"> <i
											class="fa fa-star"></i>
										</a> <a class="not-rated" href="#"> <i class="fa fa-star-o"
											aria-hidden="true"></i>
										</a> <a class="not-rated" href="#"> <i class="fa fa-star-o"
											aria-hidden="true"></i>
										</a>
									</div>
								</div>
								<div class="price_box">
									<span class="spical-price">商品價錢 : ${product01.price}</span>
								</div>
								<div class="last_button_area">
									<ul class="add-to-links clearfix">
										<li class="addwishlist">
											<div class="yith-wcwl-add-button show">
												<a class="add_to_wishlist" href="" rel="nofollow"
													data-product-id="45" data-product-type="external"
													data-toggle="tooltip" title=""
													data-original-title="Add to Wishlist"><i
													class="fa fa-heart"></i></a>
											</div>
										</li>
										<li>
											<div class="new_act">
												<a class="button_act" data-quick-id="45"
													href="<spring:url value='productById02?pId=${product01.pId}'/>"
													title="" data-toggle="tooltip"
													data-original-title="Donec non est at">詳細頁面</a>
											</div>
										</li>
										<li class="addcompare">
											<div class="woocommerce product compare-button">
												<a class="compare button" href="" data-product_id="45"
													rel="nofollow" data-toggle="tooltip" title=""
													data-original-title="Compare"><i class="fa fa-refresh"></i></a>
											</div>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
			<c:forEach var="product01" items='${products}' begin="1" end="1">
				<div class="col-md-12">
					<div class="all-pros all-pros-3 animated fadeInUp">
						<div class="single_product">
							<span>New</span>
						</div>
						<div class="sinle_pic">
							<a
								href="<spring:url value='productById02?pId=${product01.pId}'/>">
								<img class="primary-img"
								src="data:image/jpg;base64,${product01.base64Image}" alt="">
								<img class="secondary-img"
								src="data:image/jpg;base64,${product01.base64Image1}" alt="">
							</a>
						</div>

						<div class="product_content">
							<div class="usal_pro">
								<div class="product_name_2">
									<h2>
										<a href="#">${product01.pname}</a>
									</h2>
								</div>
								<div class="product_price">
									<div class="price_rating">
										<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
											class="fa fa-star"></i></a> <a href="#"> <i
											class="fa fa-star"></i>
										</a> <a class="not-rated" href="#"> <i class="fa fa-star-o"
											aria-hidden="true"></i>
										</a> <a class="not-rated" href="#"> <i class="fa fa-star-o"
											aria-hidden="true"></i>
										</a>
									</div>
								</div>
								<div class="price_box">
									<span class="spical-price">商品價錢 : ${product01.price}</span>
								</div>
								<div class="last_button_area">
									<ul class="add-to-links clearfix">
										<li class="addwishlist">
											<div class="yith-wcwl-add-button show">
												<a class="add_to_wishlist" href="" rel="nofollow"
													data-product-id="45" data-product-type="external"
													data-toggle="tooltip" title=""
													data-original-title="Add to Wishlist"><i
													class="fa fa-heart"></i></a>
											</div>
										</li>
										<li>
											<div class="new_act">
												<a class="button_act" data-quick-id="45"
													href="<spring:url value='productById02?pId=${product01.pId}'/>"
													title="" data-toggle="tooltip"
													data-original-title="Donec non est at">詳細頁面</a>
											</div>
										</li>
										<li class="addcompare">
											<div class="woocommerce product compare-button">
												<a class="compare button" href="" data-product_id="45"
													rel="nofollow" data-toggle="tooltip" title=""
													data-original-title="Compare"><i class="fa fa-refresh"></i></a>
											</div>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
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
							<a href="#"> <img class="primary-img"
								src="<c:url value="/images/product-pic/product_pic_3.jpg" />"
								alt=""> <img class="secondary-img"
								src="<c:url value="/images/product-pic/product_pic_4.jpg" />"
								alt="">
							</a>
						</div>
						<div class="product-action" data-toggle="modal"
							data-target="#myModal">
							<button type="button" class="btn btn-info btn-lg quickview"
								data-toggle="tooltip" title="Quickview">Quick View</button>
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
										<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
											class="fa fa-star"></i></a> <a href="#"> <i
											class="fa fa-star"></i>
										</a> <a href="#"><i class="fa fa-star"></i> </a> <a
											class="not-rated" href="#"> <i class="fa fa-star-o"
											aria-hidden="true"></i>
										</a>
									</div>
								</div>
								<div class="price_box">
									<span class="spical-price">$100.00</span>
								</div>
								<div class="last_button_area">
									<ul class="add-to-links clearfix">
										<li class="addwishlist">
											<div class="yith-wcwl-add-button show">
												<a class="add_to_wishlist" href="" rel="nofollow"
													data-product-id="45" data-product-type="external"
													data-toggle="tooltip" title=""
													data-original-title="Add to Wishlist"><i
													class="fa fa-heart"></i></a>
											</div>
										</li>
										<li>
											<div class="new_act">
												<a class="button_act" data-quick-id="45" href="" title=""
													data-toggle="tooltip"
													data-original-title="Donec non est at">Add To Cart</a>
											</div>
										</li>
										<li class="addcompare">
											<div class="woocommerce product compare-button">
												<a class="compare button" href="" data-product_id="45"
													rel="nofollow" data-toggle="tooltip" title=""
													data-original-title="Compare"><i class="fa fa-refresh"></i></a>
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
							<a href="#"> <img class="primary-img"
								src="<c:url value="/images/product-pic/product_pic_5.jpg" />"
								alt=""><img class="secondary-img"
								src="<c:url value="/images/product-pic/product_pic_6.jpg" />"
								alt="">
							</a>
						</div>
						<div class="product-action" data-toggle="modal"
							data-target="#myModal">
							<button type="button" class="btn btn-info btn-lg quickview"
								data-toggle="tooltip" title="Quickview">Quick View</button>
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
										<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
											class="fa fa-star"></i></a> <a href="#"> <i
											class="fa fa-star"></i>
										</a> <a class="not-rated" href="#"> <i class="fa fa-star-o"
											aria-hidden="true"></i>
										</a> <a class="not-rated" href="#"><i class="fa fa-star-o"
											aria-hidden="true"></i> </a>
									</div>
								</div>
								<div class="price_box">
									<span class="spical-price">$300.00</span>
								</div>
								<div class="last_button_area">
									<ul class="add-to-links clearfix">
										<li class="addwishlist">
											<div class="yith-wcwl-add-button show">
												<a class="add_to_wishlist" href="" rel="nofollow"
													data-product-id="45" data-product-type="external"
													data-toggle="tooltip" title=""
													data-original-title="Add to Wishlist"><i
													class="fa fa-heart"></i></a>
											</div>
										</li>
										<li>
											<div class="new_act">
												<a class="button_act" data-quick-id="45" href="" title=""
													data-toggle="tooltip"
													data-original-title="Donec non est at">Add To Cart</a>
											</div>
										</li>
										<li class="addcompare">
											<div class="woocommerce product compare-button">
												<a class="compare button" href="" data-product_id="45"
													rel="nofollow" data-toggle="tooltip" title=""
													data-original-title="Compare"><i class="fa fa-refresh"></i></a>
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
							<a href="#"> <img class="primary-img"
								src="<c:url value="/images/product-pic/product_pic_7.jpg" />"
								alt=""> <img class="secondary-img"
								src="<c:url value="/images/product-pic/product_pic_6.jpg" />"
								alt="">
							</a>
						</div>
						<div class="product-action" data-toggle="modal"
							data-target="#myModal">
							<button type="button" class="btn btn-info btn-lg quickview"
								data-toggle="tooltip" title="Quickview">Quick View</button>
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
										<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
											class="fa fa-star"></i></a> <a href="#"> <i
											class="fa fa-star"></i>
										</a> <a href="#"><i class="fa fa-star"></i> </a> <a
											class="not-rated" href="#"> <i class="fa fa-star-o"
											aria-hidden="true"></i>
										</a>
									</div>
								</div>
								<div class="price_box">
									<span class="old-price">$250.00</span> <span
										class="spical-price">$200.00</span>
								</div>
								<div class="last_button_area">
									<ul class="add-to-links clearfix">
										<li class="addwishlist">
											<div class="yith-wcwl-add-button show">
												<a class="add_to_wishlist" href="" rel="nofollow"
													data-product-id="45" data-product-type="external"
													data-toggle="tooltip" title=""
													data-original-title="Add to Wishlist"><i
													class="fa fa-heart"></i></a>
											</div>
										</li>
										<li>
											<div class="new_act">
												<a class="button_act" data-quick-id="45" href="" title=""
													data-toggle="tooltip"
													data-original-title="Donec non est at">Add To Cart</a>
											</div>
										</li>
										<li class="addcompare">
											<div class="woocommerce product compare-button">
												<a class="compare button" href="" data-product_id="45"
													rel="nofollow" data-toggle="tooltip" title=""
													data-original-title="Compare"><i class="fa fa-refresh"></i></a>
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
							<a href="#"> <img class="primary-img"
								src="<c:url value="/images/product-pic/product_pic_1.jpg" />"
								alt=""> <img class="secondary-img"
								src="<c:url value="/images/product-pic/product_pic_1.jpg" />"
								alt="">
							</a>
						</div>
						<div class="product-action" data-toggle="modal"
							data-target="#myModal">
							<button type="button" class="btn btn-info btn-lg quickview"
								data-toggle="tooltip" title="Quickview">Quick View</button>
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
										<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
											class="fa fa-star"></i></a> <a href="#"> <i
											class="fa fa-star"></i>
										</a> <a href="#"><i class="fa fa-star"></i> </a> <a
											class="not-rated" href="#"> <i class="fa fa-star-o"
											aria-hidden="true"></i>
										</a>
									</div>
								</div>
								<div class="price_box">
									<span class="spical-price">$150.00-$170.00</span>
								</div>
								<div class="last_button_area">
									<ul class="add-to-links clearfix">
										<li class="addwishlist">
											<div class="yith-wcwl-add-button show">
												<a class="add_to_wishlist" href="" rel="nofollow"
													data-product-id="45" data-product-type="external"
													data-toggle="tooltip" title=""
													data-original-title="Add to Wishlist"><i
													class="fa fa-heart"></i></a>
											</div>
										</li>
										<li>
											<div class="new_act">
												<a class="button_act" data-quick-id="45" href="" title=""
													data-toggle="tooltip"
													data-original-title="Donec non est at">Add To Cart</a>
											</div>
										</li>
										<li class="addcompare">
											<div class="woocommerce product compare-button">
												<a class="compare button" href="" data-product_id="45"
													rel="nofollow" data-toggle="tooltip" title=""
													data-original-title="Compare"><i class="fa fa-refresh"></i></a>
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
							<a href="#"> <img class="primary-img"
								src="<c:url value="/images/product-pic/product_pic_1.jpg" />"
								alt=""> <img class="secondary-img"
								src="<c:url value="/images/product-pic/product_pic_1.jpg" />"
								alt="">
							</a>
						</div>
						<div class="product-action" data-toggle="modal"
							data-target="#myModal">
							<button type="button" class="btn btn-info btn-lg quickview"
								data-toggle="tooltip" title="Quickview">Quick View</button>
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
										<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
											class="fa fa-star"></i></a> <a href="#"> <i
											class="fa fa-star"></i>
										</a> <a href="#"><i class="fa fa-star"></i> </a> <a
											class="not-rated" href="#"> <i class="fa fa-star-o"
											aria-hidden="true"></i>
										</a>
									</div>
								</div>
								<div class="price_box">
									<span class="spical-price">$150.00-$200.00</span>
								</div>
								<div class="last_button_area">
									<ul class="add-to-links clearfix">
										<li class="addwishlist">
											<div class="yith-wcwl-add-button show">
												<a class="add_to_wishlist" href="" rel="nofollow"
													data-product-id="45" data-product-type="external"
													data-toggle="tooltip" title=""
													data-original-title="Add to Wishlist"><i
													class="fa fa-heart"></i></a>
											</div>
										</li>
										<li>
											<div class="new_act">
												<a class="button_act" data-quick-id="45" href="" title=""
													data-toggle="tooltip"
													data-original-title="Donec non est at">Add To Cart</a>
											</div>
										</li>
										<li class="addcompare">
											<div class="woocommerce product compare-button">
												<a class="compare button" href="" data-product_id="45"
													rel="nofollow" data-toggle="tooltip" title=""
													data-original-title="Compare"><i class="fa fa-refresh"></i></a>
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
							<a href="#"> <img class="primary-img"
								src="<c:url value="/images/product-pic/product_pic_1.jpg" />"
								alt=""> <img class="secondary-img"
								src="<c:url value="/images/product-pic/product_pic_1.jpg" />"
								alt="">
							</a>
						</div>
						<div class="product-action" data-toggle="modal"
							data-target="#myModal">
							<button type="button" class="btn btn-info btn-lg quickview"
								data-toggle="tooltip" title="Quickview">Quick View</button>
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
										<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
											class="fa fa-star"></i></a> <a href="#"> <i
											class="fa fa-star"></i>
										</a> <a href="#"><i class="fa fa-star"></i> </a> <a
											class="not-rated" href="#"> <i class="fa fa-star-o"
											aria-hidden="true"></i>
										</a>
									</div>
								</div>
								<div class="price_box">
									<span class="spical-price">$200.00</span>
								</div>
								<div class="last_button_area">
									<ul class="add-to-links clearfix">
										<li class="addwishlist">
											<div class="yith-wcwl-add-button show">
												<a class="add_to_wishlist" href="" rel="nofollow"
													data-product-id="45" data-product-type="external"
													data-toggle="tooltip" title=""
													data-original-title="Add to Wishlist"><i
													class="fa fa-heart"></i></a>
											</div>
										</li>
										<li>
											<div class="new_act">
												<a class="button_act" data-quick-id="45" href="" title=""
													data-toggle="tooltip"
													data-original-title="Donec non est at">Add To Cart</a>
											</div>
										</li>
										<li class="addcompare">
											<div class="woocommerce product compare-button">
												<a class="compare button" href="" data-product_id="45"
													rel="nofollow" data-toggle="tooltip" title=""
													data-original-title="Compare"><i class="fa fa-refresh"></i></a>
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
							<a href="#"> <img class="primary-img"
								src="<c:url value="/images/product-pic/product_pic_1.jpg" />"
								alt=""> <img class="secondary-img"
								src="<c:url value="/images/product-pic/product_pic_1.jpg" />"
								alt="">
							</a>
						</div>
						<div class="product-action" data-toggle="modal"
							data-target="#myModal">
							<button type="button" class="btn btn-info btn-lg quickview"
								data-toggle="tooltip" title="Quickview">Quick View</button>
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
										<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
											class="fa fa-star"></i></a> <a href="#"> <i
											class="fa fa-star"></i>
										</a> <a class="not-rated" href="#"> <i class="fa fa-star-o"
											aria-hidden="true"></i>
										</a> <a class="not-rated" href="#"> <i class="fa fa-star-o"
											aria-hidden="true"></i>
										</a>
									</div>
								</div>
								<div class="price_box">
									<span class="spical-price">$250.00</span>
								</div>
								<div class="last_button_area">
									<ul class="add-to-links clearfix">
										<li class="addwishlist">
											<div class="yith-wcwl-add-button show">
												<a class="add_to_wishlist" href="" rel="nofollow"
													data-product-id="45" data-product-type="external"
													data-toggle="tooltip" title=""
													data-original-title="Add to Wishlist"><i
													class="fa fa-heart"></i></a>
											</div>
										</li>
										<li>
											<div class="new_act">
												<a class="button_act" data-quick-id="45" href="" title=""
													data-toggle="tooltip"
													data-original-title="Donec non est at">Add To Cart</a>
											</div>
										</li>
										<li class="addcompare">
											<div class="woocommerce product compare-button">
												<a class="compare button" href="" data-product_id="45"
													rel="nofollow" data-toggle="tooltip" title=""
													data-original-title="Compare"><i class="fa fa-refresh"></i></a>
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
							<a href="#"> <img class="primary-img"
								src="<c:url value="/images/product-pic/product_pic_1.jpg" />"
								alt=""> <img class="secondary-img"
								src="<c:url value="/images/product-pic/product_pic_1.jpg" />"
								alt="">
							</a>
						</div>
						<div class="product-action" data-toggle="modal"
							data-target="#myModal">
							<button type="button" class="btn btn-info btn-lg quickview"
								data-toggle="tooltip" title="Quickview">Quick View</button>
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
										<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
											class="fa fa-star"></i></a> <a href="#"> <i
											class="fa fa-star"></i>
										</a> <a href="#"><i class="fa fa-star"></i> </a> <a
											class="not-rated" href="#"> <i class="fa fa-star-o"
											aria-hidden="true"></i>
										</a>
									</div>
								</div>
								<div class="price_box">
									<span class="spical-price">$100.00</span>
								</div>
								<div class="last_button_area">
									<ul class="add-to-links clearfix">
										<li class="addwishlist">
											<div class="yith-wcwl-add-button show">
												<a class="add_to_wishlist" href="" rel="nofollow"
													data-product-id="45" data-product-type="external"
													data-toggle="tooltip" title=""
													data-original-title="Add to Wishlist"><i
													class="fa fa-heart"></i></a>
											</div>
										</li>
										<li>
											<div class="new_act">
												<a class="button_act" data-quick-id="45" href="" title=""
													data-toggle="tooltip"
													data-original-title="Donec non est at">Add To Cart</a>
											</div>
										</li>
										<li class="addcompare">
											<div class="woocommerce product compare-button">
												<a class="compare button" href="" data-product_id="45"
													rel="nofollow" data-toggle="tooltip" title=""
													data-original-title="Compare"><i class="fa fa-refresh"></i></a>
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
							<a href="#"> <img class="primary-img"
								src="<c:url value="/images/product-pic/product_pic_1.jpg" />"
								alt=""> <img class="secondary-img"
								src="<c:url value="/images/product-pic/product_pic_1.jpg" />"
								alt="">
							</a>
						</div>
						<div class="product-action" data-toggle="modal"
							data-target="#myModal">
							<button type="button" class="btn btn-info btn-lg quickview"
								data-toggle="tooltip" title="Quickview">Quick View</button>
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
										<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
											class="fa fa-star"></i></a> <a href="#"> <i
											class="fa fa-star"></i>
										</a> <a href="#"><i class="fa fa-star"></i> </a> <a
											class="not-rated" href="#"> <i class="fa fa-star-o"
											aria-hidden="true"></i>
										</a>
									</div>
								</div>
								<div class="price_box">
									<span class="spical-price">$150.00-$170.00</span>
								</div>
								<div class="last_button_area">
									<ul class="add-to-links clearfix">
										<li class="addwishlist">
											<div class="yith-wcwl-add-button show">
												<a class="add_to_wishlist" href="" rel="nofollow"
													data-product-id="45" data-product-type="external"
													data-toggle="tooltip" title=""
													data-original-title="Add to Wishlist"><i
													class="fa fa-heart"></i></a>
											</div>
										</li>
										<li>
											<div class="new_act">
												<a class="button_act" data-quick-id="45" href="" title=""
													data-toggle="tooltip"
													data-original-title="Donec non est at">Add To Cart</a>
											</div>
										</li>
										<li class="addcompare">
											<div class="woocommerce product compare-button">
												<a class="compare button" href="" data-product_id="45"
													rel="nofollow" data-toggle="tooltip" title=""
													data-original-title="Compare"><i class="fa fa-refresh"></i></a>
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
							<a href="#"> <img class="primary-img"
								src="<c:url value="/images/product-pic/product_pic_1.jpg" />"
								alt=""><img class="secondary-img"
								src="<c:url value="/images/product-pic/product_pic_1.jpg" />"
								alt="">
							</a>
						</div>
						<div class="product-action" data-toggle="modal"
							data-target="#myModal">
							<button type="button" class="btn btn-info btn-lg quickview"
								data-toggle="tooltip" title="Quickview">Quick View</button>
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
										<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
											class="fa fa-star"></i></a> <a href="#"> <i
											class="fa fa-star"></i>
										</a> <a href="#"><i class="fa fa-star"></i> </a> <a
											class="not-rated" href="#"> <i class="fa fa-star-o"
											aria-hidden="true"></i>
										</a>
									</div>
								</div>
								<div class="price_box">
									<span class="spical-price">$150.00-$200.00</span>
								</div>
								<div class="last_button_area">
									<ul class="add-to-links clearfix">
										<li class="addwishlist">
											<div class="yith-wcwl-add-button show">
												<a class="add_to_wishlist" href="" rel="nofollow"
													data-product-id="45" data-product-type="external"
													data-toggle="tooltip" title=""
													data-original-title="Add to Wishlist"><i
													class="fa fa-heart"></i></a>
											</div>
										</li>
										<li>
											<div class="new_act">
												<a class="button_act" data-quick-id="45" href="" title=""
													data-toggle="tooltip"
													data-original-title="Donec non est at">Add To Cart</a>
											</div>
										</li>
										<li class="addcompare">
											<div class="woocommerce product compare-button">
												<a class="compare button" href="" data-product_id="45"
													rel="nofollow" data-toggle="tooltip" title=""
													data-original-title="Compare"><i class="fa fa-refresh"></i></a>
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
							<a href="#"> <img class="primary-img"
								src="<c:url value="/images/product-pic/product_pic_1.jpg" />"
								alt=""><img class="secondary-img"
								src="<c:url value="/images/product-pic/product_pic_1.jpg" />"
								alt="">
							</a>
						</div>
						<div class="product-action" data-toggle="modal"
							data-target="#myModal">
							<button type="button" class="btn btn-info btn-lg quickview"
								data-toggle="tooltip" title="Quickview">Quick View</button>
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
										<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
											class="fa fa-star"></i></a> <a href="#"> <i
											class="fa fa-star"></i>
										</a> <a href="#"><i class="fa fa-star"></i> </a> <a
											class="not-rated" href="#"> <i class="fa fa-star-o"
											aria-hidden="true"></i>
										</a>
									</div>
								</div>
								<div class="price_box">
									<span class="spical-price">$200.00</span>
								</div>
								<div class="last_button_area">
									<ul class="add-to-links clearfix">
										<li class="addwishlist">
											<div class="yith-wcwl-add-button show">
												<a class="add_to_wishlist" href="" rel="nofollow"
													data-product-id="45" data-product-type="external"
													data-toggle="tooltip" title=""
													data-original-title="Add to Wishlist"><i
													class="fa fa-heart"></i></a>
											</div>
										</li>
										<li>
											<div class="new_act">
												<a class="button_act" data-quick-id="45" href="" title=""
													data-toggle="tooltip"
													data-original-title="Donec non est at">Add To Cart</a>
											</div>
										</li>
										<li class="addcompare">
											<div class="woocommerce product compare-button">
												<a class="compare button" href="" data-product_id="45"
													rel="nofollow" data-toggle="tooltip" title=""
													data-original-title="Compare"><i class="fa fa-refresh"></i></a>
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
							<a href="#"> <img class="primary-img"
								src="<c:url value="/images/cosmatics-pic/cosmatic_pix_1.jpg" />"
								alt=""> <img class="secondary-img"
								src="<c:url value="/images/cosmatics-pic/cosmatic_pix_1.jpg" />"
								alt="">
							</a>
						</div>
						<div class="product-action" data-toggle="modal"
							data-target="#myModal">
							<button type="button" class="btn btn-info btn-lg quickview"
								data-toggle="tooltip" title="Quickview">Quick View</button>
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
										<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
											class="fa fa-star"></i></a> <a href="#"> <i
											class="fa fa-star"></i>
										</a> <a href="#"><i class="fa fa-star"></i> </a> <a
											class="not-rated" href="#"> <i class="fa fa-star-o"
											aria-hidden="true"></i>
										</a>
									</div>
								</div>
								<div class="price_box">
									<span class="old- price">$250.00</span> <span
										class="spical-price">$150.00</span>
								</div>
								<div class="last_button_area">
									<ul class="add-to-links clearfix">
										<li class="addwishlist">
											<div class="yith-wcwl-add-button show">
												<a class="add_to_wishlist" href="" rel="nofollow"
													data-product-id="45" data-product-type="external"
													data-toggle="tooltip" title=""
													data-original-title="Add to Wishlist"><i
													class="fa fa-heart"></i></a>
											</div>
										</li>
										<li>
											<div class="new_act">
												<a class="button_act" data-quick-id="45" href="" title=""
													data-toggle="tooltip"
													data-original-title="Donec non est at">Add To Cart</a>
											</div>
										</li>
										<li class="addcompare">
											<div class="woocommerce product compare-button">
												<a class="compare button" href="" data-product_id="45"
													rel="nofollow" data-toggle="tooltip" title=""
													data-original-title="Compare"><i class="fa fa-refresh"></i></a>
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

							<a href="#"> <img
								src="<c:url value="/images/differ-pic/differ_pic_6.jpg" />"
								alt="">
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
								<i class="fa fa-shopping-bag"></i> <span>Top Rate</span>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="all_ayntex indicator-brand-4">
							<div class="nyx_top_rte">
								<c:forEach var="product01" items='${products}' begin="0" end="0">
									<div class="col-md-12  ">
										<div class="all-pros-ex animated fadeInUp">
											<div class="llc_pro">
												<div class="sinle_pic sinle_pic_2">
													<a
														href="<spring:url value='productById02?pId=${product01.pId}'/>">
														<img class="primary-img"
														src="data:image/jpg;base64,${product01.base64Image}"
														alt=""> <img class="secondary-img"
														src="data:image/jpg;base64,${product01.base64Image1}"
														alt="">
													</a>
												</div>
											</div>

											<div class="product_content_2">
												<div class="usal_pro">
													<div class=" product_name_new">
														<h2>
															<a
																href="<spring:url value='productById02?pId=${product01.pId}'/>">${product01.pname}</a>
														</h2>
													</div>
													<div
														class="product_price product_price_new product_price_new_3">
														<div class="price_rating">
															<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
																class="fa fa-star"></i></a> <a href="#"> <i
																class="fa fa-star"></i>
															</a> <a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
																class="fa fa-star"></i> </a>
														</div>
													</div>
													<div class="price_box price_box_new price_box_new_3">
														<span class="spical-price">商品價錢 :
															${product01.price}</span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
								<c:forEach var="product01" items='${products}' begin="1" end="1">
									<div class="col-md-12">
										<div class="all-pros-ex animated fadeInUp">
											<div class="llc_pro">
												<div class=" sinle_pic sinle_pic_2">
													<a
														href="<spring:url value='productById02?pId=${product01.pId}'/>">
														<img class="primary-img"
														src="data:image/jpg;base64,${product01.base64Image}"
														alt=""> <img class="secondary-img"
														src="data:image/jpg;base64,${product01.base64Image1}"
														alt="">
													</a>
												</div>
											</div>
											<div class="product_content_2">
												<div class="usal_pro">
													<div class=" product_name_new">
														<h2>
															<a
																href="<spring:url value='productById02?pId=${product01.pId}'/>">${product01.pname}</a>
														</h2>
													</div>
													<div class="product_price product_price_new">
														<div class="price_rating">
															<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
																class="fa fa-star"></i></a> <a href="#"> <i
																class="fa fa-star"></i>
															</a> <a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
																class="fa fa-star"></i> </a>
														</div>
													</div>
													<div class="price_box price_box_new">
														<span class="spical-price"> 商品價錢 :
															${product01.price}</span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
								<c:forEach var="product01" items='${products}' begin="2" end="2">
									<div class="col-md-12">
										<div class="all-pros-ex animated fadeInUp">
											<div class="llc_pro">
												<div class=" sinle_pic sinle_pic_2">
													<a
														href="<spring:url value='productById02?pId=${product01.pId}'/>">
														<img class="primary-img"
														src="data:image/jpg;base64,${product01.base64Image}"
														alt=""> <img class="secondary-img"
														src="data:image/jpg;base64,${product01.base64Image1}"
														alt="">
													</a>
												</div>
											</div>
											<div class="product_content_2">
												<div class="usal_pro">
													<div class=" product_name_new">
														<h2>
															<a
																href="<spring:url value='productById02?pId=${product01.pId}'/>">${product01.pname}</a>
														</h2>
													</div>
													<div class="product_price product_price_new">
														<div class="price_rating">
															<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
																class="fa fa-star"></i></a> <a href="#"> <i
																class="fa fa-star"></i>
															</a> <a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
																class="fa fa-star"></i> </a>
														</div>
													</div>
													<div class="price_box price_box_new">
														<span class="spical-price">商品價錢 :
															${product01.price}</span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
								<c:forEach var="product01" items='${products}' begin="3" end="3">
									<div class="col-md-12">
										<div class="all-pros-ex animated fadeInUp">
											<div class="llc_pro">
												<div class=" sinle_pic sinle_pic_2">
													<a
														href="<spring:url value='productById02?pId=${product01.pId}'/>">
														<img class="primary-img"
														src="data:image/jpg;base64,${product01.base64Image}"
														alt=""> <img class="secondary-img"
														src="data:image/jpg;base64,${product01.base64Image1}"
														alt="">
													</a>
												</div>
											</div>
											<div class="product_content_2">
												<div class="usal_pro">
													<div class=" product_name_new">
														<h2>
															<a
																href="<spring:url value='productById02?pId=${product01.pId}'/>">${product01.pname}</a>
														</h2>
													</div>
													<div class="product_price product_price_new">
														<div class="price_rating">
															<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
																class="fa fa-star"></i></a> <a href="#"> <i
																class="fa fa-star"></i>
															</a> <a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
																class="fa fa-star"></i> </a>
														</div>
													</div>
													<div class="price_box price_box_new">
														<span class="spical-price">商品價錢 :
															${product01.price}</span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
								<c:forEach var="product01" items='${products}' begin="4" end="4">
									<div class="col-md-12">
										<div class="all-pros-ex animated fadeInUp">
											<div class="llc_pro">
												<div class=" sinle_pic sinle_pic_2">
													<a
														href="<spring:url value='productById02?pId=${product01.pId}'/>">
														<img class="primary-img"
														src="data:image/jpg;base64,${product01.base64Image}"
														alt=""> <img class="secondary-img"
														src="data:image/jpg;base64,${product01.base64Image1}"
														alt="">
													</a>
												</div>
											</div>
											<div class="product_content_2">
												<div class="usal_pro">
													<div class=" product_name_new">
														<h2>
															<a
																href="<spring:url value='productById02?pId=${product01.pId}'/>">${product01.pname}</a>
														</h2>
													</div>
													<div class="product_price product_price_new">
														<div class="price_rating">
															<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
																class="fa fa-star"></i></a> <a href="#"> <i
																class="fa fa-star"></i>
															</a> <a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
																class="fa fa-star"></i> </a>
														</div>
													</div>
													<div class="price_box price_box_new">
														<span class="spical-price"> 商品價錢 :
															${product01.price}</span>
													</div>

												</div>

											</div>

										</div>

									</div>
								</c:forEach>
							</div>

							<div class="nyx_top_rte">
								<c:forEach var="product01" items='${products}' begin="5" end="5">
									<div class="col-md-12">
										<div class="all-pros-ex animated fadeInUp">
											<div class="llc_pro">
												<div class="sinle_pic sinle_pic_2">
													<a
														href="<spring:url value='productById02?pId=${product01.pId}'/>">
														<img class="primary-img"
														src="data:image/jpg;base64,${product01.base64Image}"
														alt=""> <img class="secondary-img"
														src="data:image/jpg;base64,${product01.base64Image1}"
														alt="">
													</a>
												</div>
											</div>
											<div class="product_content_2">
												<div class="usal_pro">
													<div class=" product_name_new">
														<h2>
															<a
																href="<spring:url value='productById02?pId=${product01.pId}'/>">${product01.pname}</a>
														</h2>
													</div>
													<div class="product_price product_price_new">
														<div class="price_rating">
															<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
																class="fa fa-star"></i></a> <a href="#"> <i
																class="fa fa-star"></i>
															</a> <a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
																class="fa fa-star"></i> </a>
														</div>
													</div>
													<div class="price_box price_box_new">
														<span class="spical-price">商品價錢 :
															${product01.price}</span>
													</div>

												</div>

											</div>

										</div>

									</div>
								</c:forEach>
								<c:forEach var="product01" items='${products}' begin="6" end="6">
									<div class="col-md-12">
										<div class="all-pros-ex animated fadeInUp">
											<div class="llc_pro">
												<div class=" sinle_pic sinle_pic_2">
													<a
														href="<spring:url value='productById02?pId=${product01.pId}'/>">
														<img class="primary-img"
														src="data:image/jpg;base64,${product01.base64Image}"
														alt=""> <img class="secondary-img"
														src="data:image/jpg;base64,${product01.base64Image1}"
														alt="">
													</a>
												</div>
											</div>
											<div class="product_content_2">
												<div class="usal_pro">
													<div class=" product_name_new">
														<h2>
															<a
																href="<spring:url value='productById02?pId=${product01.pId}'/>">${product01.pname}</a>
														</h2>
													</div>
													<div class="product_price product_price_new">
														<div class="price_rating">
															<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
																class="fa fa-star"></i></a> <a href="#"> <i
																class="fa fa-star"></i>
															</a> <a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
																class="fa fa-star"></i> </a>
														</div>
													</div>
													<div class="price_box price_box_new">
														<span class="spical-price">商品價錢 :
															${product01.price}</span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
								<c:forEach var="product01" items='${products}' begin="7" end="7">
									<div class="col-md-12">
										<div class="all-pros-ex animated fadeInUp">
											<div class="llc_pro">
												<div class=" sinle_pic sinle_pic_2">
													<a
														href="<spring:url value='productById02?pId=${product01.pId}'/>">
														<img class="primary-img"
														src="data:image/jpg;base64,${product01.base64Image}"
														alt=""> <img class="secondary-img"
														src="data:image/jpg;base64,${product01.base64Image1}"
														alt="">
													</a>
												</div>
											</div>
											<div class="product_content_2">
												<div class="usal_pro">
													<div class=" product_name_new">
														<h2>
															<a
																href="<spring:url value='productById02?pId=${product01.pId}'/>">${product01.pname}</a>
														</h2>
													</div>
													<div class="product_price product_price_new">
														<div class="price_rating">
															<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
																class="fa fa-star"></i></a> <a href="#"> <i
																class="fa fa-star"></i>
															</a> <a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
																class="fa fa-star"></i> </a>
														</div>
													</div>
													<div class="price_box price_box_new">
														<span class="spical-price">商品價錢 :
															${product01.price}</span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
								<c:forEach var="product01" items='${products}' begin="8" end="8">
									<div class="col-md-12">
										<div class="all-pros-ex animated fadeInUp">
											<div class="llc_pro">
												<div class=" sinle_pic sinle_pic_2">
													<a
														href="<spring:url value='productById02?pId=${product01.pId}'/>">
														<img class="primary-img"
														src="data:image/jpg;base64,${product01.base64Image}"
														alt=""> <img class="secondary-img"
														src="data:image/jpg;base64,${product01.base64Image1}"
														alt="">
													</a>
												</div>
											</div>
											<div class="product_content_2">
												<div class="usal_pro">
													<div class=" product_name_new">
														<h2>
															<a
																href="<spring:url value='productById02?pId=${product01.pId}'/>">${product01.pname}</a>
														</h2>
													</div>
													<div class="product_price product_price_new">
														<div class="price_rating">
															<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
																class="fa fa-star"></i></a> <a href="#"> <i
																class="fa fa-star"></i>
															</a> <a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
																class="fa fa-star"></i> </a>
														</div>
													</div>
													<div class="price_box price_box_new">
														<span class="spical-price">商品價錢 :
															${product01.price}</span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
								<c:forEach var="product01" items='${products}' begin="9" end="9">
									<div class="col-md-12">
										<div class="all-pros-ex animated fadeInUp">
											<div class="llc_pro">
												<div class=" sinle_pic sinle_pic_2">
													<a
														href="<spring:url value='productById02?pId=${product01.pId}'/>">
														<img class="primary-img"
														src="data:image/jpg;base64,${product01.base64Image}"
														alt=""> <img class="secondary-img"
														src="data:image/jpg;base64,${product01.base64Image1}"
														alt="">
													</a>
												</div>
											</div>
											<div class="product_content_2">
												<div class="usal_pro">
													<div class=" product_name_new">
														<h2>
															<a
																href="<spring:url value='productById02?pId=${product01.pId}'/>">${product01.pname}</a>
														</h2>
													</div>
													<div class="product_price product_price_new">
														<div class="price_rating">
															<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
																class="fa fa-star"></i></a> <a href="#"> <i
																class="fa fa-star"></i>
															</a> <a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
																class="fa fa-star"></i> </a>
														</div>
													</div>
													<div class="price_box price_box_new">
														<span class="spical-price">商品價錢 :
															${product01.price}</span>
													</div>
												</div>
											</div>

										</div>
									</div>
								</c:forEach>
							</div>

							<div class="nyx_top_rte">
								<c:forEach var="product01" items='${products}' begin="10"
									end="10">
									<div class="col-md-12  ">
										<div class="all-pros-ex animated fadeInUp">
											<div class="llc_pro">
												<div class="sinle_pic sinle_pic_2">
													<a
														href="<spring:url value='productById02?pId=${product01.pId}'/>">
														<img class="primary-img"
														src="data:image/jpg;base64,${product01.base64Image}"
														alt=""> <img class="secondary-img"
														src="data:image/jpg;base64,${product01.base64Image1}"
														alt="">
													</a>
												</div>
											</div>
											<div class="product_content_2">
												<div class="usal_pro">
													<div class=" product_name_new">
														<h2>
															<a
																href="<spring:url value='productById02?pId=${product01.pId}'/>">${product01.pname}</a>
														</h2>
													</div>
													<div
														class="product_price product_price_new product_price_new_3">
														<div class="price_rating">
															<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
																class="fa fa-star"></i></a> <a href="#"> <i
																class="fa fa-star"></i>
															</a> <a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
																class="fa fa-star"></i> </a>
														</div>
													</div>
													<div class="price_box price_box_new price_box_new_3">
														<span class="spical-price">商品價錢 :
															${product01.price}</span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
								<c:forEach var="product01" items='${products}' begin="11"
									end="11">
									<div class="col-md-12">
										<div class="all-pros-ex animated fadeInUp">
											<div class="llc_pro">
												<div class=" sinle_pic sinle_pic_2">
													<a
														href="<spring:url value='productById02?pId=${product01.pId}'/>">
														<img class="primary-img"
														src="data:image/jpg;base64,${product01.base64Image}"
														alt=""> <img class="secondary-img"
														src="data:image/jpg;base64,${product01.base64Image1}"
														alt="">
													</a>
												</div>
											</div>
											<div class="product_content_2">
												<div class="usal_pro">
													<div class=" product_name_new">
														<h2>
															<a
																href="<spring:url value='productById02?pId=${product01.pId}'/>">${product01.pname}</a>
														</h2>
													</div>
													<div class="product_price product_price_new">
														<div class="price_rating">
															<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
																class="fa fa-star"></i></a> <a href="#"> <i
																class="fa fa-star"></i>
															</a> <a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
																class="fa fa-star"></i> </a>
														</div>
													</div>
													<div class="price_box price_box_new">
														<span class="spical-price">商品價錢 :
															${product01.price}</span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
								<c:forEach var="product01" items='${products}' begin="12"
									end="12">
									<div class="col-md-12">
										<div class="all-pros-ex animated fadeInUp">
											<div class="llc_pro">
												<div class=" sinle_pic sinle_pic_2">
													<a
														href="<spring:url value='productById02?pId=${product01.pId}'/>">
														<img class="primary-img"
														src="data:image/jpg;base64,${product01.base64Image}"
														alt=""> <img class="secondary-img"
														src="data:image/jpg;base64,${product01.base64Image1}"
														alt="">
													</a>
												</div>
											</div>
											<div class="product_content_2">
												<div class="usal_pro">
													<div class=" product_name_new">
														<h2>
															<a
																href="<spring:url value='productById02?pId=${product01.pId}'/>">${product01.pname}</a>
														</h2>
													</div>
													<div class="product_price product_price_new">
														<div class="price_rating">
															<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
																class="fa fa-star"></i></a> <a href="#"> <i
																class="fa fa-star"></i>
															</a> <a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
																class="fa fa-star"></i> </a>
														</div>
													</div>
													<div class="price_box price_box_new">
														<span class="spical-price">商品價錢 :
															${product01.price}</span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
								<c:forEach var="product01" items='${products}' begin="13"
									end="13">
									<div class="col-md-12">
										<div class="all-pros-ex animated fadeInUp">
											<div class="llc_pro">
												<div class=" sinle_pic sinle_pic_2">
													<a
														href="<spring:url value='productById02?pId=${product01.pId}'/>">
														<img class="primary-img"
														src="data:image/jpg;base64,${product01.base64Image}"
														alt=""> <img class="secondary-img"
														src="data:image/jpg;base64,${product01.base64Image1}"
														alt="">
													</a>
												</div>
											</div>
											<div class="product_content_2">
												<div class="usal_pro">
													<div class=" product_name_new">
														<h2>
															<a
																href="<spring:url value='productById02?pId=${product01.pId}'/>">${product01.pname}</a>
														</h2>
													</div>
													<div class="product_price product_price_new">
														<div class="price_rating">
															<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
																class="fa fa-star"></i></a> <a href="#"> <i
																class="fa fa-star"></i>
															</a> <a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
																class="fa fa-star"></i> </a>
														</div>
													</div>
													<div class="price_box price_box_new">
														<span class="spical-price">商品價錢 :
															${product01.price}</span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>

						</div>

					</div>
				</div>

				<!--  end -->
				<div class="col-md-9 col-sm-12">
					<div class="haxico_main haxico_main_grf">
						<div class="fchered_area">
							<div class="new_product">
								<div class="product_heading">
									<i class="fa fa-list-ol"></i> <span>Featured Catagories</span>
								</div>
							</div>
						</div>
						<div class="chard_ex_al">
							<div class="row">
								<div class="achard_all indicator-brand indicator-brand-5">
									<div class="col-md-12">
										<div class="fchered_item">
											<div class="fechered_pix">

												<img
													src="<c:url value="/images/featured-pic/f_pix_1.jpg" />"
													alt="">
											</div>
											<div class="fechered_heading">
												<h3>
													<a href="#">Accessories</a>
												</h3>
											</div>
											<a class="view_button">View More</a>
										</div>
									</div>
									<div class="col-md-12">
										<div class="fchered_item">
											<div class="fechered_pix">
												<img
													src="<c:url value="/images/featured-pic/f_pix_2.jpg" />"
													alt="">
											</div>
											<div class="fechered_heading">
												<h3>
													<a href="#">Albums</a>
												</h3>
											</div>
											<a class="view_button">View More</a>
										</div>
									</div>
									<div class="col-md-12">
										<div class="fchered_item">
											<div class="fechered_pix">
												<img
													src="<c:url value="/images/featured-pic/f_pix_3.jpg" />"
													alt="">
											</div>
											<div class="fechered_heading">
												<h3>
													<a href="#">Electronic</a>
												</h3>
											</div>
											<a class="view_button">View More</a>
										</div>
									</div>
									<div class="col-md-12">
										<div class="fchered_item">
											<div class="fechered_pix">
												<img
													src="<c:url value="/images/featured-pic/f_pix_4.jpg" />"
													alt="">
											</div>
											<div class="fechered_heading">
												<h3>
													<a href="#">Headlight</a>
												</h3>
											</div>
											<a class="view_button">View More</a>
										</div>
									</div>
									<div class="col-md-12">
										<div class="fchered_item">
											<div class="fechered_pix">
												<img
													src="<c:url value="/images/featured-pic/f_pix_5.jpg" />"
													alt="">
											</div>
											<div class="fechered_heading">
												<h3>
													<a href="#">Mirrors</a>
												</h3>
											</div>
											<a class="view_button">View More</a>
										</div>
									</div>
									<div class="col-md-12">
										<div class="fchered_item">
											<div class="fechered_pix">
												<img
													src="<c:url value="/images/featured-pic/f_pix_5.jpg" />"
													alt="">
											</div>
											<div class="fechered_heading">
												<h3>
													<a href="#">Accessories</a>
												</h3>
											</div>
											<a class="view_button">View More</a>
										</div>
									</div>
									<div class="col-md-12">
										<div class="fchered_item">
											<div class="fechered_pix">
												<img
													src="<c:url value="/images/featured-pic/f_pix_3.jpg" />"
													alt="">
											</div>
											<div class="fechered_heading">
												<h3>
													<a href="#">Accessories</a>
												</h3>
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
										<i class="fa fa-comments"></i> <span>Blog Post</span>
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

										<a href="#"> <img
											src="<c:url value="/images/blog-pic/blog_pic_1.jpg" />"
											alt="">
										</a>
										<div class="blogdate">
											<div>
												<span class="day">29</span> <span class="month">Jan</span>
											</div>
										</div>
									</div>
									<div class="blog_info">
										<h3 class="post-title">
											<a href="#">Hello world!</a>
										</h3>
										<div class="post-excerpt">Donec vitae hendrerit arcu,
											sit amet faucibus nisl. Cras pretium arcu ex. Aenean posuere
											libero eu augue condimentum rhoncus. Praesent …</div>
										<a href="#"> <span class="readmore-text">Read More</span>
										</a>
									</div>
								</div>
							</div>
							<div class="col-md-12">
								<div class="blog_next">
									<div class="blog_thumb">
										<a href="#"><img
											src="<c:url value="/images/blog-pic/blog_pic_2.jpg" />"
											alt=""> </a>
										<div class="blogdate">
											<div>
												<span class="day">19</span> <span class="month">Jan</span>
											</div>
										</div>
									</div>
									<div class="blog_info">
										<h3 class="post-title">
											<a href="#">Curabitur lobortis</a>
										</h3>
										<div class="post-excerpt">Donec vitae hendrerit arcu,
											sit amet faucibus nisl. Cras pretium arcu ex. Aenean posuere
											libero eu augue condimentum rhoncus. Praesent …</div>
										<a href="#"> <span class="readmore-text">Read More</span>
										</a>
									</div>
								</div>
							</div>
							<div class="col-md-12">
								<div class="blog_next">
									<div class="blog_thumb">
										<a href="#"> <img
											src="<c:url value="/images/blog-pic/blog_pic_3.jpg" />"
											alt="">
										</a>
										<div class="blogdate">
											<div>
												<span class="day">19</span> <span class="month">Jan</span>
											</div>
										</div>
									</div>
									<div class="blog_info">
										<h3 class="post-title">
											<a href="#">Vivamus gravida</a>
										</h3>
										<div class="post-excerpt">Donec vitae hendrerit arcu,
											sit amet faucibus nisl. Cras pretium arcu ex. Aenean posuere
											libero eu augue condimentum rhoncus. Praesent …</div>
										<a href="#"> <span class="readmore-text">Read More</span>
										</a>
									</div>
								</div>
							</div>
							<div class="col-md-12">
								<div class="blog_next">
									<div class="blog_thumb">
										<a href="#"> src="<c:url
												value="/images/blog-pic/blog_pic_6.jpg" />"alt="">
										</a>
										<div class="blogdate">
											<div>
												<span class="day">4</span> <span class="month">Jan</span>
											</div>
										</div>
									</div>
									<div class="blog_info">
										<h3 class="post-title">
											<a href="#">Post Format:Image</a>
										</h3>
										<div class="post-excerpt">Donec vitae hendrerit arcu,
											sit amet faucibus nisl. Cras pretium arcu ex. Aenean posuere
											libero eu augue condimentum rhoncus. Praesent …</div>
										<a href="#"> <span class="readmore-text">Read More</span>
										</a>
									</div>
								</div>
							</div>
							<div class="col-md-12">
								<div class="blog_next">
									<div class="blog_thumb">
										<a href="#"> src="<c:url
												value="/images/blog-pic/blog_pic_5.jpg" />"alt="">
										</a>
										<div class="blogdate">
											<div>
												<span class="day">4</span> <span class="month">Jan</span>
											</div>
										</div>
									</div>
									<div class="blog_info">
										<h3 class="post-title">
											<a href="#">Post Format:Gallery</a>
										</h3>
										<div class="post-excerpt">Donec vitae hendrerit arcu,
											sit amet faucibus nisl. Cras pretium arcu ex. Aenean posuere
											libero eu augue condimentum rhoncus. Praesent …</div>
										<a href="#"> <span class="readmore-text">Read More</span>
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

	<!--newsletter area start-->
	<div class="all_news_letter">
		<div class="news_letter">
			<div class="news_middele">
				<div class="container">
					<div class="row">
						<div class="col-md-6">
							<div class="news_heading">
								<h3>newsletter</h3>
							</div>
							<div class="full_form">
								<form id="form-newsletter1" class="widget_wysija" method="post"
									action="#wysija">
									<p class="wysija-paragraph">
										<input name="wysija[user][email]"
											class="wysija-input validate[required,custom[email]]"
											title="Enter Your Mail..." placeholder="Enter Your Mail..."
											value="" id="form-validation-field-0" style="" type="text">
									</p>
									<input class="wysija-submit wysija-submit-field"
										src="<c:url value="/images/icon/btn.png"/>" value="Subscribe!"
										type="image">

								</form>
							</div>
						</div>
						<div class="col-md-6 col-xs-12">
							<div class="dxpt_area">
								<div class="news_right">
									<div class="news_heading news_heading_3">
										<h3 class="follow_mix">Contact us:</h3>
									</div>
									<ul class="social-icons">
										<li><a class="facebook social-icon" href="#" title=""
											target="_blank" data-toggle="tooltip"
											data-original-title="Facebook"> <i class="fa fa-facebook"></i>
										</a></li>
										<li><a class="google-plus social-icon" href="#" title=""
											target="_blank" data-toggle="tooltip"
											data-original-title="Google"> <i class="fa fa-google"></i>
										</a></li>
										<li><a class="social-icon instagram" href="#" title=""
											target="_blank" data-toggle="tooltip"
											data-original-title="instagram"> <i
												class="fa fa-instagram"></i>
										</a></li>
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
	<!--footer top area start-->
	<jsp:include page="/WEB-INF/views/footer/footer.jsp" />

	<!--footer bottom area end-->
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
										<a class="see-all" href="#">See all features</a><br> <input
											type="number" value="1">
										<button class="add-tocart add-tocart-2" type="submit">Add
											to cart</button>
									</form>
								</div>
								<div class="evavet_description evavet_description_dec">
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
										Fusce posuere metus vitae arcu imperdiet, id aliquet ante
										scelerisque. Sed sit amet sem vitae urna fringilla tempus.</p>
								</div>
								<div class="elavetor_social">
									<h3 class="widget-title">Share this product</h3>
									<br>
									<ul class="social-link social-link-bbt">
										<li><a class="fb" data-original-title="facebook" href="#"
											title="" data-toggle="tooltip"><i class="fa fa-facebook"></i></a></li>
										<li><a class="twit" data-original-title="twitter"
											href="#" title="" data-toggle="tooltip"><i
												class="fa fa-twitter"></i></a></li>
										<li><a class="pinter" data-original-title="pinterest"
											href="#" title="" data-toggle="tooltip"><i
												class="fa fa-pinterest"></i></a></li>
										<li><a class="google+" href="#" title="Google+"
											data-target="#productModal" data-toggle="tooltip"><i
												class="fa fa-google-plus"></i></a></li>
										<li><a class="lindin" href="#" title="LinkedIn"
											data-target="#productModal" data-toggle="tooltip"><i
												class="fa fa-linkedin"></i></a></li>
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


