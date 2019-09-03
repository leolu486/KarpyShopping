<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UPDATE</title>
</head>
<body>
	<section>
		<div class="container">
			<h1 style="text-align: center">購物車</h1>
		</div>
	</section>
	<hr
		style="height: 1px; border: none; color: #333; background-color: #333;">
	<section class="container">
		<!--       三個地方要完全一樣 -->
		<form:form method='POST' modelAttribute="product"
			class='form-horizontal' enctype="multipart/form-data">
			<!-- <form>加入enctype="multipart/form-data"才有檔案上傳功能 -->
			<fieldset>
			<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for='pId'>
						產品id: </label>${product.pId}
					<div class="col-lg-10">
						<form:input id="pId" path="pId" type='hidden'/>
					</div>
				</div>
			
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for='pname'>
						產品名: </label>${product.pname}
					<div class="col-lg-10">
						<form:input id="pname" path="pname" type='hidden' />
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for='price'>
						產品價錢: </label>${product.price}
					<div class="col-lg-10">
					<form:input id="price" path="price" type='hidden' />
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for='amount'>
						購買數量: </label>
					<div class="col-lg-10">
						<select name='amount'>
							<option value="0">0</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
							<option value="7">7</option>
							<option value="8">8</option>
							<option value="9">9</option>
							<option value="10">10</option>
						</select>
					</div>
				</div>

				<div class="form-group">
					<div class='col-lg-offset-2 col-lg-10'>
						<input id="btnAdd" type='submit' class='btn btn-primary'
							value="提交" />
					</div>
				</div>
				
				
			</fieldset>
		</form:form>
		
		品項id:${oItem.productId}<p>
		品項折扣:${oItem.discount}<p>
		品項描述:${oItem.description}<p>
		品項金額:${oItem.unitPrice}<p>
		品項數量:${oItem.quantity}<p>
		
		
			
	</section>
</body>
</html>