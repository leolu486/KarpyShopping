<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>

<head>

<title>Admin Login</title>
<link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,900'
	rel='stylesheet' type='text/css' />

<link rel="stylesheet" type="text/css"
	href="<c:url value='/backstage-source/css/bootstrap.min.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/backstage-source/css/animate.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/backstage-source/css/font-awesome.min.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/backstage-source/css/login.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/backstage-source/css/theme.css'/>" />

<script type="text/javascript"
	src="${pageContext.request.contextPath}/backstage-source/js/jquery-2.1.3.min.js"></script>

</head>

<body>

	<div class="container">
		<div class="login-box">
			<div class="title">
				<h3>Flat Admin</h3>
			</div>
			<div class="progress hidden" id="login-progress">
				<div
					class="progress-bar progress-bar-success progress-bar-striped active"
					role="progressbar" aria-valuenow="100" aria-valuemin="0"
					aria-valuemax="100" style="width: 100%">Log In...</div>
			</div>
			<div class="alert alert-success hidden" id="login-message"
				role="alert">
				<i class="fa fa-check"></i> Login Success. Please wait for loading.
			</div>
			<div class="alert alert-failed hidden" id="login-message"
				role="alert">
				<i class="fa fa-check"></i> Login Failed.
			</div>
			<div class="box">

				<form:form id="login-form" method='POST'
					modelAttribute="managerBean" enctype="multipart/form-data">

					<div class="control">
						<div class="label">Account</div>
						<form:input type="text" class="form-control" path="account"
							autocomplete="off" placeholder="user" autofocus="true"/>
					</div>
					<div class="control">
						<div class="label">Password</div>
						<form:input type="password" class="form-control" path="password"
							placeholder="password" />
					</div>
					<div class="login-button">
						<input type="submit" class="btn btn-orange" value="Login">
					</div>
				</form:form>
			</div>
			<div class="info-box">
			<span class="text-left"><a href="home">home</a></span>
				<!--                    <span class="text-left"><a href="register.html">Create new account</a></span> -->
				<!--                    <span class="text-right"><a href="#">Forgot password?</a></span> -->
				<!--                    <div class="clear-both"></div> -->
			</div>
		</div>
	</div>
	<script type="text/javascript">
		var error = "${errorMsg}";
		if (error != "") {
			alert(error);
		}
		
		// 		$(function() {
		// 			$("#login-form").submit(function() {
		// 				$("#login-progress").removeClass("hidden");

		// 				setTimeout(function() {
		// 					$("#login-progress").addClass("hidden");
		// 					$("#login-message").removeClass("hidden");
		// 					setTimeout(function() {
		// 						window.location.assign("admin")
		// 					}, 1000);
		// 				}, 1000);
		// 				return false;
		// 			});
		// 		});
		
		
	</script>
	<c:remove var="errorMsg" scope="session" />

</body>


</html>
