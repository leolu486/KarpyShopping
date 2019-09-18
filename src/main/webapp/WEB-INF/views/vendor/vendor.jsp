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
				<h2>廠商詳細資料</h2>
			</div>
		</div>
	</section>
	<section class="container">
		<div class="row">

			<div class="col-md-5">
				<p>
					<b style='font-size: 16px;'>廠商Id:${vendor.vId}</b>
				</p>
				<p>廠商名稱:${vendor.vname}</p>
				<p>廠商地址:${vendor.addr}</p>
				<p>廠商電話:${vendor.tel}</p>
				<p>廠商Email:${vendor.email}</p>
				<p>
					<a href="<spring:url value='vendors' />" class="btn btn-default">
						<span class="glyphicon-hand-left glyphicon"></span>返回
					</a>
				</p>
			</div>
		</div>
	</section>
</body>
</html>
