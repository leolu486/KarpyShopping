<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
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
<title>Members</title>
<link rel='stylesheet' href='css/styles.css' type="text/css" />
</head>
<body>
	<section>
		<div class="container">
			<h1 style="text-align: center">會員註冊</h1>
		</div>
	</section>
	<hr
		style="height: 1px; border: none; color: #333; background-color: #333;">
	<section class="container">
		<!--       三個地方要完全一樣 -->
		<form:form method='POST' modelAttribute="MemberBean"
			class='form-horizontal' enctype="multipart/form-data">
			<!-- <form>加入enctype="multipart/form-data"才有檔案上傳功能 -->
			<fieldset>
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for='account'>
						帳號: </label>
					<div class="col-lg-10">
						<form:input id="account" path="account" type='text'
							class='form:input-large' />
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for='password'>
						密碼: </label>
					<div class="col-lg-10">
						<form:input id="password" path="password" type='password'
							class='form:input-large' />
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for='name'>
						姓名: </label>
					<div class="col-lg-10">
						<form:input id="name" path="name" type='text'
							class='form:input-large' />
					</div>
				</div>
				<div class="form-group">
					<div class='col-lg-offset-2 col-lg-10'>
						<input id="btnAdd" type='submit' class='btn btn-primary'
							value="註冊"/>
					</div>
				</div>
			</fieldset>
		</form:form>
	</section>
</body>
</html>
