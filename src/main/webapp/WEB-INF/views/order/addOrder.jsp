<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!doctype html>
<html lang="zh-tw">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/shoppingCart/font-awesome.min.css' />">
<!-- Custom styles for this template -->
<link rel="stylesheet" type="text/css"
	href="<c:url value='/order/form-validation.css' />">

<title>結帳頁面</title>
</head>
<style>
#items_outer_div::-webkit-scrollbar {
	width: 0.5em;
}

#items_outer_div::-webkit-scrollbar-track {
	-webkit-box-shadow: inset 0 0 6px rgb(0, 0, 0, 0, 3);
	border-radius: 10px;
}

#items_outer_div::-webkit-scrollbar-thumb {
	border-radius: 10px;
	background-color: darkgrey;
	outline: 1px solid slategrey;
}
</style>
<body class="bg-light">
	<div class="wrapper">
		<div class="header">
			<jsp:include page="/WEB-INF/views/fragment/top.jsp" />
		</div>
		<div class="content" style="margin: 30px">
			<div class="container" style="height: 800px; width: 1500px">
				<div class="py-5 text-center">
					<img class="d-block mx-auto mb-4"
						src="https://getbootstrap.com/assets/brand/bootstrap-solid.svg"
						alt="" width="72" height="72">
					<h1 class="font-weight-bold">結帳</h1>
				</div>

				<!-- 購物車檢視 -->
				<div class="row">
					<div class="col-md-4 order-md-2 mb-4">
						<h4 class="d-flex justify-content-between align-items-center mb-3">
							<span class="text-muted font-weight-bold">訂單詳情</span> <span><strong
								class="text-danger">${insertError.emptyCart}</strong></span>
						</h4>

						<div id="items_outer_div"
							style="max-height: 300px; overflow-y: auto">
							<div>
								<ul class="list-group mb-3">
									<c:forEach varStatus="vs" var="anEntry"
										items="${ShoppingCart.content}">
										<li
											class="list-group-item d-flex justify-content-between lh-condensed">
											<div>
												<h6 class="my-0">${anEntry.value.description}x
													${anEntry.value.quantity}</h6>
												<small class="text-muted"><fmt:formatNumber
														value="${anEntry.value.unitPrice * anEntry.value.discount }"
														pattern="#,###" />元</small>
											</div>
										</li>
									</c:forEach>
								</ul>
							</div>
						</div>
						<div class="input-group"
							style="background-color: white; padding: 15px; margin-top: 5px; border-radius: 10px;">
							<span class="h5"><strong>總付款金額</strong></span> <span class="h5"><strong><fmt:formatNumber
										value="${ShoppingCart.subtotal}" pattern="#,###,###" />元</strong></span>
						</div>
						<form class="card p-2" style="height: 120px">
							<div class="input-group">
								<input type="text" class="m-2" placeholder="請輸入代碼">
								<div class="input-group-append">
									<button type="submit" class="btn btn-secondary m-3">使用折價券</button>
								</div>
							</div>
						</form>
					</div>
					<div class="col-md-8 order-md-1">
						<h3 class="mb-3 font-weight-bold h3">請確認以下資訊:</h3>

						<jsp:include page="/WEB-INF/views/fragment/rightIcon.jsp" />

						<!--    結帳資訊        -->
						<form:form id="orderForm" modelAttribute='order' method='POST'
							class='needs-validation' novalidate="novalidate"
							enctype="multipart/form-data">
							<div class="mb-3">
								<p class="h6">
									<strong>會員編號: ${memberLoginOK.mId}</strong>
								</p>
								<p class="h6">
									<strong>會員姓名: ${memberLoginOK.name}</strong>
								</p>

							</div>

							<div class="mb-3">
								<label for="tel" class="h6"><strong>聯絡電話:</strong></label>
								<form:input type="text" class="form-control"
									style="background-color:white;" id="tel" path="tel"
									value='${memberLoginOK.tel}' required="required" />
								<div>
									<strong class="text-danger">${insertError.emptyTel}</strong>
								</div>
								<div class="invalid-feedback">
									<strong>此欄位不可為空白</strong>
								</div>
							</div>

							<div class="mb-3">
								<label for="addr" class="h6"><strong>寄送地址:</strong></label>
								<form:input type="text" class="form-control"
									style="background-color:white;" id="addr" path="addr"
									value='${memberLoginOK.addr}' required="required" />
								<div>
									<strong class="text-danger">${insertError.emptyAddr }</strong>
								</div>
								<div class="invalid-feedback">
									<strong>此欄位不可為空白</strong>
								</div>
							</div>
							<div class="mb-3">
								<label for="consignee" class="h6"><strong>收貨人:</strong></label>
								<form:input type="text" class="form-control"
									style="background-color:white;" id="consignee" path="consignee"
									value='${memberLoginOK.name}' required="required" />
								<div>
									<strong class="text-danger">${insertError.emptyConsignee}</strong>
								</div>
								<div class="invalid-feedback">
									<strong>此欄位不可為空白</strong>
								</div>
							</div>
							<hr class="mb-4">
							<button id="submit" class="btn btn-danger btn-lg btn-block"
								type="submit">下訂單</button>
						</form:form>
					</div>
				</div>

			</div>
		</div>
		<div class="footer">
			<jsp:include page="/WEB-INF/views/footer/footer.jsp" />
		</div>
	</div>
	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/holder/2.9.4/holder.min.js"></script>
	<script>
		// Example starter JavaScript for disabling form submissions if there are invalid fields
		(function() {
			'use strict';

			window.addEventListener('load',
					function() {
						// Fetch all the forms we want to apply custom Bootstrap validation styles to
						var forms = document
								.getElementsByClassName('needs-validation');

						// Loop over them and prevent submission
						var validation = Array.prototype.filter.call(forms,
								function(form) {
									form.addEventListener('submit', function(
											event) {
										if (form.checkValidity() === false) {
											event.preventDefault();
											event.stopPropagation();
										}
										form.classList.add('was-validated');
									}, false);
								});
					}, false);
		})();
	</script>

	<script>
		document
				.getElementById("submit")
				.addEventListener(
						"click",
						function(event) {
							if (confirm("你確定要下訂單嗎?")) {
								document.getElementById("orderForm").action = "<c:url value='/addOrder' />";
								document.getElementById("orderForm").submit();
							} else {
								event.preventDefault();
								return false;
							}
						})
	</script>
</body>
</html>