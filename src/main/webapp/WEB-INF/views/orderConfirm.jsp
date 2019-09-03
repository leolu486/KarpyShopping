<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form"  uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/styles.css"
	type="text/css">
<title>UpdateOrders</title>
</head>
<body>
	<section>
		<div>
			<div class="container" style="text-align: center">
				<h1>新增訂單</h1>
			</div>
		</div>
	</section>
	<hr
		style="height: 1px; border: none; color: #333; background-color: #333;">

	<section class="container">
	<form:form modelAttribute="order" method="POST" accept-charset="UTF-8" enctype="multipart/form-data">
		<div class="row">
				<div class="col-sm-6 col-md-3" style="width: 360px; height: 360px">
					<div class="thumbnail" style="width: 320px; height: 340px">
						<div class="caption">
										
							<p>會員編號:${member.mId}</p>
							<p>會員姓名:${member.name}</p>	
							<p>						
							總金額:<fmt:formatNumber value="${ShoppingCart.subtotal}" pattern="#,###,###" />元
							</p>
							商品:<p>
							<c:forEach var="entry" items='${ShoppingCart.content}'>
								${entry.value.description}/			
								數量${entry.value.quantity}<p>			
							</c:forEach>
							<p>運送狀態:${order.status}</p>
							<p>連絡電話:<form:input type='text' id="tel" path="tel" value='${member.tel}'/></p>
							<p>取貨人:<form:input type='text' id="consignee" path="consignee" value='${member.name}'/></p>
							<p>地址:<form:input  type='text' id="addr" path="addr" /></p>
							
							<p>				
							
<%-- 							<form:input id="price" path="price"  type="hidden"/> --%>
<%-- 							<form:input id="status" path="status"  type="hidden"/> --%>
<%-- 							<form:input id="shippingNo" path="shippingNo"  type="hidden"/> --%>
<%-- 							<form:input id="mId" path="mId" type="hidden"/> --%>
							
							
							
							</p>							
							
							<p>
								
								<a href="<c:url value='../cartConfirm' />"
									class="btn btn-default"> <span
									class="glyphicon-hand-left glyphicon"></span>返回
								</a>
								<a href="<spring:url value='/orderItemByOid?oId=${order.oId}' />" class="btn btn-primary"> 
									<span class="glyphicon-info-sigh glyphicon"></span>詳細資料
								</a> 								

									<input class="btn btn-primary" id="btn" type="submit" value="確定"/>
							</p>

						</div>
					</div>
				</div>
		
		</div>
	</form:form>
	</section>
	
</body>
</html>
