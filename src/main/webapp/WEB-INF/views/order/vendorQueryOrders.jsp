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
<!--===============================================================================================-->
</head>

<style>

body { 
	opacity: 0; 
	transition: opacity 2s; 
}

</style>
<body onload="document.body.style.opacity='1'">
<%-- <jsp:include page="/WEB-INF/views/fragment/top.jsp" /> --%>
<form:form id="orderTable">
<div class="limiter">
		<div class="container-table100">
			<div class="wrap-table100">
				<a class="btn btn-secondary" style="margin-bottom:10px" href='<c:url value="/"/>'>返回</a>
				<span style="margin-left:20px;font-size:30px;font-weight:bold">所有訂單查詢</span>
				
				
				<div class="table100 ver2 m-b-110">
					<div class="table100-head">
						<table>
							<thead>
								<tr class="row100 head">
									<th class="cell100 column1 font-weight-bold" style="border-style:none">訂單編號</th>
									<th class="cell100 column2 font-weight-bold" style="border-style:none">訂單日期</th>
									<th class="cell100 column2 font-weight-bold" style="border-style:none">訂單細項</th>							
									<th class="cell100 column2 font-weight-bold" style="border-style:none">訂單金額</th>
									<th class="cell100 column2 font-weight-bold" style="border-style:none">訂單狀態</th>							
									<th class="cell100 column2 font-weight-bold" style="border-style:none">寄件號碼</th>							
									<th class="cell100 column2 font-weight-bold" style="border-style:none">寄送地址</th>
									<th class="cell100 column2 font-weight-bold" style="border-style:none">收貨人</th>							
									<th class="cell100 column2 font-weight-bold" style="border-style:none">連絡電話</th>
<%-- 									<c:if test="${order.status != '取貨完成' }">								 --%>
										<th class="cell100 column2 font-weight-bold" style="border-style:none"><span style="font-size:1.4em;" class="fa fa-pencil-square-o"></span></th>							
<%-- 									</c:if>							 --%>
								</tr>
							</thead>
						</table>
					</div>

					<div class="table100-body js-pscroll">
						<table>
							<c:forEach var="order" items="${orders}">
								<tbody>	
									<tr class="row100 body">
										<td class="cell100 column1" style="border-style:none">${order.oId}</td>
										<td class="cell100 column2" style="border-style:none">${order.odate}</td>
										<td class="cell100 column2" style="border-style:none">
											<a href="<spring:url value='/orderItemByOid?oId=${order.oId}' />" class="btn btn-info"> <span class="glyphicon-info-sigh glyphicon"></span>詳細資料 </a>
										</td>									
										<td class="cell100 column2" style="border-style:none">${order.price} 元</td>
										<td class="cell100 column2" style="border-style:none">${order.status}</td>
										<td class="cell100 column2" style="border-style:none">${order.shippingNo}</td>
										<td class="cell100 column2" style="border-style:none">${order.addr}</td>
										<td class="cell100 column2" style="border-style:none">${order.consignee}</td>
										<td class="cell100 column2" style="border-style:none">${order.tel}</td>
										<td class="cell100 column2" style="border-style:none">
										<c:choose>
											<c:when test="${order.status != '取貨完成' }">
												<a href="<spring:url value='/order/VendorUpdate?oId=${order.oId}' />" class="btn btn-primary"> <span class="glyphicon-info-sigh glyphicon"></span>賣場更新訂單 </a>
											</c:when>
											<c:otherwise>
												<img src="<c:url value='/order/images/check.jpg' />" >
											</c:otherwise>
										</c:choose>	
										</td> 								
									</tr>
								</tbody>
							</c:forEach>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	</form:form>
	
	<jsp:include page="/WEB-INF/views/footer/footer.jsp" />
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