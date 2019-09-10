<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!-- Member session測試用 -->
<%-- <jsp:useBean id="loginOK" class="com.web.store.model.MemberBean" scope="session" >  --%>
<%--    <jsp:setProperty name="loginOK" property="mId" value="2" /> --%>
<%--    <jsp:setProperty name="loginOK" property="name" value="kitty" /> --%>
<%--    <jsp:setProperty name="loginOK" property="tel" value="13245689" /> --%>
<%--    <jsp:setProperty name="loginOK" property="addr" value="taipei" /> --%>
<%-- </jsp:useBean> --%>
<html>
<head>
<meta charset="UTF-8">
<link rel='stylesheet'
	href='${pageContext.request.contextPath}/css/styles.css'
	type="text/css" />
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<title>Products</title>
</head>
<body>
	<section>
		<div>
			<div class="container" style="text-align: center">
				<h1>商品清單</h1>	
				<a href="<spring:url value='/cartConfirm'/>" class="btn btn-primary"> <span class="glyphicon-info-sigh glyphicon"></span>購物車</a>			
			</div>
			
					<c:forEach var="entry" items='${ShoppingCart.content}'>
						測試session ShoppingCart description:${entry.value.description}<p>
						測試session ShoppingCart productId:${entry.value.productId}<p>
						測試session ShoppingCart quantity:${entry.value.quantity}<p>
					</c:forEach>
					
						測試session member mId:${memberLoginOK.mId}	<p>
						測試session member name:${memberLoginOK.name}<p>
						測試session member addr:${memberLoginOK.addr}<p>
						測試session member tel:${memberLoginOK.tel}<p>
		</div>		
	</section>
	<hr
		style="height: 1px; border: none; color: #333; background-color: #333;">
	<section class="container">
		<div class="row">
			<c:forEach var="product" items='${products}'>
				<div class="col-sm-6 col-md-3" style="width: 360px; height: 360px">
					<div class="thumbnail" style="width: 320px; height: 340px">
						<div class="caption">
							<p>
								<b style='font-size: 16px;'>商品名稱 : ${product.pname}</b>
							</p>
							<a href="<spring:url value='productByIdDetails?pId=${product.pId}'/>"
								class="btn btn-primary"> <span
								class="glyphicon-info-sigh glyphicon"></span>詳細資料
							</a>
<%-- 							<a href="<spring:url value='cart?pId=${product.pId}'/>" --%>
<!-- 								class="btn btn-primary"> <span -->
<!-- 								class="glyphicon-info-sigh glyphicon"></span>加入購物車 -->

<!-- 							</a> -->
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</section>
	
<%-- 	測試session oitem description:${sessionScope.oItem.description}<p> --%>
<%-- 	測試session oitem productId:${sessionScope.oItem.productId}<p> --%>
<%-- 	測試session oitem quantity:${sessionScope.oItem.quantity}<p> --%>
<%-- 	<c:forEach var="entry" items='${ShoppingCart.content}'> --%>
<%-- 	測試session ShoppingCart description:${entry.value.description}<p> --%>
<%-- 	測試session ShoppingCart productId:${entry.value.productId}<p> --%>
<%-- 	測試session ShoppingCart quantity:${entry.value.quantity}<p> --%>
<%-- 	</c:forEach> --%>
<%-- 	測試session member mId:${member.mId}	<p> --%>
<%-- 	測試session member name:${member.name}<p> --%>
<%-- 	測試session member addr:${member.addr}<p> --%>
<%-- 	測試session member tel:${member.tel}<p> --%>

</body>
</html>
