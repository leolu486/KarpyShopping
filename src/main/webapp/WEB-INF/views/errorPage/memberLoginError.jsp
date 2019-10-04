<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
   href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<title>發生例外</title>
<link rel='stylesheet' href='css/styles.css'  type="text/css" />
</head>


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


<body>
<!--    <section> -->
<!--       <div class="jumbotron"> -->
<!--          <div class="container"> -->
<%--             <h2>登入失敗　${errorMessage}${invalidAccount}</h2> --%>
<!--          </div> -->
<!--       </div> -->
<!--    </section> -->
<!--    <section > -->
<!--       <div class="container"> -->
<%--            <p>${url}</p> --%>
<%--            <p>${exceptiom}</p> --%>
<!--       </div> -->
<!--       <div class="container"> -->
<!--            <p> -->
<%--              <a href="<spring:url value='/memberLogin' />"  class='btn btn-primary' > --%>
<!--              <span class='glyphicon-left-hand glyphicon'></span>回登入頁面</a></p> -->
<%--            <p>${exceptiom}</p> --%>
<!--       </div> -->
<!--    </section> -->
   
   	<div>
		<div class="button1">
			<a href="home"><img
				src="<c:url value="/images/logo-pic/logo.png" />" alt="" class="img" /></a>
			<div class="rigth1">
				<div id="login">
						<h4 class="h11" style="font-weight:bold;" >
							<font><br>${errorMessage}<BR>
							請填寫正確的帳號密碼或聯絡客服人員
							</font>
						</h4>
						<dl>
							<dd>
								<div>
									<a href="<spring:url value='memberLogin' />" class="btn btn-default" style="margin-left:40px;">
										請重新登入 </a>
								</div>
							</dd>
						</dl>
						<input id="type" name="form" type='hidden' value='true' />
		
				</div>
			</div>

		</div>
	</div>
</body>
</html>
