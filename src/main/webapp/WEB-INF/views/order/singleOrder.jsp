<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="<c:url value='/order/images/icons/favicon.ico' />"/>
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
<!--===============================================================================================-->
</head>
<body>

<div class="limiter">
		<div class="container-table100">
			<div class="wrap-table100">
				
				
				<div class="table100 ver2 m-b-110">
					<div class="table100-head">
						<table>
							<thead>
								<tr class="row100 head">
									<th class="cell100 column1">訂單編號</th>									
									<th class="cell100 column2">訂單日期</th>
									<th class="cell100 column2">訂單細項</th>							
									<th class="cell100 column2">訂單金額</th>
									<th class="cell100 column2">訂單狀態</th>							
									<th class="cell100 column2">寄件號碼</th>
									<th class="cell100 column2">寄送地址</th>							
									<th class="cell100 column2">收貨人</th>							
									<th class="cell100 column2">連絡電話</th>
									<c:if test="${order.status != '取貨完成' }">							
									<th class="cell100 column2"></th>	
									</c:if>						
<!-- 									<th class="cell100 column2"></th>							 -->
								</tr>
							</thead>
						</table>
					</div>

					<div class="table100-body js-pscroll">
						<table>
<%-- 						<c:forEach var="order" items="${orders}"> --%>
							<tbody>	
								<tr class="row100 body">
									<td class="cell100 column1">${order.oId}</td>
									<td class="cell100 column2">${order.odate}</td>
									<td class="cell100 column2"><a href="<spring:url value='/orderItemByOid?oId=${order.oId}' />" class="btn btn-primary"> <span class="glyphicon-info-sigh glyphicon"></span>詳細資料 </a></td>									
									<td class="cell100 column2">${order.price} 元</td>
									<td class="cell100 column2">${order.status}</td>
									<td class="cell100 column2">${order.shippingNo}</td>
									<td class="cell100 column2">${order.addr}</td>
									<td class="cell100 column2">${order.consignee}</td>
									<td class="cell100 column2">${order.tel}</td>
									<c:if test="${order.status != '取貨完成' }">
									<td class="cell100 column2"><a href="<spring:url value='/order/VendorUpdate?oId=${order.oId}' />" class="btn btn-primary"> <span class="glyphicon-info-sigh glyphicon"></span>賣家更新訂單 </a></td>
<%-- 									<td class="cell100 column2"><a href="<spring:url value='/order/update?oId=${order.oId}' />" class="btn btn-primary"> <span class="glyphicon-info-sigh glyphicon"></span>賣家更新訂單 </a></td> --%>
									</c:if>
								</tr>
							</tbody>
<%-- 						</c:forEach> --%>
						</table>
					</div>
				</div>	


			</div>
		</div>
	</div>
	
	<!--===============================================================================================-->	
	<script src="<c:url value='/order/vendor/jquery/jquery-3.2.1.min.js' />"></script>
<!--===============================================================================================-->
	<script src="<c:url value='/order/vendor/bootstrap/js/popper.js' />"></script>
	<script src="<c:url value='/order/vendor/bootstrap/js/bootstrap.min.js' />"></script>
<!--===============================================================================================-->
	<script src="<c:url value='/order/vendor/select2/select2.min.js' />"></script>
<!--===============================================================================================-->
	<script src="<c:url value='/order/vendor/perfect-scrollbar/perfect-scrollbar.min.js' />"></script>
	<script>
		$('.js-pscroll').each(function(){
			var ps = new PerfectScrollbar(this);

			$(window).on('resize', function(){
				ps.update();
			})
		});
			
		
	</script>
<!--===============================================================================================-->
	<script src="<c:url value='/order/js/main.js' />"></script>

</body>
</html>