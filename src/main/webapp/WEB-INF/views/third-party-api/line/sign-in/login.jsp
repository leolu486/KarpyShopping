<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Line Sign In</title>

<script src="<c:url value='/js/jquery_3_4_1.js'/>"></script>
<style>
img.line-icon {
	-webkit-filter: drop-shadow(1px 1px 1px green);
}

img.line-icon:hover {
	cursor: pointer;
	-webkit-filter: contrast(1.5) drop-shadow(1px 1px 1px green);
}

img.line-icon:active {
	cursor: pointer;
	-webkit-filter: contrast(2) drop-shadow(1px 1px 1px green);
}
</style>
<script>
	function LineAuth() {
		console.log("State:${sessionScope.state}");
		var URL = 'https://access.line.me/oauth2/v2.1/authorize?';
		URL += 'response_type=code';
		URL += '&client_id=1623038570';
		URL += '&redirect_uri=http://localhost:8080/KarpyShopping/lineVerify';
		URL += '&state=${sessionScope.state}';
		URL += '&prompt=consent';
		URL += '&scope=openid%20profile%20email';
		window.location.href = URL;

	}
</script>

</head>

<body>

	<img onclick="LineAuth();" id="line" class="line-icon"
		src="<c:url value='/images/line-icon/btn_login_base.png'/>" />




</body>
</html>
