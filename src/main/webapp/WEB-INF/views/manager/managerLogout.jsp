<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登出</title>

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

input:focus::-webkit-input-placeholder {
	opacity: 0;
}
</style>


</head>
<body>
	<!-- 先將使用者名稱取出 -->
	<c:set var="managerName" value="${LoginOK.name}" />
	<!-- 移除放在session物件內的屬性物件以及圖片-->
	<c:remove var="LoginOK" scope="session" />
	<c:remove var="requestURI" scope="session"/>
	<!-- 下列敘述設定變數funcName的值為OUT，top.jsp 會用到此變數 -->
	<c:set var="funcName" value="OUT" scope="session" />
	<!-- 引入共同的頁首 -->
	<!-- 下列六行敘述設定登出後要顯示的感謝訊息 -->
	<c:set var="logoutMessage" scope="request" />

	<div>
		<div class="button1">
			<a href="home"><img
				src="<c:url value="/images/logo-pic/logo.png" />" alt="" class="img" /></a>
			<div class="rigth1">
				<div id="login">
					<form:form method='POST' modelAttribute="memberBean"
						enctype="multipart/form-data">
						<h2 class="h11">
							<font><BR> 管理員${ managerName }，感謝您使用本系統。<BR> 您已經登出<BR></font>
						</h2>
						<dl>
							<dd>
								<div>
									<a href="<spring:url value='home' />" class="btn btn-default">
										回首頁 </a>
								</div>
							</dd>
						</dl>
						<input id="type" name="form" type='hidden' value='true' />
					</form:form>
				</div>
			</div>

		</div>
	</div>
</body>
</html>