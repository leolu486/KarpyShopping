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
<title>Member</title>
</head>
<body>
	<section>
		<div>
			<div class="container" style="text-align: center">
				<h2>信用卡資料</h2>
			</div>
		</div>
	</section>
	<section class="container">
		<div class="row">

			<div class="col-md-5">
				<p>
					<b style='font-size: 16px;'>信用卡名稱:${card.CName}</b>
				</p>
				<p>卡號:${card.CNumber}</p>
				<p>持有人:${card.OName}</p>
				<p>Pin:${card.pin}</p>
				<p>有效日:${card.VDate}</p>

				<p>
					<a href="<spring:url value='CreditCardList' />" class="btn btn-default">
						<span class="glyphicon-hand-left glyphicon"></span>返回
					</a>
				</p>
			</div>
		</div>
	</section>
</body>
</html>
