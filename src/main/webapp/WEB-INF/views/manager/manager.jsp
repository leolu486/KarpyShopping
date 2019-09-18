<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<meta charset="UTF-8">
<link rel='stylesheet'
	href='${pageContext.request.contextPath}/css/styles.css'
	type="text/css" />
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<title>Manager</title>
</head>
<body>
	<section>
		<div>
			<div class="container" style="text-align: center">
				<h2>管理員資料</h2>
			</div>
		</div>
	</section>
	<section class="container">
		<div class="row">

			<div class="col-md-5">
				<p>
					<b style='font-size: 16px;'>管理員Id:${manager.id}</b>
				</p>
				<p>姓名:${manager.name}</p>
				<p>帳號:${manager.account}</p>
				<p>密碼:${manager.password}</p>

				<p>
					<a href="<spring:url value='/managers' />" class="btn btn-default">
						<span class="glyphicon-hand-left glyphicon"></span>返回
					</a>
				</p>
			</div>
		</div>
	</section>
</body>
</html>
