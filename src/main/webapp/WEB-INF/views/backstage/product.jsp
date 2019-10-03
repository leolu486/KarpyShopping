<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>

<head>

<link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,900'
	rel='stylesheet' type='text/css' />

<link rel="stylesheet" type="text/css"
	href="<c:url value='/backstage-source/css/bootstrap.min.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/backstage-source/css/animate.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/backstage-source/css/font-awesome.min.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/backstage-source/css/bootstrap-select.min.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/backstage-source/css/awesome-bootstrap-checkbox.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/backstage-source/css/select2.css'/>" />
<!-- ? -->
<link rel="stylesheet" type="text/css"
	href="<c:url value='/backstage-source/css/style.css'/>" />

<!-- ? -->
<link rel="stylesheet" type="text/css"
	href="<c:url value='/backstage-source/css/theme.css'/>" />

<script type="text/javascript"
	src="<c:url value='/backstage-source/js/jquery-2.1.3.min.js'/>" /></script>
<script type="text/javascript"
	src="<c:url value='/backstage-source/js/Chart.min.js'/>" /></script>
<script type="text/javascript"
	src="<c:url value='/backstage-source/js/bootstrap-select.min.js'/>" /></script>
<script type="text/javascript"
	src="<c:url value='/backstage-source/js/main.js'/>" /></script>

<script type="text/javascript"
	src="<c:url value='/backstage-source/js/index.js'/>" /></script>




</head>

<body class="flat-blue sidebar-collapse">


	<jsp:include page="/WEB-INF/views/backstage/fragment/sidebar.jsp" />

	<jsp:include page="/WEB-INF/views/backstage/fragment/navi.jsp" />

	<script>
 		$("#adminProducts").addClass("active");
	</script>

	<!-- 	 page content  -->
	<div class="content-container wrap">

		<div class="container-fluid">
			<div class="row">
				<div class="col-xs-12">
					<span class="page-title red"><h2>Products</h2></span>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-12">

					<ol class="breadcrumb">
						<li><a>Home</a></li>
						<li><a>Products</a></li>
					</ol>
				</div>
			</div>
			
	<section>
		<div>
			<div class="container" style="text-align: center">
				<h2>商品詳細資料</h2>
			</div>
		</div>
	</section>
	<section class="container">
		<div class="row">

			<div class="col-md-5">
				<p>
					<b style='font-size: 16px;'>ProductId:${product.pId}</b>
				</p>
				<p>商品名稱:${product.pname}</p>
				<p>商品價錢:${product.price}</p>
				<p>商品庫存:${product.amount}</p>
				<p>商品評價:${rankAVG}</p>
				<p>
					<a href="<spring:url value='backToSearchResult' />" class="btn btn-default">
						<span class="glyphicon-hand-left glyphicon"></span>返回
					</a>
					<a href="<spring:url value='product/update?pId=${product.pId}' />" class="btn btn-default">
						<span class="glyphicon-hand-left glyphicon"></span>修改
					</a>
					<a href="<spring:url value='product/delete?pId=${product.pId}' />" class="btn btn-default">
						<span class="glyphicon-hand-left glyphicon"></span>刪除
					</a>
				</p>
			</div>
		</div>
	</section>
		</div>
	</div>

	<footer class="footer">
		<span>Copyright by KarpyShopping</span>
	</footer>
</body>

</html>
