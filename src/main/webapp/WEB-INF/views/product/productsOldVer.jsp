<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<meta charset="UTF-8">
<link rel='stylesheet' href="<c:url value='/css/style.css'/>"
	type="text/css" />
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery_3_4_1.js"></script>
<title>Products</title>

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
<style>
select {
	width: 100px;
	text-align: center;
	text-align-last: center;
	text-align: center;
	/* webkit*/
}

option {
	text-align: center;
	/* reset to left*/
}
</style>
</head>
<body>
	<section>
		<div>
			<div class="container" style="text-align: center">
				<h1>商品清單</h1>

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
							<a href="<spring:url value='productById02?pId=${product.pId}'/>"
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
</body>
</html>
