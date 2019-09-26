<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link
	href="https://fonts.googleapis.com/css?family=Noto+Sans+TC&display=swap&subset=chinese-traditional"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="<c:url value= "/css/reset.css" />"
	type=" text/css" />
<link rel="stylesheet" href="<c:url value="/css/common.css" />"
	type=" text/css" />
<link rel="stylesheet"
	href="<c:url value="/css/font-awesome2.min.css" />" type=" text/css" />
<link rel="stylesheet" href="<c:url value="/css/style.css" />"
	type="text/css" />
<link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css" />"
	type="text/css" />
<%-- 	<link rel="stylesheet" href="<c:url value="/css/test.css" />" --%>
<!-- 	type="text/css" /> -->
<!-- <script type="text/javascript" -->
<%-- 	src="${pageContext.request.contextPath }/js/modernizr-2.8.3.min.js"></script> --%>
<meta charset="UTF-8">
<title>發票資訊</title>
</head>
<!-- <script src="js/AddressSelectList.js"></script> -->

<script type="text/javascript">
	//document start
	$(document).ready(function() {
		$("#taxIdList").show();
		//form change
		$("#tshow").click(function() {
			$("#addTaxId").hide();
			$("#taxIdList").show();
			$("#vehicleList").hide();
		});
		$("#vshow").click(function() {
			$("#vehicleList").show();
			$("#addTaxId").hide();
			$("#taxIdList").hide();
		});
		$("#addId").click(function() {
			$("#addTaxId").show();
			$("#taxIdList").hide();
			$("#vehicleList").hide();
		});
	});
</script>
<style>
.center {
	margin: 0 auto;
	float: none;
}

.border2 {
	background-color: #FFFFFF;
	width: 700px;
	height: 550px;
	margin-left: 230px;
	padding-top: 20px;
	margin-top: 15px;
}

.border1 {
	padding: 0px;
	margin: 0px;
	margin-left: 45px;
	margin-top: 24px;
	width: 150px;
	float: left;
}

.catalog {
	margin: 15px 0;
	font-size: 15px;
	list-style-type: none;
	text-align: center;
}

.p1 {
	font-size: 25px;
	text-align: left;
	color: #FF7F50;
}

.div2 {
	background-color: #F5F5F5;
	width: 1000px;
	height: 600px;
	margin-left: 430px;
	height: 600px;
}

.p1234 {
	font-size: 25px;
	text-align: center;
	font-weight: bold;
}

@media ( min-width : 600px) and (max-width: 1200px) {
	.rwdtxt {
		font-size: calc(1.2rem + ( 1.3 -1.2)* ((100vw- 600px)/(1200- 600)));
	}
}

@media ( min-width : 1200px) {
	.rwdtxt {
		font-size: 1.3rem;
	}
}

.p1234 {
	font-size: 20px;
}

@media ( min-width : 600px) and (max-width: 1200px) {
	.rwdtxt {
		font-size: calc(1.2rem + ( 1.3 -1.2)* ((100vw- 600px)/(1200- 600)));
	}
}

@media ( min-width : 1200px) {
	.rwdtxt {
		font-size: 1.3rem;
	}
}
</style>

<style>
.sub {
	text-align: center;
	width: 450px;
}

.st1 {
	font-size: 23px;
	border-bottom: 0px solid gray;
	width: 550px;
	margin-left: 190px;
	padding: 10px;
	float: left;
	text-align: left;
}

#error1, #error2, #error3 {
	font-size: 15px;
}

::placeholder {
	text-align: center;
	font-size: 16px;
	color: #AAAAAA;
}

/* addCreditCard Css */
.example_e {
	border: none;
	background: #404040;
	color: #ffffff !important;
	font-weight: 100;
	padding: 20px;
	text-transform: uppercase;
	border-radius: 6px;
	display: inline-block;
	transition: all 0.3s ease 0s;
	font-size: 16px;
}

.example_e:hover {
	color: green !important;
	font-weight: 700 !important;
	letter-spacing: 3px;
	background: #f6b93b;
	border-color: #f6b93b !important;
	-webkit-box-shadow: 0px 5px 40px -10px rgba(0, 0, 0, 0.57);
	-moz-box-shadow: 0px 5px 40px -10px rgba(0, 0, 0, 0.57);
	transition: all 0.4s ease 0s;
}

/* scrollbar css */
.row::-webkit-scrollbar {
	width: 8px;
}

.row::-webkit-scrollbar-track {
	-webkit-border-radius: 10px;
	border-radius: 10px;
	margin: 0px 0 5px 0;
}

.row::-webkit-scrollbar-thumb {
	-webkit-border-radius: 4px;
	border-radius: 4px;
	background: rgb(191, 191, 191);
}
</style>
<body>

	<jsp:include page="/WEB-INF/views/fragment/top.jsp" />
	<!-- <div class="d-flex justify-content-center align-items-center w-100"> -->
	<br>
	<div style="font-family: 'Noto Sans TC', sans-serif;">
		<div class="div2">
			<div style="margin-right: 200px; padding-top: 10px">
				<div class="border1">
					<div>
						<div>
							<c:if test="${empty memberImage}">
								<img
									src="<c:url value='/images/default-img/default_member_image.jpg'/>"
									width="200px" height="auto" />
							</c:if>
							<c:if test="${! empty memberImage}">
								<img src="data:image/jpg;base64,${memberImage}" width="200px"
									height="auto" />
							</c:if>

							<p style="text-align: center">${memberLoginOK.name}</p>
						</div>
						<ul>
							<li class="p1234">我的帳戶</li>
							<li class="catalog"><a href="#" id="tshow">統一編號</a></li>
							<!-- cannot change password when login as gmail or line -->
							<li class="catalog"><a href="#" id="vshow">載具資料</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="border2" id="taxIdList" style="display: none">
				<section class="container">
					<p class="p1">統編清單</p>
					<hr style="width: 60%">
					<div class="row"
						style="width: 700px; height: 360px; overflow: auto;">
						<c:if test="${! empty list }">
							<c:forEach var="TaxId" items='${list}'>

								<div class="thumbnail"
									style="width: 260px; height: 140px; margin-left: 55px; margin-top: 16px; border-radius: 15px;">
									<div class="caption">

										<p>統編號碼: ${TaxId.tnumber}</p>
										<p>公司名稱 : ${TaxId.tname}</p>
										<p>相關備註 : ${TaxId.tnote}</p>
										<div style="text-align: center;">
											<a href='delTaxId?tId=${TaxId.tId}'><button>刪除</button></a>
										</div>

									</div>
								</div>
							</c:forEach>
						</c:if>
						<c:if test="${ empty list }">
							<div
								style="margin: auto auto;; vertical-align: bottom; text-align: center">
								<h2>親愛的會員${memberLoginOK.name}，您目前尚無統編資訊</h2>
							</div>
						</c:if>

					</div>
				</section>
				<div id="addId" style="text-align: center;">
					<hr style="width: 95%; margin: 2.5%;">
					<div class="button_cont" align="center">
						<a class="example_e" href="#">新增統編資訊</a>
					</div>
				</div>
			</div>

			<div class="border2" id="addTaxId" style="display: none">
				<section class="container">
					<p class="p1">新增統編資訊</p>
					<hr style="width: 60%">
					<form:form method='POST' modelAttribute="TaxIdBean"
						class='form-horizontal' enctype="multipart/form-data">
						<div style="padding-left: 150px; padding-top: 20px; magin-top:200px;">
							<div class="form-group row " style="padding-top:100px">
								<label for="tnumber" class="col-sm-2 col-form-label">統編號碼：</label>
								<div class="col-auto ">
									<form:input class="form-control" id="tnumber" path="tnumber"
										placeholder="統編號碼" autofocus="autofocus" />
								</div>
							</div>

							<div class="form-group row ">
								<label for="tnumber" class="col-sm-2 col-form-label">公司名稱：</label>
								<div class="col-auto ">
									<form:input class="form-control" id="tname" path="tname"
										placeholder="公司名稱" autofocus="autofocus" />
								</div>
							</div>
							<div class="form-group row">
								<label for="tnote" class="col-sm-2 col-form-label">備註：</label>
								<div class="col-auto">
									<form:input class="form-control" id="tnote" path="tnote"
										type='text' placeholder="備註" />
								</div>
							</div>
							<div class="form_btn" style="margin-left: 20px">
								<button type="submit" id="submit">確認更改</button>
							</div>
						</div>
						<input name="form" type='hidden' value='true' />
					</form:form>
				</section>
			</div>
			<div class="border2" id="vehicleList" style="display: none">
				<section class="container">
				<p class="p1">載具資料</p>
				<hr style="width: 670px">
				<form:form method='POST' modelAttribute="memberBean"
					class='form-horizontal' enctype="multipart/form-data">
					<div style="padding-left: 150px; padding-top: 20px;">
						<div class="form-group row" style="padding-bottom:100px; padding-top:100px;">
							<label for="vehicle" class="col-sm-2 col-form-label">現存載具：</label>
							<div class="col-auto ">
								<form:input type="text" class="form-control" id="vehicle"
									placeholder="請輸入載具" autofocus="autofocus" path="vehicle"
									value="" />
							</div>
						</div>
						<div class="form_btn" style="margin-left: 20px">
							<button type="submit" id="sign">確認更改</button>
							<input name="form" type='hidden' value='false' />
<!-- 							 <input -->
<!-- 								name="tnumber" type="hidden" placeholder="統編號碼"> <input -->
<!-- 								name="tname" type="hidden" placeholder="公司名稱"> <input -->
<!-- 								name="tnote" type="hidden" placeholder="備註"> -->
						</div>
					</div>
				</form:form>
				</section>
			</div>
		</div>
	</div>
	<br>
	<jsp:include page="/WEB-INF/views/footer/footer.jsp" />
</body>
</html>