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
</head>
<body>



   <!-- TOP -->
	<jsp:include page="/WEB-INF/views/fragment/top.jsp" />

	<jsp:include page="/WEB-INF/views/fragment/header.jsp" />

	<!-- TOP END -->
	<!--header area end-->

	<!--shop area start-->
	<div class="shop_area">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="shop_menu">
						<ul class="cramb_area cramb_area_5">
							<li><a href="index1.html">Home /</a></li>
							<li class="br-active"><a href="#">Shop</a></li>
						</ul>
					</div>
				</div>
			</div>
			<!--bar area start-->
			
		
			<div class="row" >
				<div class="col-md-12">			              
					<div class="bar">
						<p class="result_show">Showing 1–15 of 21 results</p>
						<div class="bar_box">
							<form action="#">
								<select>
									<option value="Default sorting">Default sorting</option>
<!-- 									<option value="Sort by popularity">Sort by popularity</option> -->
<!-- 									<option value="Sort by average rating">Sort by average -->
<!-- 										rating</option> -->
<!-- 									<option value="Sort by newness">Sort by newness</option> -->
<!-- 									<option value="Sort by price: low to high">Sort by -->
<!-- 										price: low to high</option> -->
<!-- 									<option value="Sort by price: low to low">Sort by -->
<!-- 										price: low to low</option> -->
								</select>
							</form>
						</div>

					</div>
					<div class="tab-content">
						<div role="tabpanel" class="tab-pane" id="home">
							<div class="row">
							</div>
						</div>
						<div role="tabpanel" class="tab-pane active" id="profile">
							<div class="row">
								<div class="col-md-12">
									<div class="all-pros br-ntf">
										<div class="row">
											<div class="col-md-4 col-sm-4 pl pr">
												<div class="sngl-pro">
													<div
														class="single_product single_product_2 single_product_3rd">
														<span>hot</span>
													</div>
													<div class="sinle_pic sngl-pc sinle_pic_2xd">
														<a href="#"> <img class="primary-img"
															src="img/product-pic/product_pic_3.jpg" alt="" /> <img
															class="secondary-img"
															src="img/product-pic/product_pic_4.jpg" alt="" />
														</a>
													</div>
													<div class="product-action" data-toggle="modal"
														data-target="#myModal">
														<button type="button"
															class="btn btn-info btn-lg quickview quickview_2"
															data-toggle="tooltip" title="Quickview">Quick
															View</button>
													</div>
												</div>
											</div>
											<div class="col-md-8 col-sm-8 pl pr">
												<div class="product_content product_content_nx">
													<div class="usal_pro">
														<div class="product_name_2 product_name_3 prnm">
															<h2>
																<a href="#">測試</a>
															</h2>
															<div class="pro_discrip">
																<p>1213.</p>
															</div>
														</div>
														<div class="action actionmm">
															<div class="product_price product_price_tz">
																<div class="price_rating">
																	<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
																		class="fa fa-star"></i></a> <a href="#"> <i
																		class="fa fa-star"></i>
																	</a> <a href="#"> <i class="fa fa-star"></i>
																	</a> <a href="#"> <i class="fa fa-star"></i>
																	</a> <a class="not-rated" href="#"><i
																		class="fa fa-star-o" aria-hidden="true"></i> </a>
																</div>
															</div>
															<div class="price_box price_box_tz">
																<span class="spical-price">$100.00</span>
															</div>
															<div class="last_button_area">
																<ul class="add-to-links clearfix">
																	<li>
																		<div class="new_act">
																			<a class="button_act button_act_2 button_act_hts"
																				data-quick-id="45" href="" title=""
																				data-toggle="tooltip"
																				data-original-title="Donec non est at">加入購物車
																				</a>
																		</div>
																	</li>
																	<li class="addwishlist">
																		<div class="yith-wcwl-add-button  show">
																			<a class="add_to_wishlist_3 add_to_wishlist_tz"
																				href="" rel="nofollow" data-product-id="45"
																				data-product-type="external" data-toggle="tooltip"
																				title="" data-original-title="Add to Wishlist"><i
																				class="fa fa-heart"></i></a>
																		</div>
																	</li>
																	<li class="addcompare">
																		<div class="woocommerce product compare-button">
																			<a class="compare_3 compare_3r button" href=""
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
										</div>
									</div>
								</div>
							</div>
						<div class="row">
							<div class="col-md-12">
								<div class="navi_area">
									<ul>
										<li class="active-2"><a href="#">1</a></li>
										<li><a href="#">2</a></li>
										<li><a href="#"> <i class="fa fa-angle-right"></i>
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
	<!--shop area end-->

	<!--newsletter area start-->
	
	<!--newsletter area end-->
<jsp:include page="/WEB-INF/views/footer/footer.jsp" />
	<!--modal content start-->
	<!-- Modal -->
	<div class="modal fade" id="myModal" role="dialog">
		<div class="modal-dialog">
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


