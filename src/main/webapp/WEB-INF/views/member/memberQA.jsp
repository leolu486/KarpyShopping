<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<c:url value="/css/style.css" />"
	type="text/css" />

<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/vendor/modernizr-2.8.3.min.js"></script>
<link rel="stylesheet"
	href="<c:url value="/css/font-awesome.min.css" />" type="text/css" />
<meta charset="UTF-8">


<link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css" />"
	type="text/css" />
<title>Insert title here</title>
</head>

<body> 
	<jsp:include page="/WEB-INF/views/fragment/top.jsp" />

	<jsp:include page="/WEB-INF/views/fragment/header.jsp" />


<div style="text-align:center" style="width:800px;">
   <img src="<c:url value="/images/memberQA/123.JPG"/>">
    
</div>



	<jsp:include page="/WEB-INF/views/footer/footer.jsp" />

</body>
</html>