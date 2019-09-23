<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<meta charset="UTF-8">
<title>欸你過來一下</title>

<style>
.box {
	float: right;
	margin-right: 10px;
}

.Tlog {
	margin-left: 100px;
}

.TNlog {
	margin-left: 50px;
}
</style>
</head>
<body>

	<div>
	 <div id="andy timer" class="andy timer">
		<!-- login -->
		<c:if test="${! empty LoginOK }">
			<div class="box">
				你好，${LoginOK.name} <a href="managerLogout">登出</a>
			</div>
			<div class="Tlog">
				<h1 style="text-align: center;">MVC Exercise</h1>
			</div>
		</c:if>
		<!-- no login -->
		<c:if test="${ empty LoginOK }">
			<div class='box'>
				<a href="AddorLogin">登入/註冊</a>
			</div>
			<div class="TNlog">
				<h1 style="text-align: center;">MVC Exercise</h1>
			</div>
		</c:if>





	</div>

	<p align="center" />
	<a href='home'>hello卡痞購物網</a>

	<hr>

	<table border="1" style="margin: 0px auto;">
		<tr height="52" bgcolor="lightblue" align="center">
			<td width="350"><p align="center" /> <a href='welcome'>Hello
					Spring MVC</a></td>
			<td width="350"><p align="center" /> <a href='ch01/serverTime'>系統時間</a></td>
		</tr>

		<!-- third party Login -->
		
		<tr height="52" bgcolor="lightblue" align="center">

			<td colspan="2"><p align="center" /></p>第三方登入測試</td>
		</tr>
		<tr height="52" bgcolor="lightblue" align="center">
			<td width="350"><p align="center" /> <a href='glogin'>Google登入</a>
			</td>
			<td width="350"><p align="center" /> <a href='addGmail'>addGmail</a>
		</tr>
		<tr height="52" bgcolor="lightblue" align="center">
			<td width="350"><p align="center" /> <a href='linelogin'>Line登入</a>
			</td>
			<td width="350"><p align="center" /> <a href='images'>Show List of Images from database</a>
		</tr>

		<!-- Manager Method Test Area -->

		<tr height="52" bgcolor="lightblue" align="center">

			<td colspan="2"><p align="center" /></p>ManagerTesting</td>
		</tr>

		<tr height="52" bgcolor="lightblue" align="center">
			<td width="350"><p align="center" /> <a href='managers'>管理員清單</a>
			</td>
			<td width="350"><p align="center" /> <a href='manager/change'>管理員密碼變更測試</a>
		</tr>
		<tr height="52" bgcolor="lightblue" align="center">
			<td width="350"><p align="center" /> <a href=''>&nbsp;</a></td>
			<td width="350"><p align="center" /> <a href=''>&nbsp;</a>
		</tr>
		<tr height="52" bgcolor="lightblue" align="center">

			<td colspan="2"><p align="center" /></p>產品頁面測試</td>
		</tr>

		<tr height="52" bgcolor="lightblue" align="center">
			<td width="350"><p align="center" /> <a href='productDetail'>產品詳細頁面</a></td>
			<td width="350"><p align="center" /> <a href=''>&nbsp;</a>
		</tr>

		<!-- Vendor Method Test Area -->

		<tr height="52" bgcolor="lightblue" align="center">

			<td colspan="2"><p align="center" />VendorTesting</td>
		</tr>


		<tr height="52" bgcolor="lightblue" align="center">
			<td width="350"><p align="center" /> <a href='vendors'>廠商清單</a></td>
			<td width="350"><p align="center" /> <a href='vendor/add'>新增廠商</a>
		</tr>
		<tr height="52" bgcolor="lightblue" align="center">
			<td width="350"><p align="center" /> <a href='vendor/update'>更新廠商</a></td>
			<td width="350"><p align="center" /> <a href=''>&nbsp;</a>
		</tr>
		<tr height="52" bgcolor="lightblue" align="center">
			<td width="350"><p align="center" /> <a href=''>&nbsp;</a></td>
			<td width="350"><p align="center" /> <a href=''>&nbsp;</a>
		</tr>


		<!-- Order Method Test Area -->



		<tr height="52" bgcolor="lightblue" align="center">
			<td colspan="2"><p align="center" />OrderTesting</td>
		</tr>
		<tr height="52" bgcolor="lightblue" align="center">
			<td width="350"><p align="center" /> <a href='orderPage'>單筆訂單查詢測試，賣家更新訂單</a></td>
			<td width="350"><p align="center" /> <a href='orders'>全部訂單查詢測試</a>
		</tr>
		<tr height="52" bgcolor="lightblue" align="center">
			<td width="350"><p align="center" /> <a href='productsAddCart'>新增訂單測試，購物車，結帳頁面</a></td>
			<td width="350"><p align="center" /> <a href='ordersBymIdQuery'>單一會員全部訂單查詢</a>
		</tr>
		<tr height="52" bgcolor="lightblue" align="center">
			<td width="350"><p align="center" /> <a
				href='queryOrderItemsHistory?mId=${memberLoginOK.mId }'>買過商品查詢</a></td>
			<td width="350"><p align="center" /> <a href=''>&nbsp;</a>
		</tr>


		<!-- OrderItem Method Test Area -->
		<tr height="52" bgcolor="lightblue" align="center">
			<td colspan="2"><p align="center" />OrderItemTesting</td>
		</tr>
		<tr height="52" bgcolor="lightblue" align="center">
			<td width="350"><p align="center" /> <a href='OrderItem'>訂單項目</a></td>
			<td width="350"><p align="center" /> <a href='products'>商品轉頁面.購物車轉會員登錄</a>
		</tr>
		<tr height="52" bgcolor="lightblue" align="center">
			<td width="350"><p align="center" /> <a href=''>&nbsp;</a></td>
			<td width="350"><p align="center" /> <a href=''>&nbsp;</a>
		</tr>
		<tr height="52" bgcolor="lightblue" align="center">
			<td width="350"><p align="center" /> <a href=''>&nbsp;</a></td>
			<td width="350"><p align="center" /> <a href=''>&nbsp;</a>
		</tr>

		<!-- Product Method Test Area -->
		<tr height="52" bgcolor="lightblue" align="center">
			<td colspan="2"><p align="center" />ProductTesting</td>
		</tr>
		<tr height="52" bgcolor="lightblue" align="center">
			<td width="350"><p align="center" /> <a href='products'>商品清單</a></td>
			<td width="350"><p align="center" /> <a href='getProductsBy'>找商品(依商品名稱、類別、廠商)</a>
		</tr>
		<tr height="52" bgcolor="lightblue" align="center">
			<td width="350"><p align="center" /> <a href='product/add'>新增商品</a></td>
			<td width="350"><p align="center" /> <a href=''></a>
		</tr>
		<tr height="52" bgcolor="lightblue" align="center">
			<td width="350"><p align="center" /> <a href='searchResult'>測試頁面</a></td>
			<td width="350"><p align="center" /> <a href=''>&nbsp;</a>
		</tr>

		<!-- Member Method Test Area -->

		<tr height="52" bgcolor="lightblue" align="center">
			<td colspan="2"><p align="center" />MemberTesting</td>
		</tr>
		<tr height="52" bgcolor="lightblue" align="center">
			<td width="350"><p align="center" /> <a href='members'>會員清單</a></td>
			<td width="350"><p align="center" /> <a href='memberLogin'>會員登入註冊測試</a>
		</tr>
		<tr height="52" bgcolor="lightblue" align="center">
			<td width="350"><p align="center" /> <a href='member/add'>新增會員測試</a></td>
			<td width="350"><p align="center" /> <a
				href='member/changetest'>會員變更密碼測試</a>
		</tr>
		<tr height="52" bgcolor="lightblue" align="center">
			<td width="350"><p align="center" /> <a href='idExists'>會員資料檢查</a></td>
			<td width="350"><p align="center" /> <a href='member/delete'>會員刪除</a>
		</tr>
		<tr height="52" bgcolor="lightblue" align="center">
			<td width="350"><p align="center" /> <a href='member/change'>會員更改密碼測試★</a></td>
			<td width="350"><p align="center" /> <a href='member/delete'>&nbsp;</a>
		</tr>
		<tr height="52" bgcolor="lightblue" align="center">
			<td width="350"><p align="center" /> <a href='uploadImage'>會員上傳照片測試</a></td>
			<td width="350"><p align="center" /> <!-- login  --> <c:if
					test="${! empty memberLoginOK }">
					會員你好，${memberLoginOK.name} <a href="memberLogout">登出</a>
				</c:if> <!-- no login --> <c:if test="${ empty memberLoginOK }">
					<a class="account" href="memberLogin">會員登入/註冊</a>
				</c:if></td>
		</tr>

		<tr height="52" bgcolor="lightblue" align="center">
			<td colspan="2"><p align="center" />CreditCardTest</td>
		</tr>
		<tr height="52" bgcolor="lightblue" align="center">
			<td width="350"><p align="center" /> <a href='CreditCardList'>信用卡查詢測試</a></td>
			<td width="350"><p align="center" /> <a href='updateTaxId'>新增統編測試</a>
		</tr>
		<tr height="52" bgcolor="lightblue" align="center">
			<td width="350"><p align="center" /> <a href='updateVehicle'>新增載具測試</a></td>
			<td width="350"><p align="center" /> <a href=''></a>
		</tr>

		<tr height="52" bgcolor="lightblue" align="center">
			<td colspan="2"><p align="center" />聊天室測試</td>
		</tr>
		<tr height="52" bgcolor="lightblue" align="center">
			<td width="350"><p align="center" /> <a href='chat'>WebSocket
					Test</a></td>
			<td width="350"><p align="center" /> <a href=''>&nbsp;</a></td>
		</tr>


	</table>
</body>
</html>