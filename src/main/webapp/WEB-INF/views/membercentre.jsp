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

						<div class="my_account_areadiv">
							<ul>
								<li><a href="#">訂單查詢</a></li>
								<li><a href="#">退訂/退款查詢</a></li>
								<!-- <li><a href="#">換貨/查詢</a></li> -->
								<li><a href="#">買過商品查詢</a></li>
							</ul>
						</div>

					</aside>
					<aside class="single-sidebar">
						<h3>其他查詢</h3>
						<hr>

						<div class="my_account_areadiv">
							<ul>
								<li><a href="#">訂單查詢</a></li>
								<li><a href="#">退訂/退款查詢</a></li>
								<li><a href="#">換貨/查詢</a></li>
								<li><a href="#">買過商品查詢</a></li>
							</ul>
						</div>

					</aside>
					<aside class="single-sidebar">
						<h3>個人資料管理</h3>
						<hr>

						<div class="my_account_areadiv">
							<ul>
								<li><a href="#">訂單查詢</a></li>
								<li><a href="#">退訂/退款查詢</a></li>
								<li><a href="#">換貨/查詢</a></li>
								<li><a href="#">買過商品查詢</a></li>
							</ul>
						</div>

					</aside>
				</div>
				<div style="margin-left:80px">
					<aside class="single-sidebar">
						<h3>常見問題</h3>
						<hr>

						<div class="my_account_areadiv">
							<ul>
								<li><a href="#">訂單查詢</a></li>
								<li><a href="#">退訂/退款查詢</a></li>
								<li><a href="#">換貨/查詢</a></li>
								<li><a href="#">買過商品查詢</a></li>
							</ul>
						</div>

					</aside>
					<aside class="single-sidebar">
						<h3>海外顧客常見問題</h3>
						<hr>

						<div class="my_account_areadiv">
							<ul>
								<li><a href="#">訂單查詢</a></li>
								<li><a href="#">退訂/退款查詢</a></li>
								<li><a href="#">換貨/查詢</a></li>
								<li><a href="#">買過商品查詢</a></li>
							</ul>

						</div>

					</aside>
					<aside class="single-sidebar">
						<h3>電子禮卷</h3>
						<hr>

						<div class="my_account_areadiv">
							<ul>
								<li><a href="#">訂單查詢</a></li>
								<li><a href="#">退訂/退款查詢</a></li>
								<li><a href="#">換貨/查詢</a></li>
								<li><a href="#">買過商品查詢</a></li>
							</ul>
						</div>

					</aside>
				</div>
			</div>



		</div>
	</div>

	<!--my account area end-->

















	<jsp:include page="/WEB-INF/views/footer/footer.jsp" />
</body>
</html>
