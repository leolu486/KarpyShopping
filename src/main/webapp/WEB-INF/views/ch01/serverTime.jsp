<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel='style'
	href='${pageContext.request.contextPath}/css/styles.css'
	type='text/css' />
<meta charset="UTF-8">
<title>Now Time</title>
</head>
<body>
	<p>伺服器的時間為:${now}</p>
	<br>
	<hr>
	<p>JSP網頁依然用EL來取得控制器(Controller)送回的資料</p>
	<br>
</body>
</html>