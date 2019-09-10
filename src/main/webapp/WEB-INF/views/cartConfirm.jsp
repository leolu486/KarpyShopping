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
<title>購物車</title>
<link rel='stylesheet' href='css/styles.css' type="text/css" />

<!-- for購物車 -->
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<!-- for購物車 -->
</head>

<body>
	<section>
		<div class="container">
			<h1 style="text-align: center">購物車</h1>
		</div>
	</section>
	<hr style="height: 1px; border: none; color: #333; background-color: #333;">
	<section class="container">

					<div class='col-lg-offset-2 col-lg-10'>
						<a class="btn btn-primary" href='<spring:url value="/productsAddCart"/>'>繼續購物</a>
						<a class="btn btn-primary" href='<spring:url value="/order/add"/>'>新增訂單</a>
						<a class="btn btn-primary" href='<spring:url value="/cancel"/>'>取消購買</a>						
					</div>
	</section>

	<table border='1' >
	<TR><td>商品描述</td><td>商品id</td><td>單價</td><td>訂購數量</td><td>小計</td></TR>
		<c:forEach varStatus="vs" var="anEntry" items="${ShoppingCart.content}">
			<TR height='16'>
				<TD style="text-align: left; font-size: 11pt;">
					${anEntry.value.description}
				</TD>
				<TD style="text-align: center; font-size: 11pt;">
					${anEntry.value.productId}
				</TD>
				<TD style="text-align: right; font-size: 11pt;">
					<fmt:formatNumber value="${anEntry.value.unitPrice * anEntry.value.discount }" pattern="#,###" />元
				</TD>
				<TD style="text-align: right; font-size: 11pt;">
					${anEntry.value.quantity}</TD>
				<TD style="text-align: right; font-size: 11pt;">
					<fmt:formatNumber value="${anEntry.value.unitPrice * anEntry.value.discount * anEntry.value.quantity}" pattern="#,###" />元
				</TD>
				<TD style="text-align: right; font-size: 11pt;">
					<a class="btn btn-primary" href='<spring:url value="/cancelProduct?pId=${anEntry.key}"/>'>取消此商品</a>	
				</TD>
			</TR>
		</c:forEach>
		
			<tr>
				<TD style="text-align: right; font-size: 11pt;">
					總金額:<fmt:formatNumber value="${ShoppingCart.subtotal}" pattern="#,###,###" />元
				</TD>
			</tr>
	</table>
	
	
<!-- 購物車	 -->
	<form:form>
	<div class="container">
	<div class="row">
		<div class="col-xs-8">
			<div class="panel panel-info">
				<div class="panel-heading">
					<div class="panel-title">
						<div class="row">
							<div class="col-xs-6">
								<h5><span class="glyphicon glyphicon-shopping-cart"></span> 購物車</h5>
							</div>
						</div>
					</div>
				</div>
				<div class="panel-body">
				<c:forEach varStatus="vs" var="anEntry" items="${ShoppingCart.content}">
					<div class="row">
						<div class="col-xs-2"><img class="img-responsive" src="http://placehold.it/100x70">
						</div>
						<div class="col-xs-4">
							<h4 class="product-name"><strong>商品名稱</strong></h4><h4><small>${anEntry.value.description}</small></h4>
						</div>
						<div class="col-xs-6">
							<div class="col-xs-6 text-right">
								<h6><strong><fmt:formatNumber value="${anEntry.value.unitPrice * anEntry.value.discount }" pattern="#,###" />元 <span class="text-muted">x</span></strong></h6>
							</div>
							<div class="col-xs-4">
								<input type="number" id="${vs.index}qty" min="1" max="10" class="form-control input-sm" value="${anEntry.value.quantity}" >
							</div>
							<div class="col-xs-2">
								<button type="button" class="btn btn-link btn-xs" onclick="return cancelProduct(${anEntry.key})" >
									<span class="glyphicon glyphicon-trash"> </span>
								</button>								
							</div>
							<div>
								<button type="button" class="btn btn-default btn-sm btn-block" onclick="return modifyQty(${anEntry.key}, ${anEntry.value.quantity}, ${vs.index})">
										更新購買數量
								</button>
							</div>
						</div>
					</div>
					<hr>		
				</c:forEach>

				</div>
				<div class="panel-footer">
					<div class="row text-center">
					<div class="col-xs-3">
								<button type="button" class="btn btn-primary btn-sm btn-block" onclick="return continueShopping()">
									<span class="glyphicon glyphicon-share-alt"></span> 繼續購物
								</button>
							</div>
						<div class="col-xs-6">
							<h4 class="text-right">總金額:<strong><fmt:formatNumber value="${ShoppingCart.subtotal}" pattern="#,###,###" />元</strong></h4>
						</div>
						<div class="col-xs-3">
							<button type="button" class="btn btn-success btn-block" onclick="return checkOut()">
								去買單
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</div>
</form:form>

	<a class="btn btn-primary" href='<c:url value="/"/>'>回首頁</a>
	
<!-- 購物車script -->
<script type="text/javascript">

function continueShopping(){
	if (confirm("離開此頁，繼續購物  ") ) {
		window.location.href="<c:url value='/productsAddCart' />";
	}
}

function checkOut(){
	if(confirm("去買單")){
		window.location.href="<c:url value='/order/add' />";
	}
}

function cancelProduct(pId){
	if(confirm("你確定要移除嗎?")){
		document.forms[0].action="<c:url value='/cancelProduct?pId=" + pId + "' />";
		document.forms[0].submit();
		
	}
}

function modifyQty(pId, qty,index){
	let x = index+"qty";
	let newQty = document.getElementById(x).value;
	if(confirm("購買數量將變更為" + newQty + "個，請確認是否更新" )){
		document.forms[0].action="<c:url value='/modifyQty?pId=" + pId + "&newQty=" + newQty + "' />";
		document.forms[0].submit();
	}
}
<!-- 購物車script -->

</script>

</body>
</html>
