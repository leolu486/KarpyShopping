<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<title>Product</title>
</head>
<body>
	<section>
		<div>
			<div class="container" style="text-align: center">
				<h2>訂單項目</h2>
			</div>
		</div>
	</section>
	<section class="container">
		<div class="row">
			<div class="col-md-5">
				<h3>${OrderItems.seqno}</h3>
				<p>訂單號: ${OrderItems.orderNo}</p>
				<p>商品號: ${OrderItems.productId}</p>
<%-- 				<c:choose> --%>
<%-- 					<c:when test='${product.discount != 1.0 }'> --%>
<!-- 						<p> -->
<%-- 							折扣: ${OrderItems.discountStr} &nbsp;&nbsp;  --%>
<%-- 							實售: <font color='red'>${OrderItems.quantity*OrderItems.unitPrice}元</font> --%>
<!-- 						</p> -->
<%-- 					</c:when> --%>
<%-- 					<c:otherwise> --%>
<!-- 						<p>&nbsp;</p> -->
<%-- 					</c:otherwise> --%>
<%-- 				</c:choose> --%>
				<p>描述: ${OrderItems.description}</p>
				<p>數量: ${OrderItems.quantity}</p>
				<p>
					<strong>單價: </strong> <span class='label label-warning'>
						${OrderItems.unitPrice} </span>
				</p>
				<p>總價: ${OrderItems.unitPrice * OrderItems.quantity * OrderItems.discount}</p>
				<p>
					<a href="<spring:url value='/OrderItem' />" class="btn btn-default">
						<span class="glyphicon-hand-left glyphicon"></span>返回
					</a> 
<!-- 					<a href='#' class='btn btn-warning btn-large'>  -->
<!-- 					    <span class='glyphicon-shopping-cart glyphicon'></span>加入購物車 -->
<!-- 					</a> -->
				</p>
			</div>
		</div>
	</section>
</body>
</html>
