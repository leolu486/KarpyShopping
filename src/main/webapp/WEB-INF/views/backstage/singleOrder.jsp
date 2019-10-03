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
	#orderTable{
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
						<li><a>訂單查詢</a></li>
					</ol>
				</div>
			</div>
			
		<form:form id="orderTable" method="Post" >
			<div style="margin-left:1500px;;">
				<span style="font-size:25px;font-weight:bold">搜尋: </span>					
				<input id="searchOrder" name="oId" type='text' class='form-control' style="display:inline;width:150px;margin-bottom:10px;"placeholder="請輸入訂單編號"/>
				<input id="searchBtn" name="searchBtn" type='submit' class='btn btn-primary' style="display:inline;margin-bottom:5px;margin-left:5px;" value="送出" />
			</div>	
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
									<th class="cell100 column2 font-weight-bold" style="border-style:none">
										<span style="font-size:1.4em;" class="fa fa-pencil-square-o"></span>
									</th>							
															
								</tr>
							</thead>
						</table>
					</div>

					<div class="table100-body js-pscroll">
						<table>
							
								<tbody>	
									<tr class="row100 body">
										<td class="cell100 column1" style="border-style:none">${order.oId}</td>
										<td class="cell100 column2" style="border-style:none">${order.odate}</td>
										<td class="cell100 column2" style="border-style:none">
											<a href="<spring:url value='/orderItemByOidBackStage?oId=${order.oId}' />" class="btn btn-info"> <span class="glyphicon-info-sigh glyphicon"></span>詳細資料 </a>
										</td>									
										<td class="cell100 column2" style="border-style:none"><fmt:formatNumber value="${order.price}" pattern="#,###,###" />元</td>
										<td class="cell100 column2" style="border-style:none">${order.status}</td>
										<td class="cell100 column2" style="border-style:none">${order.shippingNo}</td>
										<td class="cell100 column2" style="border-style:none">${order.addr}</td>
										<td class="cell100 column2" style="border-style:none">${order.consignee}</td>
										<td class="cell100 column2" style="border-style:none">${order.tel}</td>
										<td class="cell100 column2" style="border-style:none">
										<c:choose>
											<c:when test="${order.status != '取貨完成' }">
												<a href="<spring:url value='/VendorUpdateOrder?oId=${order.oId}' />" class="btn btn-primary"> <span class="glyphicon-info-sigh glyphicon"></span>賣場更新訂單 </a>
											</c:when>
											<c:otherwise>
												<img style="width:55px;height:55px;" src="<c:url value='/order/images/check.jpg' />" >
											</c:otherwise>
										</c:choose>	
										</td> 								
									</tr>
								</tbody>
							
						</table>
					</div>
				</div>
			</form:form>
			
			
			
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
</body>

</html>
