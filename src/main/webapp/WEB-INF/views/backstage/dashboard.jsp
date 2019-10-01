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
	src="${pageContext.request.contextPath}/backstage-source/js/jquery-2.1.3.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/backstage-source/js/Chart.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/backstage-source/js/bootstrap-select.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/backstage-source/js/main.js"></script>


<!-- <script type="text/javascript" -->
<%-- 	src="${pageContext.request.contextPath}/backstage-source/js/index.js"></script> --%>




</head>

<body class="flat-blue sidebar-collapse">


	<jsp:include page="/WEB-INF/views/backstage/fragment/sidebar.jsp" />

	<jsp:include page="/WEB-INF/views/backstage/fragment/navi.jsp" />


	<!-- 	 page content  -->
	<div class="content-container wrap">

		<div class="container-fluid">
			<div class="row">
				<div class="col-xs-12">
					<span class="page-title red"><h2>DashBoard</h2></span>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-12">

					<ol class="breadcrumb">
						<li><a>Home</a></li>
						<li><a>DashBoard</a></li>
					</ol>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">

					<div class="banner-block red">
						<div class="block-content">
							<span class="banner-icon fa-stack fa-3x"> <i
								class="fa fa-circle fa-stack-2x"></i> <i
								class="fa fa-users fa-stack-1x fa-inverse"></i>
							</span>
							<div class="banner-content">
								<div class="title">${memberCount}</div>
								<div class="sub-title">Members</div>
							</div>
							<div class="clear-both"></div>
						</div>

					</div>

				</div>
				<div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">

					<div class="banner-block yellow">
						<div class="block-content">
							<span class="fa-stack fa-3x"> <i
								class="fa fa-circle fa-stack-2x"></i> <i
								class="fa fa-archive fa-stack-1x fa-inverse"></i>
							</span>
							<div class="banner-content">
								<div class="title">${orderCount}</div>
								<div class="sub-title">Orders</div>
							</div>
							<div class="clear-both"></div>
						</div>
					</div>

				</div>
				<div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">

					<div class="banner-block green">
						<div class="block-content">
							<span class="fa-stack fa-3x"> <i
								class="fa fa-circle fa-stack-2x"></i> <i
								class="fa fa-th-large fa-stack-1x fa-inverse"></i>
							</span>
							<div class="banner-content">
								<div class="title">${productCount}</div>
								<div class="sub-title">Product View</div>
							</div>
							<div class="clear-both"></div>
						</div>

					</div>

				</div>
				<div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">

					<div class="banner-block blue">
						<div class="block-content">
							<span class="fa-stack fa-3x"> <i
								class="fa fa-circle fa-stack-2x"></i> <i
								class="fa fa-info-circle fa-stack-1x fa-inverse"></i>
							</span>
							<div class="banner-content">
								<div class="title">${adminCount}</div>
								<div class="sub-title">Admins</div>
							</div>
							<div class="clear-both"></div>
						</div>

					</div>

				</div>
			</div>

			<div class="row">
				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
					<div class="panel panel-info">
						<div class="panel-heading">
							<div class="panel-title">
								<span> Admin Message<a href="#"
									style="margin-left: 300x;">+</a>
								</span>
							</div>

						</div>

						<div class="panel-body no-padding">
							<ul class="message-list">

								<li><img
									src="<c:url value='/backstage-source/images/profile.jpg'/>"
									class="profile-img pull-left">
									<div class="message-block">
										<div>
											<span class="username">${admin-name}</span> <span
												class="message-datetime">${message-datetime}</span>
										</div>
										<div class="message">${message}</div>
									</div></li>



							</ul>
						</div>
					</div>
				</div>
				
				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
					<div class="panel panel-success">
						<div class="panel-heading">
							<h3 class="panel-title">
								<i class="fa fa-users"></i> HotSearch Top 10
							</h3>
						</div>
						<table class="table table-striped" style="text-align: center;">
							<thead>
								<tr>
									<th style="text-align: center">Rank</th>
									<th style="text-align: center">KeyWord</th>
									<th style="text-align: center">Count</th>
								</tr>

							</thead>
							<tbody>
								<tr>
									<td>${ranks}</td>
									<td>${wordrank}</td>
									<td>${count}</td>
								</tr>
								<tr>
									<td>${ranks}</td>
									<td>${wordrank}</td>
									<td>${count}</td>
								</tr>
								<tr>
									<td>${ranks}</td>
									<td>${wordrank}</td>
									<td>${count}</td>
								</tr>
								<tr>
									<td>${ranks}</td>
									<td>${wordrank}</td>
									<td>${count}</td>
								</tr>
								<tr>
									<td>${ranks}</td>
									<td>${wordrank}</td>
									<td>${count}</td>
								</tr>
								<tr>
									<td>${ranks}</td>
									<td>${wordrank}</td>
									<td>${count}</td>
								</tr>
								<tr>
									<td>${ranks}</td>
									<td>${wordrank}</td>
									<td>${count}</td>
								</tr>
								<tr>
									<td>${ranks}</td>
									<td>${wordrank}</td>
									<td>${count}</td>
								</tr>
								<tr>
									<td>${ranks}</td>
									<td>${wordrank}</td>
									<td>${count}</td>
								</tr>
								<tr>
									<td>${ranks}</td>
									<td>${wordrank}</td>
									<td>${count}</td>
								</tr>


							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>

	<footer class="footer">
		<span>Copyright by KarpyShopping</span>
	</footer>
</body>

</html>
