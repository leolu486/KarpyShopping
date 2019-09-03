<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%> --%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/styles.css"
	type="text/css">
<title>OrderItem</title>
</head>
<body>
	<section>
		<div>
			<div class="container" style="text-align: center">
				<h2>訂單明細</h2>
			</div>
		</div>
	</section>
<!-- 	<section class="container"> -->
<!-- 		<div class="row"> -->
<!-- 			<div class="col-md-5"> -->
<%-- 				<h3>訂單編號:${item.orderBean.oId}</h3> --%>
<%-- 				<p>商品描述: ${item.description}</p> --%>
<%-- 				<p>單價: ${item.unitPrice}</p> --%>
<%-- 				<c:choose> --%>
<%-- 					<c:when test='${item.discount != 1.0 }'> --%>
<!-- 						<p> -->
<%-- 							折扣: ${(item.discount)*10}折 &nbsp;&nbsp; 實售: <font color='red'>${item.unitPrice*item.discount}元</font> --%>
<!-- 						</p> -->
<%-- 					</c:when> --%>
<%-- 					<c:otherwise> --%>
<!-- 						<p>&nbsp;</p> -->
<%-- 					</c:otherwise> --%>
<%-- 				</c:choose> --%>

<!-- 				<p> -->
<!-- 					<strong>商品編號: </strong> <span class='label label-warning'> -->
<%-- 						${product.bookId} </span> --%>
<!-- 				</p> -->
<!-- 				<p> -->
<%-- 					<a href="<spring:url value='/products' />" class="btn btn-default"> --%>
<!-- 						<span class="glyphicon-hand-left glyphicon"></span>返回 -->
<!-- 					</a> <a href='#' class='btn btn-warning btn-large'> <span -->
<!-- 						class='glyphicon-shopping-cart glyphicon'></span>加入購物車 -->
<!-- 					</a> -->
<!-- 				</p> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</section> -->



	<section class="container">
		<div class="row">
			<c:forEach var="item" items="${items}">
				<div class="col-sm-6 col-md-3" style="width: 360px; height: 360px">
					<div class="thumbnail" style="width: 320px; height: 340px">
						<div class="caption">
							<p>
								<b style='font-size: 16px;'>訂單編號::${item.orderBean.oId}</b>
							</p>
							<p>商品描述: ${item.description}</p>
							<p>單價: ${item.unitPrice}</p>
							<c:choose>
								<c:when test='${item.discount != 1.0 }'>
									<p>
										折扣: ${(item.discount)*10}折 &nbsp;&nbsp; 實售: <font color='red'>${item.unitPrice*item.discount}元</font>
									</p>
								</c:when>
								<c:otherwise>
									<p>&nbsp;</p>
								</c:otherwise>
							</c:choose>
							<p>
								<a href="<spring:url value='${header.referer}' />"
									class="btn btn-default"> <span
									class="glyphicon-hand-left glyphicon"></span>返回
								</a>
							</p>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</section>



</body>
</html>
