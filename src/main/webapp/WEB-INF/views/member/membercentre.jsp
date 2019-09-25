<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<c:url value="/css/style.css" />"
	type="text/css" />

<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/vendor/modernizr-2.8.3.min.js"></script>
<link rel="stylesheet"
	href="<c:url value="/css/font-awesome.min.css" />" type="text/css" />
<meta charset="UTF-8">


<link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css" />"
	type="text/css" />
<title>Products</title>
</head>
<body>

	<jsp:include page="/WEB-INF/views/fragment/top.jsp" />



	<div class="my_account_area">
		<div class="container">

			<div class="all_cntnt">
				<div style="margin-left:80px">
					<aside class="single-sidebar">
						<h3>訂單問題</h3>
						<hr>

						<div class="my_account_areadiv" style="margin-top:40px;">
							<ul>
								<li><a href="<spring:url value='/ordersBymId?mId=${memberLoginOK.mId}' />" >訂單查詢</a></li>
								<li><a href="<spring:url value='/cancelHistory?mId=${memberLoginOK.mId}' />">退訂/退款查詢</a></li>
								<!-- <li><a href="#">換貨/查詢</a></li> -->
								<li><a href="<spring:url value='/queryOrderItemsHistory?mId=${memberLoginOK.mId }' />" >買過商品查詢</a></li>
							</ul>
						</div>

					</aside>
					<aside class="single-sidebar">
						<h3>其他查詢</h3>
						<hr>

						<div class="my_account_areadiv" style="margin-top:40px;">
							<ul>
								<li><a href="#">折價卷查詢</a></li>
								<li><a href="#">信用卡分期付款查詢</a></li>
								<li><a href="#">最近看過商品</a></li>
							</ul>
						</div>

					</aside>
					<aside class="single-sidebar">
						<h3>個人資料管理</h3>
						<hr>

						<div class="my_account_areadiv" style="margin-top:40px;">
							<ul>
								<li><a href="#">商品追蹤清單</a></li>
								<li><a href="memberchange">會員中心</a></li>
								<li><a href="addCreditCard">信用卡</a></li>
							</ul>
						</div>

					</aside>
				</div>
				<div style="margin-left:80px">
					<aside class="single-sidebar">
						<h3>常見問題</h3>
						<hr>

						<div class="my_account_areadiv" style="margin-top:40px;">
							<ul>
								<li><a href="#">新手上路</a></li>
								<li><a href="memberQA">購物流程/付款說明</a></li>
								<li><a href="memberQandA">常見問題Q & A</a></li>
								<li><a href="#">行銷規劃規則查詢</a></li>
							</ul>
						</div>

					</aside>
					<aside class="single-sidebar">
						<h3>統編載具</h3>
						<hr>

						<div class="my_account_areadiv" style="margin-top:40px;">
							<ul>
								<li><a href="#">公司統編備忘錄管理</a></li>
								<li><a href="#">發票載具</a></li>
							</ul>

						</div>

					</aside>
					<aside class="single-sidebar">
						<h3>我要儲值</h3>
						<hr>

						<div class="my_account_areadiv" style="margin-top:40px;">
							<ul>
								<li><a href="#">如何儲值</a></li>
								<li><a href="#">儲值優惠查詢</a></li>
							</ul>
						</div>

					</aside>
				</div>
				
				
			</div>

		</div>
		
				
<!-- 		<div style="margin:10px 0 20px;text-align:cetner;"> -->
<!-- 		<dl style="display: block"> -->
<!-- 		<dd> -->
<!-- 		<ol> -->
<!-- 		<li><a href="#">卡痞線上購物</a></li> -->
<!-- 		<li>網路家庭國際資訊股份有限公司</li> -->
<!-- 		<li>版權所有</li> -->
<!-- 		<li>翻載必究</li> -->
<!-- 		<li><a href="#" >聯絡我們</a></li> -->
<!-- 		<li><a href="#" >隱私權聲明</a></li> -->
<!-- 		<li><a href="#" >服務條款</a></li> -->
<!-- 		</ol> -->
<!-- 		</dd> -->
		
		
		
		
<!-- 		</dl> -->
<!-- 		</div> -->

	</div>

	<!--my account area end-->

















	<jsp:include page="/WEB-INF/views/footer/footer.jsp" />
</body>
</html>
