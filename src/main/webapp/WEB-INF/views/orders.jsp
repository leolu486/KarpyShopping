<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/styles.css"
	type="text/css">
<title>Orders</title>
</head>
<body>
	<section>
		<div>
			<div class="container" style="text-align: center">
				<h1>訂單</h1>
			</div>
		</div>
	</section>
	<hr
		style="height: 1px; border: none; color: #333; background-color: #333;">

	<section class="container">
		<div class="row">
			<c:forEach var="order" items="${orders}">
				<div class="col-sm-6 col-md-3" style="width: 360px; height: 360px">
					<div class="thumbnail" style="width: 320px; height: 340px">
						<div class="caption">
							<p>
								<b style='font-size: 16px;'>訂單編號:${order.oId}</b>
							</p>
							<p>會員ID:${order.mId}</p>
							<p>日期:${order.odate}</p>
							<p>金額:${order.price}</p>
							<p>
								貨單號碼:${order.shippingNo}
								<c:if test="${order.shippingNo == null}">尚無單號</c:if>
							</p>
							<p>運送狀態:${order.status}</p>
							<p>連絡電話:${order.tel}</p>
							<p>取貨人:${order.consignee}</p>
							<p>地址:${order.addr}</p>

							<p>
								<a href="<spring:url value='/orderItemByOid?oId=${order.oId}' />"
									class="btn btn-primary"> <span
									class="glyphicon-info-sigh glyphicon"></span>詳細資料
								</a> 
								<a href="<spring:url value='/order/update?oId=${order.oId}' />"
									class="btn btn-primary"> <span
									class="glyphicon-info-sigh glyphicon"></span>買家更新訂單
								</a>
								<a href="<spring:url value='/order/VendorUpdate?oId=${order.oId}' />"
									class="btn btn-primary"> <span
									class="glyphicon-info-sigh glyphicon"></span>賣家更新訂單
								</a>
								
								<a href="<spring:url value='/order/cancel?oId=${order.oId}' />"
									class="btn btn-primary"> <span
									class="glyphicon-info-sigh glyphicon"></span>取消訂單
								</a>
								
							</p>

						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</section>
	<a class="btn btn-primary" href='<c:url value="/"/>'>回首頁</a>
</body>
</html>
