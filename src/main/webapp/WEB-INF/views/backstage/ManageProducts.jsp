<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>

<head>

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

<script>
	var total = ${totalPages};
	$(function() {
		console.log("ready!");
		//add select page option
		for (var i = 1; i <= total; i++) {
			$('#selectPage').append(
					'<option value="'+i+'">第' + i + '頁</option>');
		}
		//selected page
		$('#selectPage').val('${currentPageNo}');
		//select change page
		$('#selectPage').on('change',function() {
			window.location = "changePage?currentPageNo="+$(this).val();
		});
	});
</script>


</head>

<body class="flat-blue sidebar-collapse">


	<jsp:include page="/WEB-INF/views/backstage/fragment/sidebar.jsp" />

	<jsp:include page="/WEB-INF/views/backstage/fragment/navi.jsp" />

	<script>
 		$("#adminProducts").addClass("active");
	</script>

	<!-- 	 page content  -->
	<div class="content-container wrap">

		<div class="container-fluid">
			<div class="row">
				<div class="col-xs-12">
					<span class="page-title red"><h2>Products</h2></span>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-12">

					<ol class="breadcrumb">
						<li><a>Home</a></li>
						<li><a>Products</a></li>
					</ol>
				</div>
			</div>
			
	<section>
		<div>
			<div class="container" style="text-align: center">
				<h1>管理商品</h1>

			</div>
		</div>
	</section>
	<hr
		style="height: 1px; border: none; color: #333; background-color: #333;">
	<section class="container">
		<div class="row">
		<c:if test="${empty resultPage}">
		<h1 style="text-align: center;">查無商品資料MDFK</h1>
		</c:if>
			<c:forEach var="product" items='${resultPage}'>
				<div class="col-sm-6 col-md-3" style="width: 360px; height: 360px">
					<div class="thumbnail" style="width: 320px; height: 340px">
						<div class="caption">
							<p>
								<b style='font-size: 16px;'>商品名稱 : ${product.pname}</b>
							</p>
							<a href="<spring:url value='productById?pId=${product.pId}'/>"
								class="btn btn-primary"> <span
								class="glyphicon-info-sigh glyphicon"></span>詳細資料
							</a>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</section>

	<table border="1" style="margin-left: auto; margin-right: auto;">
		<tr>
			<!-- first -->
			<td width='76'>
				<div id="pfirst">
					<c:if test="${currentPageNo > 1}">
						<a href="<spring:url value='changePage?currentPageNo=1' />">第一頁</a>
					</c:if>
					<c:if test="${currentPageNo == 1}">
					第一頁
					</c:if>
				</div>
			</td>
			<!-- previous -->
			<td width='76'>
				<div id="pprev">
					<c:if test="${currentPageNo > 1}">
						<a
							href="<spring:url value='changePage?currentPageNo=${currentPageNo-1}' />">上一頁</a>
					</c:if>
					<c:if test="${currentPageNo == 1}">
					上一頁
					</c:if>
				</div>
			</td>
			<!-- select -->
			<td width='76'>
				<div id="pselect">
					<select class="selectPage" id="selectPage">
					</select>
				</div>
			</td>

			<!-- next -->
			<td width='76'>
				<div id="pnext">
					<c:if test="${currentPageNo != totalPages}">
						<a
							href="<spring:url value='changePage?currentPageNo=${currentPageNo+1}' />">下一頁</a>
					</c:if>
					<c:if test="${currentPageNo == totalPages}">
					下一頁
					</c:if>
				</div>
			</td>
			<!-- last -->
			<td width='76'>
				<div id="plast">
					<c:if test="${currentPageNo != totalPages}">
						<a
							href="<spring:url value='changePage?currentPageNo=${totalPages}' />">最末頁</a>
					</c:if>
					<c:if test="${currentPageNo == totalPages}">
					最末頁
					</c:if>
				</div>
			</td>
			<td width='176' align="center">第${currentPageNo}頁
				/共${totalPages}頁</td>
		</tr>
	</table>
			</div>
		</div>


	<footer class="footer">
		<span>Copyright by KarpyShopping</span>
	</footer>
</body>

</html>
