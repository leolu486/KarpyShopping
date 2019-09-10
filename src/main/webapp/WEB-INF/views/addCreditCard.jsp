<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<link rel="stylesheet" href="<c:url value="/css/style.css" />"
	type="text/css" />
<meta charset="UTF-8">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<style type="text/css">
</style>
<title>addCreditCard</title>
<link rel='stylesheet' href='css/styles.css' type="text/css" />
</head>
<body>
	<section>
		<div class="container">
			<h1 style="text-align: left">新增信用卡</h1>
		</div>
	</section>
	<hr style="height: 1px; border: none; color: #333; background-color: #333;">
	<div style="margin:auto">
	<section class="container">
		<form:form method='POST' modelAttribute="CreditCardBean"
			class='form-horizontal' enctype="multipart/form-data">
			<div class="form-group">
				<label class="control-label col-lg-2 col-lg-2" for='cname' >
					信用卡名稱: </label>
				<div class="col-lg-10">
					<form:input id="cname" path="cname" type='text'
						class='form:input-large' />
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-lg-2 col-lg-2" for='cnumber'>
					信用卡卡號: </label>
				<div class="col-lg-10">
					<form:input id="cnumber" path="cnumber" type='text'
						class='form:input-large' />
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-lg-2 col-lg-2" for='oname'>
					持有者姓名: </label>
				<div class="col-lg-10">
					<form:input id="oname" path="oname" type='text'
						class='form:input-large' />
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-lg-2 col-lg-2" for='pin'>
					Pin: </label>
				<div class="col-lg-10">
					<form:input id="pin" path="pin" type='password'
						class='form:input-large' />
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-lg-2 col-lg-2" for='date'>
					到期日: </label>
				<div class="col-lg-10">
					<input id="date" name="date" type='date'
						class='form:input-large' />
				</div>
			</div>
			<div>
				<a><input id="submit" type="submit" value="新增"
					style="font-size: 10px; width: 200px; height: 20px; "></a>
			</div>
		</form:form>
	</section>
	</div>
</body>
</html>
