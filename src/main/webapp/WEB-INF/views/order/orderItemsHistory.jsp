<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>買過商品查詢</title>
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

	.transition {
	    -webkit-transform: scale(1.6); 
	    -moz-transform: scale(1.6);
	    -o-transform: scale(1.6);
	    transform: scale(2.0);
	}
	
	  body { 
	            opacity: 0; 
	            transition: opacity 2s; 
	        } 
</style>

<body onload="document.body.style.opacity='1'">
<jsp:include page="/WEB-INF/views/fragment/top.jsp" />
<div class="limiter">
		<div class="container-table100">
			<div class="wrap-table100">
				<a class="btn btn-secondary" style="margin-bottom:10px" href='<c:url value="/membercentre"/>'>返回會員中心</a>
				<span style="margin-left:20px;font-size:30px;font-weight:bold">買過商品查詢</span>
				
				
				<div class="table100 ver2 m-b-110">
					<div class="table100-head">
						<table>
							<thead>
								<tr class="row100 head">									
									<th class="cell100 column1 font-weight-bold" style="border-style:none">購買日期</th>
									<th class="cell100 column2 font-weight-bold" style="border-style:none">商品編號</th>
									<th class="cell100 column3 font-weight-bold" style="border-style:none">品名</th>
									<th class="cell100 column2 font-weight-bold" style="border-style:none">單價</th>							
									<th class="cell100 column2 font-weight-bold" style="border-style:none">數量</th>							
								</tr>
							</thead>
						</table>
					</div>

					<div class="table100-body js-pscroll">
						<table>
						<c:forEach var="item" items="${items}">
							<tbody>	
								<tr class="row100 body">
								
									<td class="cell100 column1" style="border-style:none">${item.orderBean.odate}</td>
									<td class="cell100 column2" style="border-style:none">${item.productId}</td>
									<td class="cell100 column3" style="border-style:none;"><img class="pic${item.productId}" width='75px' height='75px' src="<c:url value='/getPicture/${item.productId}'/>" /><span style="margin-left:25px">${item.description}</span></td>
									<td class="cell100 column2" style="border-style:none"><fmt:formatNumber value="${item.unitPrice}" pattern="#,###,###" />元</td>
									<td class="cell100 column2" style="border-style:none">${item.quantity}</td>
												
								</tr>
							</tbody>
						</c:forEach>
						</table>
					</div>
				</div>
			</div>
<%-- 			<a class="btn btn-primary" href='<c:url value="/"/>'>回首頁</a> --%>
		</div>
	</div>
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
	
		<script>
		
		$(document).ready(function(){
		    $('.column3 img').hover(function() {
		        $(this).addClass('transition');
		    
		    }, function() {
		        $(this).removeClass('transition');
		    	});
		});
	</script>

</body>
</html>