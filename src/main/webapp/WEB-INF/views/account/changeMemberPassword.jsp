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
	href="<c:url value="/css/font-awesome2.min.css" />" type=" text/css" />
<style>
input::placeholder {
	text-align: center;
}

input:focus::-webkit-input-placeholder {
	opacity: 0;
}
</style>

</head>
<body>
	<div class="wrap login_wrap">
		<div class="content">

			<div class="logo"></div>

			<div class="login_box">

				<div class="login_form">
					<div class="login_title">★會員更改密碼★</div>
					<form:form method='POST' class='form-horizontal'
						enctype="multipart/form-data">

						<div class="form_text_ipt">
							<input name="oldPW" type="password" placeholder="舊密碼">
						</div>

						<div class="form_text_ipt">
							<input name="newPW" type="password" placeholder="新密碼">
						</div>

						<div class="form_text_ipt">
							<input name="renewPW" type="password" placeholder="再次輸入新密碼">
						</div>
            -----------------------------------------------------------------
						
                       <div>

							<canvas width="240" height="90" id="captcha1"></canvas>
							<h2>點擊切換下一張圖</h2>
							<br>
							<!--                     <h2>傳值</h2> -->
							<%--                          <canvas width="240" height="90" id="captcha2"></canvas> --%>


							<script type="text/javascript"
								src="${pageContext.request.contextPath }/js/captcha.js"></script>

							<script type="text/javascript"
								src="${pageContext.request.contextPath }/js/text.js"></script>
						</div>
						<div class="form_text_ipt">
							<input name="code" type="text" placeholder="輸入驗證碼">
						</div>










		--------------------------------------------------------------------
						<div class="form_btn">
							<button>確認更改</button>
						</div>
						<div class="form_reg_btn">
							<a href="<c:url value='/home'/>">回首頁 </a>
						</div>
					</form:form>
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
