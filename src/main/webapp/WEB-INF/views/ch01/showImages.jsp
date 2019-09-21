<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<meta charset="UTF-8">
<link rel='stylesheet'
	href='${pageContext.request.contextPath}/css/styles.css'
	type="text/css" />
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<title>Products</title>
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
			<c:forEach var="product" items='${list}'>
				<div class="col-sm-6 col-md-3" style="width: 360px; height: 360px">
					<div class="thumbnail" style="width: 320px; height: 340px">
						<div class="caption">
							<p>
								<b style='font-size: 16px;'>商品名稱 : ${product.pname}</b>
							</p>
							<img src="data:image/jpg;base64,${product.base64Image}" width="200px"
								height="auto" />
								<img src="data:image/jpg;base64,${product.base64Image1}" width="200px"
								height="auto" />
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
	
	<table border="1">
  <tr>
    <td width='76'>
        <c:if test="${currentPageNo > 1}">
           <div id="pfirst">
              <a href="<spring:url value='changePage?currentPageNo=1' />">第一頁</a>
           </div>
        </c:if>
     </td>
     <td width='76'>
        <c:if test="${currentPageNo > 1}">
           <div id="pprev">
              <a href="<spring:url value='changePage?currentPageNo=${currentPageNo-1}' />">上一頁</a>
           </div>
        </c:if>  
     </td>
     <td width='76'>
            <c:if test="${currentPageNo != totalPages}">
                <div id="pnext">
                   <a href="<spring:url value='changePage?currentPageNo=${currentPageNo+1}' />">下一頁</a>
                </div>
            </c:if>
     </td>  
     <td width='76'>
            <c:if test="${currentPageNo != totalPages}">
                <div id="plast">
                    <a href="<spring:url value='changePage?currentPageNo=${totalPages}' />">最末頁</a>
                </div>
            </c:if>
     </td>
     <td width='176' align="center">
                      第${currentPageNo}頁 / 共${totalPages}頁
     </td>  
</tr>
</table>
</body>
</html>
