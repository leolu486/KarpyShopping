<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<meta charset="UTF-8">
<link rel='stylesheet'
	href='${pageContext.request.contextPath}/css/styles.css'
	type="text/css" />
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<title>Product</title>
</head>
<body>
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
					<a href="<spring:url value='products' />" class="btn btn-default">
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
</body>
</html>
