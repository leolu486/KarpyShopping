<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="<c:url value="/css/style.css" />"
	type="text/css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/vendor/modernizr-2.8.3.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
.fa fa-FAQ {
	position: relative;
}

/*replace the content value with the
corresponding value from the list below*/
.fa fa-FAQ:before {
	content: "\f000";
	font-family: FontAwesome;
	font-style: normal;
	font-weight: normal;
	text-decoration: inherit;
	/*--adjust as necessary--*/
	color: #000;
	font-size: 18px;
	padding-right: 0.5em;
	position: absolute;
	top: 10px;
	left: 0;
}
</style>


</head>
<body>
	<div class="footer_area">
		<div class="container">
			<div class="row">
				<div class="col-md-3 col-sm-6">
					<div class="footer_menu">
						<div class="news_heading_2">
							<h3>關於我們</h3>
						</div>
						<div class="footer_menu">
							<ul>
								<li><a href="https://reurl.cc/yye8xa">加入我們</a></li>
								<li><a href="#">招商專區</a></li>
								<li><a href="#">隱私權政策</a></li>
								<li><a href="#">關於卡痞</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-6">
					<div class="footer_menu">
						<div class="news_heading_2">
							<h3>會員權益</h3>
						</div>
						<div class="footer_menu">
							<ul>
								<li><a href="#">個人隱私保密政策</a></li>
								<li><a href="#">客戶權利義務</a></li>
								<li><a href="#">網路安全標章</a></li>
								<li><a href="#">防詐騙須知</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-6">
					<div class="footer_menu">
						<div class="news_heading_2">
							<h3>管理員中心</h3>
						</div>
						<div class="footer_menu">
							<ul>
								<li><a href="#">管理員</a></li>
								<li><a href="#">卡痞購物商城</a></li>
								<li><a href="#">卡痞團購網</a></li>

							</ul>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-6">
					<div class="footer_menu footer_menu_2">
						<div class="news_heading_2">
							<h3>客戶服務</h3>
						</div>
						<ul>
							<li><i class="fa fa-home"></i>
								<a href="#">訂單查詢</a></li>
							<li><i class="fa fa-envelope"></i>
								<a href="memberQandA">FAQ常見問題</a></li>
							<li><i class="fa fa-phone"></i>
								<a href="memberQandA">語音服務</a></li>
							<li><i class="fa fa-comment-o"></i>
								<a href="#">聯絡我們</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!--footer top area end-->
		<!--footer middle area start-->
		<div class="footer_middle">
			<div class="container">
				<div class="fotter_inner"></div>
			</div>
		</div>
	</div>
	<!--footer middle area end-->
	<!--footer bottom area start-->
	<div class="footer-bottom">
		<div class="container">
			<div class="widget-copyright text-center" style="margin-right:20px;">
				防詐騙提醒，卡痞購物絕不會以電話或簡訊通知訂單/分期出錯、或變更付款方式,更不會
				要您前往ATM進行操作與轉帳!不應在卡痞以外的地方輸入卡痞的帳號密碼，以免影響您的權益。</div>
		</div>
	</div>
</body>
</html>