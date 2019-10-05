<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>

<head>
<title>Flat Admin - Bootstrap Themes</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Free Flat Admin Bootstrap Themes">
<meta name="author" content="Charuwit Nodthaisong">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
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

<link rel="stylesheet" type="text/css"
	href="<c:url value='/backstage-source/css/style.css'/>" />


<link rel="stylesheet" type="text/css"
	href="<c:url value='/backstage-source/css/theme.css'/>" />

<!-- <script type="text/javascript" -->
<%-- 	src="<c:url value='/backstage-source/js/jquery-2.1.3.min.js'/>" /></script> --%>
<script type="text/javascript"
	src="<c:url value='/backstage-source/js/Chart.min.js'/>" /></script>
<script type="text/javascript"
	src="<c:url value='/backstage-source/js/bootstrap-select.min.js'/>" /></script>
<script type="text/javascript"
	src="<c:url value='/backstage-source/js/main.js'/>" /></script>


<script type="text/javascript"
	src="<c:url value='/backstage-source/js/index.js'/>" /></script>




</head>

<body>

	<div class="sidebar">

		<div class="menu-control toggle-sidebar">
			<a class="navbar-brand" href="#"><i class="fa fa-bar-chart"></i>
				Flat Admin</a> <i class="fa fa-bars navicon"></i>
		</div>

		<ul class="menu">
			<li class="submenu"><a id="adminDashBoard" href="/KarpyShopping/admin">
					<div>
						<i class="menu-icon fa fa-bar-chart"></i> <span class="menu-title">DashBoard</span>
					</div>
			</a></li>
						<li class="submenu dropdown"><a id="adminProducts" href="/KarpyShopping/adminProducts" class="dropdown-toggle"
				data-toggle="dropdown">
					<div>

						<i class="menu-icon fa fa-th-large"></i> <span class="menu-title">Products</span>

					</div>
			</a>
			<ul class="dropdown-menu">
					<li><a href="/KarpyShopping/product/add">
							<div>

								<i class="menu-icon fa fa-sign-in"></i> <span
									class="menu-sub-title">add product</span>

							</div>
					</a></li>
					<li><a href="/KarpyShopping/getProductsByManage">
							<div>

								<i class="menu-icon fa fa-pencil-square-o"></i> <span
									class="menu-sub-title">edit product</span>

							</div>
					</a></li>
				</ul></li>

						<li class="submenu dropdown"><a id="adminOrders" href="/KarpyShopping/orders"  class="dropdown-toggle" data-toggle="dropdown">


					<div>

						<i class="menu-icon fa fa-archive"></i> <span class="menu-title">Orders</span>

					</div>

					</a>
					
					<ul class="dropdown-menu">
					<li><a href="orderPage">
							<div>

								<i class="menu-icon fa fa-bar-chart"></i> <span
									class="menu-sub-title">單筆訂單查詢</span>

							</div>
					</a></li>
					<li><a href="orders">
							<div>

								<i class="menu-icon fa fa-bar-chart"></i> <span
									class="menu-sub-title">全部訂單查詢</span>

							</div>
					</a></li>
				</ul>
					
			</li>
			<li class="submenu"><a href="/KarpyShopping/adminMembers">

					<div>

						<i class="menu-icon fa fa-users"></i> <span class="menu-title">Members</span>

					</div>
			</a></li>
			<li class="submenu"><a id="adminManagers" href="/KarpyShopping/adminManagers">
					<div>

						<i class="menu-icon fa fa-info-circle"></i> <span class="menu-title">Managers</span>

					</div>
			</a></li>
			<li class="submenu"><a id="adminVendors" href="/KarpyShopping/adminVendors">
					<div>

						<i class="menu-icon fa fa-truck"></i> <span
							class="menu-title">Vendor</span>

					</div>
			</a></li>

			<li class="submenu dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown">
					<div>

						<i class="menu-icon fa fa-slack"></i> <span class="menu-title">Page
							Example</span>

					</div>
			</a>
				<ul class="dropdown-menu">
					<li><a href="#">
							<div>

								<i class="menu-icon fa fa-sign-in"></i> <span
									class="menu-sub-title">Login</span>

							</div>
					</a></li>
					<li><a href="#">
							<div>

								<i class="menu-icon fa fa-pencil-square-o"></i> <span
									class="menu-sub-title">Register</span>

							</div>
					</a></li>
				</ul></li>
			<li class="submenu dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown">
					<div>
						<i class="menu-icon fa fa-magic"></i> <span class="menu-title">Custom
							Elements</span>
					</div>
			</a>


				<ul class="dropdown-menu">
					<li><a href="#">
							<div>

								<i class="menu-icon fa fa-bar-chart"></i> <span
									class="menu-sub-title">Dashboard</span>

							</div>
					</a></li>
				</ul></li>
		</ul>
	</div>
</body>

</html>

