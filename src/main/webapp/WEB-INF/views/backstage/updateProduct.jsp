<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
		<div class="container">
			<h1 style="text-align: center">修改商品資料</h1>
		</div>
	</section>
	<hr
		style="height: 1px; border: none; color: #333; background-color: #333;">
	<section class="container">
		<!--       三個地方要完全一樣 -->
		
		
		<form:form method='POST' modelAttribute="productBean"
			class='form-horizontal' enctype="multipart/form-data">
			<!-- <form>加入enctype="multipart/form-data"才有檔案上傳功能 -->
			<fieldset>
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for='pname'>
						商品名稱: </label>
					<div class="col-lg-10">
						<form:input id="pname" path="pname" type='text'
							class='form:input-large' />
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for='price'>
						價錢: </label>
					<div class="col-lg-10">
						<form:input id="price" path="price" type='text'
							class='form:input-large' />
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for='vId'>
						廠商ID: </label>
					<div class="col-lg-10">
						<form:input id="vId" path="vId" type='text'
							class='form:input-large' />
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for='amount'>
						數量: </label>
					<div class="col-lg-10">
						<form:input id="amount" path="amount" type='text'
							class='form:input-large' />
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for='category'>
						商品種類: </label>
					<div class="col-lg-10">
						<form:input id="category" path="category" type='text'
							class='form:input-large' />
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for='sdate'>
						進貨日期: </label>
					<div class="col-lg-10">
						<input id="sdate1" name="sdate1" type='date' value="${sdate1}"
							class='form:input-large' />
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for='expdate'>
						到期日: </label>
					<div class="col-lg-10">
						<input id="expdate1" name="expdate1" type='date' value="${expdate1}"
							class='form:input-large' />
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for='category'>
						詳細資料: </label>
					<div class="col-lg-10">
						<form:textarea id="detail" path="detail" rows="15" cols="30" />

					</div>
				</div>
				<div>
				<label class="control-label col-lg-2 col-lg-2" for='category'>
						目前商品圖片: </label><br>
						</div>
					<img src="data:image/jpg;base64,${productImage}" width="320px"
		height="auto" />
		
		<img src="data:image/jpg;base64,${productImage1}" width="320px"
		height="auto" />
		
<%-- 		<img src="data:image/jpg;base64,${productImage2}" width="320px" --%>
<!-- 		height="auto" /> -->
		
<%-- 		<img src="data:image/jpg;base64,${productImage3}" width="320px" --%>
<!-- 		height="auto" /> -->
		
		<div>
		<label class="control-label col-lg-2 col-lg-2" for='category'>
						重新上傳商品圖片: </label>
						</div>
						<hr>
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for='category'>
						商品圖片1: </label>
					<div class="col-lg-10">
						<form:input id="productImageTemp" path="productImageTemp"
							type="file" class='form:input-large' />
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for='category'>
						商品圖片2: </label>
					<div class="col-lg-10">
						<form:input id="productImageTemp1" path="productImageTemp1" type="file"
							class='form:input-large' />
					</div>
				</div>
				
<!-- 				<div class="form-group"> -->
<!-- 					<label class="control-label col-lg-2 col-lg-2" for='category'> -->
<!-- 						商品圖片3: </label> -->
<!-- 					<div class="col-lg-10"> -->
<%-- 						<form:input id="productImageTemp2" path="productImageTemp2" type="file" --%>
<%-- 							class='form:input-large' /> --%>
<!-- 					</div> -->
<!-- 				</div> -->
				
<!-- 				<div class="form-group"> -->
<!-- 					<label class="control-label col-lg-2 col-lg-2" for='category'> -->
<!-- 						商品圖片4: </label> -->
<!-- 					<div class="col-lg-10"> -->
<%-- 						<form:input id="productImageTemp3" path="productImageTemp3" type="file" --%>
<%-- 							class='form:input-large' /> --%>
<!-- 					</div> -->
<!-- 				</div> -->

				<div class="form-group">
					<div class='col-lg-offset-2 col-lg-10'>
						<input id="btnAdd" type='submit' class='btn btn-primary'
							value="修改" />
					</div>
				</div>



			</fieldset>
		</form:form>
	</section>
		</div>
	</div>

	<footer class="footer">
		<span>Copyright by KarpyShopping</span>
	</footer>
</body>

</html>
