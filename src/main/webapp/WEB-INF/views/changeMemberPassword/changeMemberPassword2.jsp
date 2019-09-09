<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>













<html>
<head>
<meta charset="utf-8">

<title>更改會員資料</title>
<link rel="stylesheet" href="<c:url value= "/css/reset.css" />"
		type=" text/css" />
<link rel="stylesheet" href="<c:url value="/css/common.css" />"
		type=" text/css" />
<link rel="stylesheet"
	href="<c:url value="/css/font-awesome2.min.css" />"
		type=" text/css" />


</head>
<body>
	<div class="wrap login_wrap">
		<div class="content">

			<div class="logo"></div>

			<div class="login_box">

				<div class="login_form">
					<div class="login_title">★會員更改密碼★</div>
					<form action="#" method="post">

						<div class="form_text_ipt">
							<input name="username" type="text" placeholder="舊密碼">
						</div>

						<div class="form_text_ipt">
							<input name="password" type="password" placeholder="新密碼">
						</div>

						<div class="form_text_ipt">
							<input name="repassword" type="password" placeholder="再次輸入新密碼">
						</div>

						<div class="form_text_ipt">
							<input name="code" type="text" placeholder="輸入驗證碼">




						</div>


						<div class="form_btn">
							<button type="button"
								onclick="javascript:window.location.href='#'">確認更改</button>
						</div>
						<div class="form_reg_btn">
							<span>取消修改 </span><a href="index.html">回首頁 </a>
						</div>
					</form>
				</div>
			</div>
		</div>
	
	<script type="text/javascript"
		src="${pageContext.request.contextPath} /js/jquery.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/common.js"></script>
	<!-- 		<div style="text-align:center;"> -->

	</div>
	
</body>
</html>
