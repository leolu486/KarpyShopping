<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>會員登錄</title>
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
</head>
<body>
	<form:form method='POST' modelAttribute="MemberBean"
		class='form-horizontal' enctype="multipart/form-data">
		<h1 align="center">會員登入</h1>
		<dl>
			<dd>
				<form:input id="account" path="account" class="text" type="text" placeholder="請輸入會員帳號"
					tabindex="1" autocomplete="off" maxlength="50"
					autofocus="autofocus" />
		</dl>
		<dl>
			<dd>
				<form:input id="password" path="password" class="text" type="password"
					placeholder="請輸入密碼 ( 英文大小寫有差別 )" tabindex="2" autocomplete="off"
					maxlength="50" />
		</dl>
		<dl>
			<dd>
				<a><input id="submit" type="submit" value="Login"
					style="font-size: 25px; width: 450px; height: 60px;"></a>
			</dd>
		</dl>
	</form:form>
</body>

</html>
