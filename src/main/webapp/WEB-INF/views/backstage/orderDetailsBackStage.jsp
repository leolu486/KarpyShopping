<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>

<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>訂單明細</title>
<link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,900'
	rel='stylesheet' type='text/css' />

<link rel="stylesheet" type="text/css"
	href="<c:url value='/backstage-source/css/bootstrap.min.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/backstage-source/css/animate.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/backstage-source/css/font-awesome.min.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/backstage-source/css/bootstrap-select.min.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/backstage-source/css/awesome-bootstrap-checkbox.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/backstage-source/css/select2.css'/>" />
<!-- ? -->
<link rel="stylesheet" type="text/css"
	href="<c:url value='/backstage-source/css/style.css'/>" />

<!-- ? -->
<link rel="stylesheet" type="text/css"
	href="<c:url value='/backstage-source/css/theme.css'/>" />

<script type="text/javascript"
	src="<c:url value='/backstage-source/js/jquery-2.1.3.min.js'/>" /></script>
<script type="text/javascript"
	src="<c:url value='/backstage-source/js/Chart.min.js'/>" /></script>
<script type="text/javascript"
	src="<c:url value='/backstage-source/js/bootstrap-select.min.js'/>" /></script>
<script type="text/javascript"
	src="<c:url value='/backstage-source/js/main.js'/>" /></script>

<script type="text/javascript"
	src="<c:url value='/backstage-source/js/index.js'/>" /></script>
	
	
	
	
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
	.table100{
		animation:transitionIn 1s;
	}

	@keyframes transitionIn{
		from{		
			opacity:0;
			transform:rotateX(-10deg);
		}		
		
		to{
			opacity:1;
			transform:rotateX(0);
		}
	}
</style>

<body class="flat-blue sidebar-collapse">


	<jsp:include page="/WEB-INF/views/backstage/fragment/sidebar.jsp" />

	<jsp:include page="/WEB-INF/views/backstage/fragment/navi.jsp" />


	<!-- 	 page content  -->
	<div class="content-container wrap">

		<div class="container-fluid">
			<div class="row">
				<div class="col-xs-12">
					<span class="page-title red"><h2>訂單</h2></span>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-12">

					<ol class="breadcrumb">
						<li><a href="admin">Home</a></li>
						<li><a href="orders">訂單查詢</a></li>
						<li><a>訂單細項</a></li>
					</ol>
				</div>
			</div>
			
			
			
			<div class="table100 ver2 m-b-110" style="margin-top:10px;">
					<div class="table100-head">
						<table>
							<thead>
								<tr class="row100 head">									
									<th class="cell100 column1 font-weight-bold" style="border-style:none">訂單編號</th>
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
							<tbody>	
								<c:forEach var="item" items="${items}">
										<tr class="row100 body">								
											<td class="cell100 column1" style="border-style:none">${item.orderBean.oId}</td>
											<td class="cell100 column2" style="border-style:none;">${item.productId}</td>									
											<td class="cell100 column3" style="border-style:none;"><img class="pic${item.productId}" width='75px' height='75px' src="<c:url value='/getPicture/${item.productId}'/>" /><span style="margin-left:25px">${item.description}</span></td>
											<td class="cell100 column2" style="border-style:none"><fmt:formatNumber value="${item.unitPrice}" pattern="#,###,###" />元</td>
											<td class="cell100 column2" style="border-style:none">${item.quantity}</td>												
										</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			
			
			
			
		</div>
	</div>

	<footer class="footer">
		<span>Copyright by KarpyShopping</span>
	</footer>
	
	
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
