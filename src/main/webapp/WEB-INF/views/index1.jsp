<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<<<<<<< HEAD
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
======= >>>>>>> refs/remotes/Upstream/master
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


<script>
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

	<jsp:include page="/WEB-INF/views/fragment/top.jsp" />


	<!--header top area start-->
	<!-- 	<div class="header_area"> -->
	<!-- 		<div class="header_border"> -->
	<!-- 			<div class="container"> -->
	<!-- 				<div class="row"> -->
	<!-- 					<div class="col-md-6 col-lg-6 col-sm-6 col-xs-12"> -->
	<!-- 						<div class="header_heaft_area"> -->
	<!-- 							<div class="header_left_all"> -->
	<!-- 								<div class="mean_al_dv"> -->
	<!-- 									<div class="littele_menu"> -->
	<!-- 										<a href="#">回首頁<i class="fa fa-caret-down"></i></a> -->
	<!-- 									</div> -->
	<!-- 									<ul class="option"> -->

	<!-- 									</ul> -->
	<!-- 								</div> -->
	<!-- 								<div class="usd_area"> -->
	<!-- 									<div class="littele_menu"> -->
	<!-- 										<a href="#"> 我是賣家 <i class="fa fa-caret-down"></i> -->
	<!-- 										</a> -->
	<!-- 									</div> -->
	<!-- 									<ul class="option"> -->
	<!-- 										<li><a href="#">賣場管理</a></li> -->
	<!-- 										<li><a href="#">交易紀錄</a></li> -->
	<!-- 										<li><a href="#">我的賣場</a></li> -->
	<!-- 									</ul> -->
	<!-- 								</div> -->
	<!-- 								<div class="usd_area"> -->
	<!-- 									<div class="littele_menu"> -->
	<!-- 										<a href="#"> 我是買家 <i class="fa fa-caret-down"></i> -->
	<!-- 										</a> -->
	<!-- 									</div> -->
	<!-- 									<ul class="option"> -->
	<!-- 										<li><a href="#">訂單查詢</a></li> -->
	<!-- 										<li><a href="#">交易紀錄</a></li> -->
	<!-- 										<li><a href="#">歷史紀錄</a></li> -->
	<!-- 									</ul> -->
	<!-- 								</div> -->
	<!-- 							</div> -->
	<!-- 						</div> -->
	<!-- 					</div> -->
	<!-- 					<div class="col-md-6 col-lg-6 col-sm-6 col-xs-12"> -->
	<!-- 						<div class="header_right_area"> -->
	<!-- 							<ul> -->
	<!-- <!-- 								<li><a class="account" href="#">登入/註冊</a></li> -->
	<!-- <!-- 								<li><a class="wishlist" href="#">訂單查詢</a></li> -->
	<!-- <!-- 								<li><a class="Shopping cart" href="#">購物車</a></li> -->
	<!-- 								<li><a class="Checkout" href="#">會員中心</a></li> -->
	<!-- 							</ul> -->
	<!-- 						</div> -->
	<!-- 					</div> -->
	<!-- 				</div> -->
	<!-- 			</div> -->
	<!-- 		</div> -->
	<!--header top area end-->
	<!--header middle area start-->
	<div class="header_middle">
		<div class="container">
			<div class="row">
				<div class="col-md-3">
					<div class="logo_area">
						<a href="home"><img
							src="<c:url value="/images/logo-pic/logo.png" />" alt="image" /></a>
					</div>
				</div>
				<div class="col-md-9">
					<div class="header_all search_box_area">

						<form class="new_search" role="search" action="getProductsBy"
							method="POST">
							<input id="searchBy" class="search-field"
								placeholder="請輸入搜尋資料..." name="searchBy" title="Search for:"
								type="text"> <input id="searchBtn" value="Search"
								type="submit">
						</form>
						<div class="Test2">

							<ul>
								<spen style="margin-left:50px">熱門☆</spen>
								<li><a href="#">美妝</a></li>
								<li><a href="#">保健</a></li>
								<li><a href="#">食品</a></li>
								<li><a href="#">旅遊</a></li>
								<li><a href="#">婦幼</a></li>
								<li><a href="#">富田</a></li>
								<li><a href="#">姊妹</a></li>
								<li><a href="#">NYKD54</a></li>
								<li><a href="#">3C</a></li>

							</ul>

						</div>
					</div>
					<div class="header_all shopping_cart_area">
						<div class="widget_shopping_cart_content">
							<div class="topcart">

								<a class="cart-toggler" href=""> <img class="icon"
									src="<c:url value="/images/icon/icon_cart.png"/>"> <span
									class="my-cart">購物車</span> <span class="qty">${ShoppingCart.itemNumber}件</span>
									<span class="fa fa-angle-down"></span> class="my-cart">購物車</span> <span
									class="qty">2 件</span> <span class="fa fa-angle-down"></span>

								</a>
								<div class="new_cart_section">
									<ol class="new-list">
										<!-- single item -->

										<li class="wimix_area"><a class="pix_product" href="">

												<img alt=""
												src="<c:url value="/images/product-pic/7-150x98.jpg" />">
										</a>
											<div class="product-details">
												<a href="#">Adipiscing cursus eu</a> <span class="sig-price">1×$300.00</span>
											</div>
											<div class="cart-remove">
												<a class="action" href="#"> <i class="fa fa-close"></i>
												</a>
											</div></li>
										<!-- single item -->
										<!-- single item -->
										<li class="wimix_area"><a class="pix_product" href="#">
												<img alt=""
												src="<c:url value="/images/product-pic/7-150x98.jpg" />">
										</a>
											<div class="product-details">
												<a href="#">Duis convallis</a> <span class="sig-price">1×$100.00</span>
											</div>
											<div class="cart-remove">
												<a class="action" href="#"> <i class="fa fa-close"></i>
												</a>
											</div></li>

										<!-- single item -->
									</ol>
									<div class="top-subtotal">

										Subtotal: <span class="sig-price">$400.00</span>

									</div>
									<div class="cart-button">
										<ul>

											<li><a href="#">View my cart <i
													class="fa fa-angle-right"></i></a></li>
											<li><a href="#">Checkout <i
													class="fa fa-angle-right"></i></a></li>
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
	<!--header footer area start 購物車結束-->
	<div class="all_menu_area">
		<div class="menu_inner">
			<div class="container">
				<div class="full_menu clearfix">
					<div class="new_menu">
						<div class="drp-menu">
							<div class="col-md-3 pr pl">
								<div class="all_catagories">
									<div class="enable_catagories">
										<i class="fa fa-bars"></i> <span>3C/精品分類區</span> <i
											class="fa fa-angle-down"></i>
									</div>
								</div>
								<div class="catagory_menu_area">
									<div class="catagory_mega_menu">
										<div class="cat_mega_start">
											<ul class="list">
												<li class="next_area"><a class="item_link" href="#">
														<i class="fa fa-television"></i> <span
														class="link_content"> <span class="link_text">
																電腦用品 <span class="link_descr">3C/桌機/筆電/電競相關產品 </span>
														</span>
													</span>
												</a>
													<ul class="electronics_drpdown">
														<li class="parent"><a href="#"></a>
															<div class="mega_menu">
																<div class="mega_menu_coloumn">
																	<ul>
																		<li><a href="#">電競產品</a></li>
																		<li><a href="#">電競滑鼠</a></li>
																		<li><a href="#">電競桌機</a></li>
																		<li><a href="#">電競周邊</a></li>
																	</ul>
																</div>
																<div class="mega_menu_coloumn">
																	<ul>
																		<li><a href="#">筆記型電腦</a></li>
																		<li><a href="#">滑鼠</a></li>
																		<li><a href="#">鍵盤</a></li>
																		<li><a href="#">福利品出清</a></li>
																	</ul>
																</div>
																<div class="mega_menu_coloumn">
																	<ul>
																		<li class="mega_content"><a href="#">3C家電</a></li>
																		<li><a href="#">家電用品</a></li>
																		<li><a href="#">Dyson系列</a></li>
																		<li><a href="#">三星產品</a></li>
																		<li><a href="#">相關家電</a></li>
																	</ul>
																</div>
																<div class="mega_menu_coloumn">
																	<ul>
																		<li><a href="#">數位周邊</a></li>
																		<li><a href="#">喇叭/藍芽喇叭</a></li>
																		<li><a href="#">繪圖/手寫板</a></li>
																		<li><a href="#">電腦周邊/線材</a></li>
																		<li><a href="#">隨身碟/硬碟</a></li>
																	</ul>
																</div>
															</div></li>
													</ul></li>
												<li class="differ_sec_area"><a class="item_link"
													href="#"> <i class="fa fa-mobile"></i> <span
														class="link_content"> <span class="link_text">
																手機周邊 <span class="link_descr">手機/耳機/蘋果/安卓周邊產品 </span>
														</span>
													</span>
												</a>
													<ul class="another_drop_menu">
														<li class="discrip"><a class="new_link_2 with_icon"
															href="#" tabindex="1">手機</a>
															<ul class="new_miup_menu">
																<li>
																	<ul class="new_mixup_tm">
																		<li class="exact"><a class=" with_icon" href="#"
																			tabindex="1">蘋果手機</a></li>
																		<li><a href="#">安卓手機</a></li>
																	</ul>
																</li>
															</ul></li>
														<li class="risk"><a
															class="new_link_2 new_link_3 with_icon" href="#"
															tabindex="1">Apple周邊產品 </a>
															<ul class="new_miup_menu">
																<li>
																	<ul class="new_mixup_tm">
																		<li><a href="#">Apple watchs</a></li>
																	</ul>
																</li>
																<li><a href="#">Air pods</a></li>
																<li><a href="#">iPhone Lightning</a></li>
															</ul></li>
														<li><a href="#">蘋果3C周邊</a></li>
														<li><a href="#">安卓3C周邊</a></li>
													</ul></li>
												<li class="differ_sec_area"><a class="item_link "
													href="#"> <i class="fa fa-gift"></i> <span
														class="link_content"> <span class="link_text">
																送禮專區 <span class="link_descr">精緻禮品/小資禮品/最佳禮物</span>
														</span>
													</span>
												</a>
													<ul class="another_drop_menu">
														<li class="discrip"><a
															class="new_link_2 new_link_4 with_icon" href="#"
															tabindex="1"> 精美卡片區 </a></li>
														<li class="discrip"><a
															class="new_link_2 new_link_4 with_icon" href="#"
															tabindex="1"> 手工皮夾/包/名片夾 </a></li>
														<li class="discrip"><a
															class="new_link_2 new_link_4 with_icon" href="#"
															tabindex="1"> 精緻小禮品</a></li>
														<li class="discrip"><a
															class="new_link_2 new_link_4 with_icon" href="#"
															tabindex="1"> 精緻小點</a></li>

													</ul></li>
												<li><a class="item_link item_link_2" href="#"> <i
														class="fa fa-heart"></i> <span class="link_content">
															<span class="link_text"> 男士精品區 <span
																class="link_descr">精品名錶/皮夾/包/皮帶</span>
														</span>
													</span>
												</a></li>
												<li><a class="item_link item_link_2" href="#"> <i
														class="fa fa-star"></i> <span class="link_content">
															<span class="link_text"> 女士精品區 <span
																class="link_descr">名牌名包/皮夾/手飾/項鍊/福利品</span>
														</span>
													</span>
												</a></li>
												<li><a class="item_link item_link_2" href="#"> <i
														class="fa fa-lightbulb-o"></i> <span class="link_content">
															<span class="link_text"> NYKD54 <span
																class="link_descr">EEIT10804陳同學推薦專區</span>
														</span>
													</span>
												</a></li>
												<li class="cost-menu"><a class="item_link item_link_2"
													href="#"> <i class="fa fa-pie-chart"></i> <span
														class="link_content"> <span class="link_text">
																LEO <span class="link_descr">您今天LEO了嗎?</span>
														</span>
													</span>
												</a></li>
												<li class="showmore-items shwitm"><i
													class="fa fa-plus-square-o"></i> <span>More
														Categories</span></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							<!--menu area start-->
							<div class="col-md-9 pl">
								<div class="menu_area">
									<div class="menu1">
										<nav>
											<ul>
												<li><a href="index.html">美妝</a></li>
												<li><a href="#">鞋包配飾</a></li>
												<li><a href="#">食品</a></li>
												<li><a href="#">日常用品</a></li>
												<li><a href="#">居家生活</a></li>
												<li><a href="#">運動休閒</a></li>
												<li><a href="#">書店</a></li>
												<li><a href="#">保健</a></li>
												<li><a href="#">內衣</a></li>

											</ul>
										</nav>
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
	<!-- mobile-menu-area-start -->
	<!-- <div class="mobile-menu-area hidden-md hidden-lg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="mobile-menu">
                            <nav id="mobile-menu-active">
                                <ul id="nav">
                                    <li><a href="index.html">Home</a></li>
									<li><a href="about-us.html">About</a></li>
									<li><a href="cart.html">Cart</a></li>
									<li><a href="list-view.html">List</a></li>
									<li><a href="my.account.html">Account</a></li>
									<li><a href="simple-product.html">Product</a></li>
									<li><a href="contact-us.html">Contact us</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div> -->
	<!-- mobile-menu-area-end -->
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
									<div class="about_prgph">限定商品，全台24小時內到貨(偏遠地區除外)</div>
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
									<div class="about_prgph">限量商品到貨，熱賣搶購中。</div>
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
												<a href="#"> <img class="primary-img"
													src="<c:url value="/images/product-pic/product_pic_2.jpg" />"
													alt=""> <img class="secondary-img"
													src="<c:url value="/images/product-pic/product_pic_1.jpg" />"
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
									<div class="sinle_pic">
										<a href="#"> <img class="primary-img"
											src="<c:url value="/images/product-pic/product_pic_3.jpg" />"
											alt=""> <img class="secondary-img"
											src="<c:url value="/images/product-pic/product_pic_4.jpg" />"
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
									<div class="sinle_pic">
										<a href="#"> <img class="primary-img"
											src="<c:url value="/images/product-pic/product_pic_5.jpg" />"
											alt=""> <img class="secondary-img"
											src="<c:url value="/images/product-pic/product_pic_4.jpg" />"
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
										<a href="#"> <img class="primary-img"
											src="<c:url value="/images/product-pic/product_pic_7.jpg" />"
											alt=""> <img class="secondary-img"
											src="<c:url value="/images/product-pic/product_pic_6.jpg" />"
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
										<a href="#"> <img class="primary-img"
											src="<c:url value="/images/product-pic/product_pic_8.jpg" />"
											alt=""> <img class="secondary-img"
											src="<c:url value="/images/product-pic/product_pic_9.jpg" />"
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
					</div>
				</div>
			</div>
		</div>
		</c:forEach>
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
										<a href="#"> <img class="primary-img"
											src="<c:url value="/images/cosmatics-pic/cosmatic_pix_1.jpg" />"
											alt=""> <img class="secondary-img"
											src="<c:url value="/images/cosmatics-pic/cosmatic_pix_1.jpg" />"
											alt="">
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
												<div data-countdown="2017/11/01"></div>
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
						<a href="#"> <img class="primary-img"
							src="<c:url value="/images/cosmatics-pic/cosmatic_pix_3.jpg" />"
							alt=""> <img class="secondary-img"
							src="<c:url value="/images/cosmatics-pic/cosmatic_pix_3.jpg" />"
							alt="">
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
								<div data-countdown="2017/11/01"></div>
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
						<a href="#"> <img class="primary-img"
							src="<c:url value="/images/cosmatics-pic/cosmatic_pix_1.jpg" />"
							alt=""><img class="secondary-img"
							src="<c:url value="/images/cosmatics-pic/cosmatic_pix_2.jpg" />"
							alt="">
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
								<div data-countdown="2017/11/01"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- 							</div> -->
			<!-- 						</div> -->
			<!-- 					</div> -->
			<!-- 				</div> -->
			<!-- 			</div> -->
			<!-- 		</div> -->
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
														<a href="#"> <img class="primary-img"
															src="<c:url value="/images/product-pic/product_pic_2.jpg" />"
															alt=""> <img class="secondary-img"
															src="<c:url value="/images/product-pic/product_pic_1.jpg" />"
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
														<a href="#"> <img class="primary-img"
															src="<c:url value="/images/product-pic/product_pic_2.jpg" />"
															alt=""> <img class="secondary-img"
															src="<c:url value="/images/product-pic/product_pic_1.jpg" />"
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
														<a href="#"> <img class="primary-img"
															src="<c:url value="/images/product-pic/product_pic_2.jpg" />"
															alt=""> <img class="secondary-img"
															src="<c:url value="/images/product-pic/product_pic_1.jpg" />"
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
														<a href="#"> <img class="primary-img"
															src="<c:url value="/images/product-pic/product_pic_2.jpg" />"
															alt=""> <img class="secondary-img"
															src="<c:url value="/images/product-pic/product_pic_1.jpg" />"
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
														<a href="#"> <img class="primary-img"
															src="<c:url value="/images/product-pic/product_pic_2.jpg" />"
															alt=""> <img class="secondary-img"
															src="<c:url value="/images/product-pic/product_pic_1.jpg" />"
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
														<a href="#"> <img class="primary-img"
															src="<c:url value="/images/product-pic/product_pic_2.jpg" />"
															alt=""> <img class="secondary-img"
															src="<c:url value="/images/product-pic/product_pic_1.jpg" />"
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
														<a href="#"> <img class="primary-img"
															src="<c:url value="/images/cosmatics-pic/cosmatic_pix_2.jpg" />"
															alt=""> <img class="secondary-img"
															src="<c:url value="/images/cosmatics-pic/cosmatic_pix_2.jpg" />"
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
											<a href="#"> <img class="primary-img"
												src="<c:url value="/images/cosmatics-pic/cosmatic_pix_2.jpg" />"
												alt=""> <img class="secondary-img"
												src="<c:url value="/images/cosmatics-pic/cosmatic_pix_2.jpg" />"
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
											<a href="#"> <img class="primary-img"
												src="<c:url value="/images/cosmatics-pic/cosmatic_pix_2.jpg" />"
												alt=""> <img class="secondary-img"
												src="<c:url value="/images/cosmatics-pic/cosmatic_pix_2.jpg" />"
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
											<a href="#"> <img class="primary-img"
												src="<c:url value="/images/cosmatics-pic/cosmatic_pix_2.jpg" />"
												alt=""> <img class="secondary-img"
												src="<c:url value="/images/cosmatics-pic/cosmatic_pix_2.jpg" />"
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
											<a href="#"> <img class="primary-img"
												src="<c:url value="/images/cosmatics-pic/cosmatic_pix_2.jpg" />"
												alt=""> <img class="secondary-img"
												src="<c:url value="/images/cosmatics-pic/cosmatic_pix_2.jpg" />"
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
											<a href="#"> <img class="primary-img"
												src="<c:url value="/images/cosmatics-pic/cosmatic_pix_2.jpg" />"
												alt=""> <img class="secondary-img"
												src="<c:url value="/images/cosmatics-pic/cosmatic_pix_2.jpg" />"
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
											<a href="#"> <img class="primary-img"
												src="<c:url value="/images/cosmatics-pic/cosmatic_pix_2.jpg" />"
												alt=""> <img class="secondary-img"
												src="<c:url value="/images/cosmatics-pic/cosmatic_pix_2.jpg" />"
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
											<a href="#"> <img class="primary-img"
												src="<c:url value="/images/cosmatics-pic/cosmatic_pix_2.jpg" />"
												alt=""> <img class="secondary-img"
												src="<c:url value="/images/cosmatics-pic/cosmatic_pix_2.jpg" />"
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
											<a href="#"> <img class="primary-img"
												src="<c:url value="/images/cosmatics-pic/cosmatic_pix_2.jpg" />"
												alt=""> <img class="secondary-img"
												src="<c:url value="/images/cosmatics-pic/cosmatic_pix_2.jpg" />"
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
											<a href="#"> <img class="primary-img"
												src="<c:url value="/images/cosmatics-pic/cosmatic_pix_2.jpg" />"
												alt=""> <img class="secondary-img"
												src="<c:url value="/images/cosmatics-pic/cosmatic_pix_2.jpg" />"
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
											<a href="#"> <img class="primary-img"
												src="<c:url value="/images/cosmatics-pic/cosmatic_pix_2.jpg" />"
												alt=""> <img class="secondary-img"
												src="<c:url value="/images/cosmatics-pic/cosmatic_pix_2.jpg" />"
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
											<a href="#"> <img class="primary-img"
												src="<c:url value="/images/cosmatics-pic/cosmatic_pix_2.jpg" />"
												alt=""> <img class="secondary-img"
												src="<c:url value="/images/cosmatics-pic/cosmatic_pix_2.jpg" />"
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
														<a href="#"> <img class="primary-img"
															src="<c:url value="/images/product-pic/product_pic_2.jpg" />"
															alt=""> <img class="secondary-img"
															src="<c:url value="/images/product-pic/product_pic_1.jpg" />"
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
							<a href="#"> <img class="primary-img"
								src="<c:url value="/images/product-pic/product_pic_5.jpg" />"
								alt=""> <img class="secondary-img"
								src="<c:url value="/images/product-pic/product_pic_6.jpg" />"
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
							<a href="#"> <img class="primary-img"
								src="<c:url value="/images/product-pic/product_pic_5.jpg" />"
								alt=""> <img class="secondary-img"
								src="<c:url value="/images/product-pic/product_pic_6.jpg" />"
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
							<a href="#"> <img class="primary-img"
								src="<c:url value="/images/product-pic/product_pic_5.jpg" />"
								alt=""> <img class="secondary-img"
								src="<c:url value="/images/product-pic/product_pic_6.jpg" />"
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
							<a href="#"> <img class="primary-img"
								src="<c:url value="/images/product-pic/product_pic_5.jpg" />"
								alt=""> <img class="secondary-img"
								src="<c:url value="/images/product-pic/product_pic_6.jpg" />"
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
							<a href="#"> <img class="primary-img"
								src="<c:url value="/images/product-pic/product_pic_5.jpg" />"
								alt=""> <img class="secondary-img"
								src="<c:url value="/images/product-pic/product_pic_6.jpg" />"
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
					<c:forEach var="product01" items='${products}' begin="0" end="0">
						<div class="row">
							<div class="all_ayntex indicator-brand-4">
								<div class="nyx_top_rte">
									<div class="col-md-12  ">
										<div class="all-pros-ex animated fadeInUp">
											<div class="llc_pro">
												<div class="sinle_pic sinle_pic_2">
													<a href="#"> <img class="primary-img"
														src="<c:url value="/images/top-pic/top_pic_1.jpg" />"
														alt=""> <img class="secondary-img"
														src="<c:url value="/images/top-pic/top_pic_5.jpg" />"
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
									<div class="col-md-12">
										<div class="all-pros-ex animated fadeInUp">
											<div class="llc_pro">
												<div class=" sinle_pic sinle_pic_2">
													<a
														href="<spring:url value='productById02?pId=${product01.pId}'/>">
														<img class="primary-img"
														src="<c:url value="/images/top-pic/top_pic_2.jpg" />"
														alt=""> <img class="secondary-img"
														src="<c:url value="/images/top-pic/top_pic_3.jpg" />"
														alt="">
													</a>
												</div>
											</div>
					</c:forEach>

					<c:forEach var="product01" items='${products}' begin="1" end="1">
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
									<span class="spical-price"> 商品價錢 : ${product01.price}</span>
								</div>
							</div>
						</div>
				</div>
			</div>
			<div class="col-md-12">
				<div class="all-pros-ex animated fadeInUp">
					<div class="llc_pro">
						<div class=" sinle_pic sinle_pic_2">
							<a href="#"> <img class="primary-img"
								src="<c:url value="/images/top-pic/top_pic_4.jpg" />" alt="">
								<img class="secondary-img"
								src="<c:url value="/images/top-pic/top_pic_5.jpg" />" alt="">
							</a>
						</div>
					</div>
					</c:forEach>
					<c:forEach var="product01" items='${products}' begin="2" end="2">
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
									<span class="spical-price">商品價錢 : ${product01.price}</span>
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
								<a href="#"> <img class="primary-img"
									src="<c:url value="/images/top-pic/top_pic_6.jpg" />" alt="">
									<img class="secondary-img"
									src="<c:url value="/images/top-pic/top_pic_7.jpg" />" alt="">
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
									<span class="spical-price">商品價錢 : ${product01.price}</span>
								</div>
							</div>
						</div>
					</div>
				</div>
		</div>
		</c:forEach>
		<c:forEach var="product01" items='${products}' begin="4" end="4">
			<div class="nyx_top_rte">
				<div class="col-md-12">
					<div class="all-pros-ex animated fadeInUp">
						<div class="llc_pro">
							<div class="sinle_pic sinle_pic_2">
								<a href="#"> <img class="primary-img"
									src="<c:url value="/images/top-pic/top_pic_8.jpg" />" alt="">
									<img class="secondary-img"
									src="<c:url value="/images/top-pic/top_pic_9.jpg" />" alt="">
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
									<span class="spical-price"> 商品價錢 : ${product01.price}</span>
								</div>
							</div>
						</div>
					</div>
				</div>
		</c:forEach>
		<c:forEach var="product01" items='${products}' begin="5" end="5">
			<div class="col-md-12">
				<div class="all-pros-ex animated fadeInUp">
					<div class="llc_pro">
						<div class=" sinle_pic sinle_pic_2">
							<a href="#"> <img class="primary-img"
								src="<c:url value="/images/top-pic/top_pic_10.jpg" />" alt="">
								<img class="secondary-img"
								src="<c:url value="/images/top-pic/top_pic_8.jpg" />" alt="">
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
										class="fa fa-star"></i></a> <a href="#"> <i class="fa fa-star"></i>
									</a> <a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
										class="fa fa-star"></i> </a>
								</div>
							</div>
							<div class="price_box price_box_new">
								<span class="spical-price">商品價錢 : ${product01.price}</span>
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
							<a href="#"> <img class="primary-img"
								src="<c:url value="/images/top-pic/top_pic_11.jpg" />" alt="">
								<img class="secondary-img"
								src="<c:url value="/images/top-pic/top_pic_12.jpg" />" alt="">
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
										class="fa fa-star"></i></a> <a href="#"> <i class="fa fa-star"></i>
									</a> <a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
										class="fa fa-star"></i> </a>
								</div>
							</div>
							<div class="price_box price_box_new">
								<span class="spical-price">$220.00</span>
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
							<a href="#"> <img class="primary-img"
								src="<c:url value="/images/top-pic/top_pic_12.jpg" />" alt="">
								<img class="secondary-img"
								src="<c:url value="/images/top-pic/top_pic_11.jpg" />" alt="">
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
										class="fa fa-star"></i></a> <a href="#"> <i class="fa fa-star"></i>
									</a> <a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
										class="fa fa-star"></i> </a>
								</div>
							</div>
							<div class="price_box price_box_new">
								<span class="spical-price">商品價錢 : ${product01.price}</span>
							</div>
						</div>
					</div>
				</div>
			</div>
	</div>
	</c:forEach>
	<div class="nyx_top_rte">
		<div class="col-md-12  ">
			<div class="all-pros-ex animated fadeInUp">
				<div class="llc_pro">
					<div class="sinle_pic sinle_pic_2">
						<a href="#"> <img class="primary-img"
							src="<c:url value="/images/top-pic/top_pic_1.jpg" />" alt="">
							<img class="secondary-img"
							src="<c:url value="/images/top-pic/top_pic_5.jpg" />" alt="">
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
								<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
									class="fa fa-star"></i></a> <a href="#"> <i class="fa fa-star"></i>
								</a> <a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
									class="fa fa-star"></i> </a>
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
						<a href="#"> <img class="primary-img"
							src="<c:url value="/images/top-pic/top_pic_2.jpg" />" alt="">
							<img class="secondary-img"
							src="<c:url value="/images/top-pic/top_pic_3.jpg" />" alt="">
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
								<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
									class="fa fa-star"></i></a> <a href="#"> <i class="fa fa-star"></i>
								</a> <a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
									class="fa fa-star"></i> </a>
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
						<a href="#"> <img class="primary-img"
							src="<c:url value="/images/top-pic/top_pic_4.jpg" />" alt="">
							<img class="secondary-img"
							src="<c:url value="/images/top-pic/top_pic_5.jpg" />" alt="">
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
								<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
									class="fa fa-star"></i></a> <a href="#"> <i class="fa fa-star"></i>
								</a> <a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
									class="fa fa-star"></i> </a>
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
						<a href="#"> <img class="primary-img"
							src="<c:url value="/images/top-pic/top_pic_6.jpg" />" alt="">
							<img class="secondary-img"
							src="<c:url value="/images/top-pic/top_pic_7.jpg" />" alt="">
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
								<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
									class="fa fa-star"></i></a> <a href="#"> <i class="fa fa-star"></i>
								</a> <a href="#"><i class="fa fa-star"></i> </a> <a href="#"><i
									class="fa fa-star"></i> </a>
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
				<a href="#">Clothing</a> <a href="#">Enim</a> <a href="#">Fashion</a>
				<a href="#">Glasses</a> <a href="#">Hats</a> <a href="#">Hoodies</a>
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

									<img src="<c:url value="/images/featured-pic/f_pix_1.jpg" />"
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
									<img src="<c:url value="/images/featured-pic/f_pix_2.jpg" />"
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
									<img src="<c:url value="/images/featured-pic/f_pix_3.jpg" />"
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
									<img src="<c:url value="/images/featured-pic/f_pix_4.jpg" />"
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
									<img src="<c:url value="/images/featured-pic/f_pix_5.jpg" />"
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
									<img src="<c:url value="/images/featured-pic/f_pix_5.jpg" />"
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
									<img src="<c:url value="/images/featured-pic/f_pix_3.jpg" />"
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
								src="<c:url value="/images/blog-pic/blog_pic_1.jpg" />" alt="">
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
							<div class="post-excerpt">Donec vitae hendrerit arcu, sit
								amet faucibus nisl. Cras pretium arcu ex. Aenean posuere libero
								eu augue condimentum rhoncus. Praesent …</div>
							<a href="#"> <span class="readmore-text">Read More</span>
							</a>
						</div>
					</div>
				</div>
				<div class="col-md-12">
					<div class="blog_next">
						<div class="blog_thumb">
							<a href="#"><img
								src="<c:url value="/images/blog-pic/blog_pic_2.jpg" />" alt="">
							</a>
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
							<div class="post-excerpt">Donec vitae hendrerit arcu, sit
								amet faucibus nisl. Cras pretium arcu ex. Aenean posuere libero
								eu augue condimentum rhoncus. Praesent …</div>
							<a href="#"> <span class="readmore-text">Read More</span>
							</a>
						</div>
					</div>
				</div>
				<div class="col-md-12">
					<div class="blog_next">
						<div class="blog_thumb">
							<a href="#"> <img
								src="<c:url value="/images/blog-pic/blog_pic_3.jpg" />" alt="">
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
							<div class="post-excerpt">Donec vitae hendrerit arcu, sit
								amet faucibus nisl. Cras pretium arcu ex. Aenean posuere libero
								eu augue condimentum rhoncus. Praesent …</div>
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
							<div class="post-excerpt">Donec vitae hendrerit arcu, sit
								amet faucibus nisl. Cras pretium arcu ex. Aenean posuere libero
								eu augue condimentum rhoncus. Praesent …</div>
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
							<div class="post-excerpt">Donec vitae hendrerit arcu, sit
								amet faucibus nisl. Cras pretium arcu ex. Aenean posuere libero
								eu augue condimentum rhoncus. Praesent …</div>
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
<!-- 										<li><a class="facebook social-icon" href="#" title="" -->
<!-- 											target="_blank" data-toggle="tooltip" -->
<!-- 											data-original-title="whatsapp"> <i class="fa fa-whatsapp"></i> -->
<!-- 										</a></li> -->
										<li><a class="google-plus social-icon" href="#" title=""
											target="_blank" data-toggle="tooltip"
											data-original-title="Google"> <i class="fa fa-google"></i>
										</a></li>
<!-- 										<li><a class="youtube social-icon" href="#" title="" -->
<!-- 											target="_blank" data-toggle="tooltip" -->
<!-- 											data-original-title="Youtube"> <i class="fa fa-youtube"></i> -->
<!-- 										</a></li> -->
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
	<!-- 	<div class="footer_area"> -->
	<!-- 		<div class="container"> -->
	<!-- 			<div class="row"> -->
	<!-- 				<div class="col-md-3 col-sm-6"> -->
	<!-- 					<div class="footer_menu"> -->
	<!-- 						<div class="news_heading_2"> -->
	<!-- 							<h3>關於我們</h3> -->
	<!-- 						</div> -->
	<!-- 						<div class="footer_menu"> -->
	<!-- 							<ul> -->
	<!-- 								<li><a href="#">加入我們</a></li> -->
	<!-- 								<li><a href="#">招商專區</a></li> -->
	<!-- 								<li><a href="#">隱私權政策</a></li> -->
	<!-- 								<li><a href="#">關於卡痞</a></li> -->
	<!-- 							</ul> -->
	<!-- 						</div> -->
	<!-- 					</div> -->
	<!-- 				</div> -->
	<!-- 				<div class="col-md-3 col-sm-6"> -->
	<!-- 					<div class="footer_menu"> -->
	<!-- 						<div class="news_heading_2"> -->
	<!-- 							<h3>會員權益</h3> -->
	<!-- 						</div> -->
	<!-- 						<div class="footer_menu"> -->
	<!-- 							<ul> -->
	<!-- 								<li><a href="#">個人隱私保密政策</a></li> -->
	<!-- 								<li><a href="#">客戶權利義務</a></li> -->
	<!-- 								<li><a href="#">網路安全標章</a></li> -->
	<!-- 								<li><a href="#">防詐騙須知</a></li> -->
	<!-- 							</ul> -->
	<!-- 						</div> -->
	<!-- 					</div> -->
	<!-- 				</div> -->
	<!-- 				<div class="col-md-3 col-sm-6"> -->
	<!-- 					<div class="footer_menu"> -->
	<!-- 						<div class="news_heading_2"> -->
	<!-- 							<h3>系列網站</h3> -->
	<!-- 						</div> -->
	<!-- 						<div class="footer_menu"> -->
	<!-- 							<ul> -->
	<!-- 								<li><a href="#">卡痞旅遊網</a></li> -->
	<!-- 								<li><a href="#">卡痞購物商城</a></li> -->
	<!-- 								<li><a href="#">卡痞團購網</a></li> -->

	<!-- 							</ul> -->
	<!-- 						</div> -->
	<!-- 					</div> -->
	<!-- 				</div> -->
	<!-- 				<div class="col-md-3 col-sm-6"> -->
	<!-- 					<div class="footer_menu footer_menu_2"> -->
	<!-- 						<div class="news_heading_2"> -->
	<!-- 							<h3>客戶服務</h3> -->
	<!-- 						</div> -->
	<!-- 						<ul> -->
	<!-- 							<li><i class="fa fa-home"></i> -->
	<!-- 								<p>取消訂單/退貨</p></li> -->
	<!-- 							<li><i class="fa fa-phone"></i> -->
	<!-- 								<p>FAQ常見問題</p></li> -->
	<!-- 							<li><i class="fa fa-envelope"></i> -->
	<!-- 								<P>FAQ常見問題</P></li> -->
	<!-- 							<li><i class="fa fa-FAQ"></i> -->
	<!-- 								<p>聯絡我們</p></li> -->
	<!-- 						</ul> -->
	<!-- 					</div> -->
	<!-- 				</div> -->
	<!-- 			</div> -->
	<!-- 		</div> -->
	<!--footer top area end-->
	<!--footer middle area start-->
	<!-- 		<div class="footer_middle"> -->
	<!-- 			<div class="container"> -->
	<!-- 				<div class="fotter_inner"></div> -->
	<!-- 			</div> -->
	<!-- 		</div> -->
	<!-- 	</div> -->
	<!-- 	<!--footer middle area end-->
	<!-- 	<!--footer bottom area start-->
	<!-- 	<div class="footer-bottom"> -->
	<!-- 		<div class="container"> -->
	<!-- 			<div class="widget-copyright text-center"> -->
	<!-- 				防詐騙提醒，卡痞購物絕不會以電話或簡訊通知訂單/分期出錯、或變更付款方式,更不會 -->
	<!-- 				要您前往ATM進行操作與轉帳!不應在卡痞以外的地方輸入卡痞的帳號密碼，以免影響您的權益。</div> -->
	<!-- 		</div> -->
	<!-- 	</div> -->
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
</body>
</html>


