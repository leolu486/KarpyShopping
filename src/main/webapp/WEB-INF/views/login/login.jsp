<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登錄</title>
<style>
form {
	margin: 0 auto;
	width: 1000px;
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
/* footer { */
/* 	height: 40px; */
/* 	box-aizing: border-box; */
/* 	position: absolute; */
/* 	bottom: 0; */
/* 	width: 100%; */
/* } */
</style>

<script>
	function test() {
		console.log('${pageContext.request.requestURL}');
	}
</script>

</head>
<body>
	<form action="<c:url value='' />" method="POST">
		<h1 align="center">會員登入</h1>




		<dl>
			<dd>
				<input id="loginAcc" class="text" type="text"
					placeholder="請輸入手機號碼 或 Email" tabindex="1" autocapitalize="off"
					autocomplete="off" maxlength="50" autofocus="autofocus" />
		</dl>
		<dl>
			<dd>
				<input id="loginAcc" class="text" type="text"
					placeholder="請輸入密碼 ( 英文大小寫有差別 )" tabindex="2" autocomplete="off"
					maxlength="50" />
		</dl>
		<dl>
			<dd class="check">
				<input type="checkbox" tabindex="3">記住帳號
			</dd>
			<dd class="check">
				<a href="" tabindex="4">忘記密碼</a>
			</dd>

		</dl>
		<dl>
			<dd>
				<a><input id="submit" type="submit" value="Login"
					style="font-size: 25px; width: 450px; height: 60px;"></a>
			</dd>
		</dl>
	</form>
	<button onclick="test()">abc</button>
</body>

</html>
