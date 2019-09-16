<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%-- <jsp:useBean id="member" class="com.web.store.model.MemberBean" scope="session" >  --%>
<%--    <jsp:setProperty name="member" property="mId" value="2" /> --%>
<%-- </jsp:useBean> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, intial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

<title>訂單測試</title>
</head>
<body>
	<div style="text-align: center" class="jumbotron">
		<h1>訂單測試</h1>
	</div>
<!-- 	<section class="container"> -->

<%-- 		<a href="<spring:url value='/order?oId=1' />" class="btn btn-primary"> --%>
<!-- 			<span class="glyphicon-info-sigh glyphicon"></span>查單筆訂單 -->
<!-- 		</a> -->
<!-- 		<div class="col-sm-6 col-md-3" style="width: 360px; height: 360px"> -->
<!-- 			<div class="thumbnail" style="width: 320px; height: 340px"> -->
<!-- 				<div class="caption"> -->
<%-- 					<p>訂單編號:${order.oId}</p> --%>
<%-- 					<p>訂單日期:${order.odate}</p> --%>
<%-- 					<p>訂單價錢:${order.price}</p> --%>
<%-- 					<p>訂單狀態:${order.status}</p> --%>
<!-- 					<p> -->
<%-- 						<a href="<spring:url value='/orderItemByOid?oId=${order.oId}' />" --%>
<!-- 							class="btn btn-primary"> <span -->
<!-- 							class="glyphicon-info-sigh glyphicon"></span>詳細資料 -->
<!-- 						</a> -->
<!-- 					</p> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->

<!-- 	</section> -->
	
	
	
	
	
		<section class="container">		
		<form:form method='POST' class='form-horizontal' enctype="multipart/form-data">		
			<fieldset>
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for='searchOrder'> 搜尋: </label>
					<div class="col-lg-10">
						<input id="searchOrder" name="oId" type='text' class='form:input-large' placeholder="請輸入訂單編號"/>
					</div>
				</div>
				<div class="form-group">
					<div class='col-lg-offset-2 col-lg-10'>
						<input id="searchBtn" name="searchBtn" type='submit' class='btn btn-primary' value="送出" />
					</div>
				</div>
			</fieldset>
		</form:form>
	</section>
	
	
	
	
	
	
	
	<a class="btn btn-primary" href='<c:url value="/"/>'>回首頁</a>
</body>
</html>