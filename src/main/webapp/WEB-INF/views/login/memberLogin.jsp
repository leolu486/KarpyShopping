<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>管理員登錄</title>
<style>
form {
	margin: 0 auto;
	/* width: 1000px; */
}

table {
	margin: 0 auto;
	padding: 10px;
}

dd {
	text-align: center;
	vertical-align: middle;
}

dd.check {
	text-align: left;
	padding-left: 250px;
	display: inline;
}

#loginAcc {
	width: 450px;
	height: 3em;
}

input, input::-webkit-input-placeholder {
	font-size: 15px;
}

#setting {
	font-size: 10px;
}

#submit {
	background-color: #5599FF;
	color: white;
	border-radius: 10px;
	border: 0;
}

.form-submit-button {
	font-size: 50px !important;
}

.text {
	width: 450px;
	height: 30px;
	background: #fff;
}

.center {
	margin-left: 40px;
	display: inline;
}

.button {
	width: 225px;
	height: 40px;
	margin: 0px auto;
	border: 0;
	padding: 0px;
	border-right: 2px solid #999999;
	background-color: #fff;
	font-size: 20px;
}

.button2 {
	width: 225px;
	height: 40px;
	margin: 0px auto;
	border: 0;
	padding: 0px;
	background-color: #fff;
	font-size: 20px;
}

.button1 {
	width: 500px;
	height: 600px;
	margin: 0px auto;
	margin-top: 200px;
}

.rigth1 {
	margin-right: 30px;
}

.h11 {
	text-align: center;
	margin-left: 55px;
}

.img {
	height: 150px;
	margin: auto;
	margin-left: 10px;
}

button:focus {
	outline: 0px;
	color: #FF8800;
}

input::placeholder {
	text-align: center;
}

/* footer { */
/* 	height: 40px; */
/* 	box-aizing: border-box; */
/* 	position: absolute; */
/* 	bottom: 0; */
/* 	width: 100%; */
/* } */
</style>

<script src="<c:url value='/js/jquery_3_4_1.js'/>"></script>

<script>
	$(document).ready(function() {
		$("#blogin").click(function() {
			$("#register").hide();
			$("#login").show();
		});
		$("#rlogin").click(function() {
			$("#register").show();
			$("#login").hide();
		});
	});
</script>
</head>
<body>


	<!-- 	<div style="display: inline;"> -->
	<!-- 		<button id="blogin">登入</button> -->
	<!-- 		<button id="rlogin">註冊</button> -->
	<!-- 	</div> -->

	<!-- 	<div id="login"> -->
	<%-- 		<form:form method='POST' modelAttribute="managerBean" --%>
	<%-- 			enctype="multipart/form-data"> --%>
	<!-- 			<h1 align="center">管理員登入</h1> -->
	<!-- 			<dl> -->
	<!-- 				<dd> -->
	<%-- 					<form:input id="account" path="account" class="text" type="text" --%>
	<%-- 						placeholder="請輸入管理員帳號" tabindex="1" autocomplete="off" --%>
	<%-- 						maxlength="50" autofocus="autofocus" /> --%>
	<!-- 			</dl> -->
	<!-- 			<dl> -->
	<!-- 				<dd> -->
	<%-- 					<form:input id="password" path="password" class="text" --%>
	<%-- 						type="password" placeholder="請輸入密碼 ( 英文大小寫有差別 )" tabindex="2" --%>
	<%-- 						autocomplete="off" maxlength="50" /> --%>
	<!-- 			</dl> -->
	<!-- 			<dl> -->
	<!-- 				<dd> -->
	<!-- 					<a><input id="submit" type="submit" value="Login" -->
	<!-- 						style="font-size: 25px; width: 450px; height: 60px;"></a> -->
	<!-- 				</dd> -->
	<!-- 			</dl> -->
	<!-- 			<input id="type" name="form" type='hidden' value='true' /> -->
	<%-- 		</form:form> --%>
	<!-- 	</div> -->

	<!-- 	<div id="register" style="display: none"> -->
	<%-- 		<form:form method='POST' modelAttribute="managerBean" --%>
	<%-- 			enctype="multipart/form-data"> --%>
	<!-- 			<h1 align="center">管理員註冊</h1> -->
	<!-- 			<dl> -->
	<!-- 				<dd> -->
	<%-- 					<form:input id="account" path="account" class="text" type="text" --%>
	<%-- 						placeholder="請輸入管理員帳號" tabindex="1" autocomplete="off" --%>
	<%-- 						maxlength="50" autofocus="autofocus" /> --%>
	<!-- 			</dl> -->
	<!-- 			<dl> -->
	<!-- 				<dd> -->
	<%-- 					<form:input id="password" path="password" class="text" --%>
	<%-- 						type="password" placeholder="請輸入密碼 ( 英文大小寫有差別 )" tabindex="2" --%>
	<%-- 						autocomplete="off" maxlength="50" /> --%>
	<!-- 			</dl> -->
	<!-- 			<dl> -->
	<!-- 				<dl> -->
	<!-- 					<dd> -->
	<%-- 						<form:input id="name" path="name" class="text" type="text" --%>
	<%-- 							placeholder="請輸入名字" tabindex="2" autocomplete="off" --%>
	<%-- 							maxlength="50" /> --%>
	<!-- 				</dl> -->
	<!-- 				<dl> -->
	<!-- 					<dd> -->
	<!-- 						<a><input id="submit" type="submit" value="Login" -->
	<!-- 							style="font-size: 25px; width: 450px; height: 60px;"></a> -->
	<!-- 					</dd> -->
	<!-- 				</dl> -->
	<!-- 				<input id="type" name="form" type='hidden' value='false' /> -->
	<%-- 		</form:form> --%>
	<!-- 	</div> -->




	<div>

		<div class="button1">
			<a href="#"><img src="<c:url value="/images/logo-pic/logo.png" />" alt="" class="img" /></a>
			<div class="center">
				<button class="button" id="blogin" onclick="ShowL()">登入</button>
				<button class="button2" id="rlogin" onclick="ShowR()">註冊</button>
			</div>
			<div class="rigth1">
				<div id="login">
					<form:form method='POST' modelAttribute="memberBean"
						enctype="multipart/form-data">
						<h1 class="h11">會員登入</h1>
						<dl>
							<dd>
								<form:input id="account" path="account" class="text" type="text"
									placeholder="請輸入會員帳號" tabindex="1" autocomplete="off"
									maxlength="50" autofocus="autofocus" />
						</dl>
						<dl>
							<dd>
								<form:input id="password" path="password" class="text"
									type="password" placeholder="請輸入密碼 ( 英文大小寫有差別 )" tabindex="2"
									autocomplete="off" maxlength="50" />
						</dl>
						<dl>
							<dd>
								<a><input id="submit" type="submit" value="登入"
									style="font-size: 20px; width: 450px; height: 60px;"></a>
							</dd>
						</dl>
						<input id="type" name="form" type='hidden' value='true' />
					</form:form>
				</div>

				<div id="register" style="display: none">
					<form:form method='POST' modelAttribute="memberBean"
						enctype="multipart/form-data">
						<h1 class="h11">會員註冊</h1>
						<dl>
							<dd>
								<form:input id="account" path="account" class="text" type="text"
									placeholder="請輸入會員帳號" tabindex="1" autocomplete="off"
									maxlength="50" autofocus="autofocus" />
						</dl>
						<dl>
							<dd>
								<form:input id="password" path="password" class="text"
									type="password" placeholder="請輸入密碼 ( 英文大小寫有差別 )" tabindex="2"
									autocomplete="off" maxlength="50" />
						</dl>
						<dl>
							<dd>
								<form:input id="name" path="name" class="text" type="text"
									placeholder="請輸入名字" tabindex="2" autocomplete="off"
									maxlength="50" />
						</dl>
						<dl>
							<dd>
								<a><input id="submit" type="submit" value="註冊"
									style="font-size: 20px; width: 450px; height: 60px;"></a>
							</dd>
						</dl>
						<input id="type" name="form" type='hidden' value='false' />
					</form:form>
				</div>
			</div>
		</div>
	</div>


</body>

</html>
