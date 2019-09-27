<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
<!-- style css -->
<link rel="stylesheet" href="<c:url value="/css/style.css" />"
	type="text/css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/vendor/modernizr-2.8.3.min.js"></script>
</head>
<body>
	<div class="link_area">
		<div class="container">
			<div class="row">
				<div class="social_design on_right">
					<ul>
						<li><a class="pinterest" target="_blank" href="#"> <span>
									<i class="fa fa-instagram"></i> <span class="social-text">購物車</span>
							</span>
						</a></li>
						<li><a class="mail-to" target="_blank"
							href="mailto:moghost520@gmail.com"> <span> <i
									class="fa fa-envelope-o"></i> <span class="social-text">寄信給卡痞</span>
							</span>
						</a></li>
						<li><a class="pinterest" target="_blank" href="#"> <span>
									<i class="fa fa-instagram"></i> <span class="social-text">會員中心</span>
							</span>
						</a></li>
						<li><a class="pinterest" target="_blank" href="memberQandA"> <span>
									<i class="fa fa-instagram"></i> <span class="social-text">常見問題</span>
							</span>
						</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</body>
</html>