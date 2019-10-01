<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>訂單查詢</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
<%-- 	<link rel="icon" type="image/png" href="<c:url value='/order/images/icons/favicon.ico' />"/> --%>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value='/order/vendor/bootstrap/css/bootstrap.min.css' />">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value='/order/fonts/font-awesome-4.7.0/css/font-awesome.min.css' />">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value='/order/vendor/animate/animate.css' />">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value='/order/vendor/select2/select2.min.css' />">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value='/order/vendor/perfect-scrollbar/perfect-scrollbar.css' />">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value='/order/css/util.css' />">
	<link rel="stylesheet" type="text/css" href="<c:url value='/order/css/main.css' />">
	<link rel="stylesheet" href="<c:url value='/shoppingCart/style.css' />"  />
<!--===============================================================================================-->
</head>

<style>

body { 
	opacity: 0; 
	transition: opacity 2s; 
}

h5{
 margin-top:10px;
 font-weight:1200px;
}

.img{
	height: 150px;
	margin: auto;
	margin-left: 10px;
}
</style>
<body onload="document.body.style.opacity='1'">
<%-- <jsp:include page="/WEB-INF/views/fragment/top.jsp" /> --%>

<div class="wrapper">
	<div class="content" style="margin:0;padding:0;text-align:center;margin-top:300px;">
		<a href="home"><img src="<c:url value="/images/logo-pic/logo.png" />" alt="" class="img" /></a>
		<h5>${errorMsg}</h5>
		<a href="<spring:url value='${header.referer}' />" class='btn btn-primary' >
		<span class='glyphicon-left-hand glyphicon'></span>返回</a>
	</div>	
	
	<div class="footer">
		<jsp:include page="/WEB-INF/views/footer/footer.jsp" />
	</div>
</div>

</body>
</html>