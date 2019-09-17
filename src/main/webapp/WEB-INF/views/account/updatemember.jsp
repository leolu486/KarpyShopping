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
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"
	integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"
	integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k"
	crossorigin="anonymous"></script>
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
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/AddressSelectList.js"></script>
<title>Document</title>
</head>
<!-- <script src="js/AddressSelectList.js"></script> -->
<script type="text/javascript">
	window.onload = function() {
		//當頁面載完之後，用AddressSeleclList.Initialize()，
		//傳入要綁定的縣市下拉選單ID及鄉鎮市區下拉選單ID
		AddressSeleclList.Initialize('city', 'city2');
	}

	function show() {
		//取出指定縣市及鄉鎮市區的下拉選單的值
		alert(AddressSeleclList.ReturnSelectAddress('city', 'city2'));
	}

	$(document).ready(function() {
		$("#鄉鎮市區").change(function() {
			$("#zip").val($(this).val());
		})
	});

	$(document).ready(function() {
		$("#blogin").click(function() {
			$("#register").hide();
			$("#addCreditCard").hide();
			$("#login").show();
		});
		$("#rlogin").click(function() {
			$("#register").show();
			$("#login").hide();
			$("#addCreditCard").hide();
		});
		$("#Clogin").click(function() {
			$("#register").hide();
			$("#login").hide();
			$("#addCreditCard").show();
		});
	});

	$('#Pin CNumber').on("input propertychange", function() {
		var _this = $(this);
		inputFun(_this);
	});

	function inputFun(value) {
		var reg = new RegExp("^[0-9]*$");
		var val = value.val();
		if (!reg.test(val)) {
			value.val('')
		} else {
			value.next().focus();
		}
	}
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
	margin: 6px 0;
	font-size: 15px;
	list-style-type: none;
}

.p1 {
	font-size: 25px;
	text-align: left;
}

.div2 {
	width: 1000px;
	height: 600px;
	margin-left: 25%;
	margin-top: 30px;
	padding-top: 22px;
	background-color: #F5F5F5;
}

.p1234 {
	font-size: 20px;
}

.rwdtxt {
	font-size: 1.2rem;
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
}
</style>
<body>

	<jsp:include page="/WEB-INF/views/fragment/top.jsp" />
	<!-- <div class="d-flex justify-content-center align-items-center w-100"> -->


	<div class="div2">
		<div class="border1">
			<dd>
				<ul>
					<p class="p1234">我的帳戶</p>
					<li class="catalog"><a href="#" id="blogin">個人資料</a></li>
					<li class="catalog"><a href="#" id="rlogin">修改密碼</a></li>
					<li class="catalog"><a href="#" id="Clogin">信用卡資料</a></li>
				</ul>
			</dd>

		</div>
		<!-- login block -->
		<form:form method='POST' modelAttribute="MemberBean"
			enctype="multipart/form-data">
			<div class="border2" id="login">
				<div class="container">
					<p class="p1">個人檔案</p>
					<hr style="width: 60%">
					<div style="padding-left: 150px; padding-top: 20px;">
						<div class="form-group row ">
							<label for="inputEmail3" class="col-sm-2 col-form-label">姓名：</label>
							<div class="col-auto ">
								<form:input type="text" class="form-control" id="inputEmail3"
									placeholder="姓名" autofocus="autofocus" path="name" />
							</div>
						</div>
						<!-- 						<div class="form-group row"> -->
						<!-- 							<label for="id" class="col-sm-2 col-form-label">照片：</label> -->
						<!-- 							<div class="col-auto"> -->
						<%-- 								<form:input type="file" class="form-control-file" id="exampleFormControlFile1" --%>
						<%-- 									placeholder="未設定" path="memberImage" /> --%>
						<!-- 							</div> -->
						<!-- 						</div> -->
						<div class="form-group row">
							<label for="email" class="col-sm-2 col-form-label">Email：</label>
							<div class="col-auto">
								<form:input type="email" class="form-control"
									id="inputEmail3" placeholder="Email" path="email" />
							</div>
						</div>
						<div class="form-group row">
							<label for="phone" class="col-sm-2 col-form-label">手機：</label>
							<div class="col-auto">
								<form:input type="phone" class="form-control"
									id="phone" placeholder="phone" path="tel" />
							</div>
						</div>
						<div class="form-group row">
							<label for="date" class="col-sm-2 col-form-label">生日：</label>
							<div class="col-auto">
								<input class="form-control-plaintext" id="date" name="date"
									type='date' placeholder="未設定"  />
							</div>
						</div>
						<fieldset class="form-group">
							<div class="row">
								<label class="col-form-label col-sm-2 pt-0">性別：</label>
								<div class="col-auto">
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="radio" name="gender"
											id="gridRadios1" value="male" /> <label
											class="form-check-label" for="男性"> 男性 </label>
									</div>
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="radio" name="gender"
											id="gridRadios2" value="fmale" /> <label
											class="form-check-label" for="女性"> 女性 </label>
									</div>
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="radio" name="gender"
											id="gridRadios2" value="others" /> <label
											class="form-check-label" for="其他/保密"> 其他/保密 </label>
									</div>
								</div>
							</div>
						</fieldset>
						<div class="form-group row form-check-inline">
							<label for="inputEmail3" class="col-sm col-form-label">地址：</label>
						</div>
						<!-- <select id="縣市">
                </select>
                <select id="鄉鎮市區">
                </select><br> -->

						<div class="form-row align-items-center form-check-inline">
							<div class="col-auto my-1 ">
								<label class="mr-sm-2 sr-only" for="inlineFormCustomSelect">縣市</label>
								<select class="custom-select mr-sm-5" id="city" name="county">
								</select>
							</div>
						</div>

						<div class="form-row align-items-center form-check-inline">
							<div class="col-auto my-1">
								<label class="mr-sm-2 sr-only" for="inlineFormCustomSelect">鄉鎮地區</label>
								<select class="custom-select mr-sm-5" id="city2" name="city">
								</select>
							</div>
						</div>
						<div class="form-group row">
							<div class="col-5">
								<input class="form-control" id="" placeholder="請輸入地址"
									name="addr" />
							</div>
						</div>


						<div class="form-group row" style="margin-left: 12%;">
							<div class="col-sm-10 ">
								<button type="submit" id="sign" class="btn btn-primary"
									style="width: 100px;">Sign in</button>

								<input id="type" name="form" type='hidden' value='1' />
							</div>
						</div>
					</div>
				</div>
			</div>
		</form:form>
		<!-- login end -->
		<!-- change password -->


	</div>



	<jsp:include page="/WEB-INF/views/footer/footer.jsp" />
</body>
</html>