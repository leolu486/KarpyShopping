<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<link rel='stylesheet'
	href='${pageContext.request.contextPath}/css/styles.css'
	type="text/css" />
<meta charset="UTF-8">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<style type="text/css">
fieldset {
	border: 1px solid rgb(255, 232, 57);
	width: 400px;
	margin: auto;
}
</style>
<title>cartConfirm</title>
<link rel='stylesheet' href='css/styles.css' type="text/css" />
</head>

<%

	
%>
<body>
	<section>
		<div class="container">
			<h1 style="text-align: center">購物車</h1>
		</div>
	</section>
	<hr style="height: 1px; border: none; color: #333; background-color: #333;">
	<section class="container">
		<!--       三個地方要完全一樣 -->
<%-- 		<form:form method='POST' modelAttribute="oItem" action="/persistOrder" class='form-horizontal' enctype="multipart/form-data">  --%>
<!-- 			<fieldset>  -->
<%-- 				<form:input id="description" path="description" type="hidden" /> --%>
<%-- 				<form:input id="description" path="discount" type="hidden" /> --%>
<%-- 				<form:input id="description" path="productId" type="hidden" /> --%>
<%-- 				<form:input id="description" path="description" type="hidden" /> --%>
				


			

					<div class='col-lg-offset-2 col-lg-10'>
						<a class="btn btn-primary" href='<spring:url value="/productsAddCart"/>'>繼續購物</a>
						<a class="btn btn-primary" href='<spring:url value="/order/add"/>'>新增訂單</a>
<!-- 						<input id="btnAdd" type='submit' class='btn btn-primary' value="新增" /> -->
					</div>
<!-- 			</fieldset> -->
<%-- 		</form:form> --%>
	</section>

	<table border='1'>
		<c:forEach varStatus="vs" var="anEntry" items="${ShoppingCart.content}">
			<TR height='16'>
				<TD style="text-align: left; font-size: 11pt;">
					商品描述:${anEntry.value.description}
				</TD>
				<TD style="text-align: center; font-size: 11pt;">
					商品id:${anEntry.value.productId}
				</TD>
				<TD style="text-align: right; font-size: 11pt;">
					單價:<fmt:formatNumber value="${anEntry.value.unitPrice * anEntry.value.discount }" pattern="#,###" />元
				</TD>
				<TD style="text-align: right; font-size: 11pt;">
					訂購數量:${anEntry.value.quantity}</TD>
				<TD style="text-align: right; font-size: 11pt;">
					小計:<fmt:formatNumber value="${anEntry.value.unitPrice * anEntry.value.discount * anEntry.value.quantity}" pattern="#,###" />元
				</TD>
			</TR>
		</c:forEach>
		
			<tr>
				<TD style="text-align: right; font-size: 11pt;">
					總金額:<fmt:formatNumber value="${ShoppingCart.subtotal}" pattern="#,###,###" />元
				</TD>
			</tr>
	</table>
	
		<c:forEach var="entry" items='${ShoppingCart.content}'>
				測試session ShoppingCart oitem description:${entry.value.description}<p>
				測試session ShoppingCart oitem productId:${entry.value.productId}<p>
				測試session ShoppingCart oitem quantity:${entry.value.quantity}<p>
		</c:forEach>
				測試session member mId:${member.mId}	<p>
				測試session member name:${member.name}<p>
				測試session member name:${member.addr}<p>
				測試session member name:${member.tel}<p>		

	<a class="btn btn-primary" href='<c:url value="/"/>'>回首頁</a>

</body>
</html>
