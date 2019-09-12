<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<p>會員名稱:${memberLoginOK.name}</p>
	<p>會員編號:${memberLoginOK.mId}</p>
	<p>會員帳號:${memberLoginOK.account}</p>
	<img src="data:image/jpg;base64,${memberImage}" width="640px"
		height="auto" />


	<form:form method="POST" modelAttribute="memberBean"
		enctype="multipart/form-data" >
		<table>
			<tr>
				<td><label for="file">Images:</label></td>
				<td><form:input type="file" path="file" name="file"/></td>
			</tr>
			<tr>
				<td><input id="btnAdd" type='submit' class='btn btn-primary'
					value="上傳" /></td>
			</tr>
		</table>
	</form:form>


</body>
</html>