<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<!-- <script type="text/javascript" -->
<%-- 	src="<c:url value='/backstage-source/js/main.js'/>" /></script> --%>

<!-- <script type="text/javascript" -->
<%-- 	src="<c:url value='/backstage-source/js/index.js'/>" /></script> --%>

<script type="text/javascript"
	src="<c:url value='/backstage-source/js/jquery-1.12.1.min.js'/>" /></script>
<script type="text/javascript"
	src="<c:url value='/backstage-source/js/jquery-ui.min.js'/>" /></script>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/backstage-source/css/jquery-ui.css'/>" />
<script>
	$(function() {

		$("#dialog-modal").hide();
		$("#open-dialog").click(function() {

			$("#dialog-modal").dialog({
				width : 310,
				height : 100,
				modal : true,
				open : function() {
					$('.ui-widget-overlay').bind('click', function() {
						$("#dialog-modal").dialog('close');
					})
				}
			});
		});
		$(document).on('keypress', function(e) {
			if (e.which == 13 & $("#dialog-msg").is(":focus")) {
				$("#send").click();
			}
		});
		$("#send").click(function() {
			//dosomething
			var id = ${LoginOK.id};
			var name = "${LoginOK.name}";
			var time = Date.now();
			var msg = $("#dialog-msg").val();
			$("#dialog-modal").dialog('close');
// 			alert("addMessage?id="+id+"&name="+name+"&time=" + time + "&msg=" + msg);
			window.location.href="addMessage?id="+id+"&name="+name+"&time=" + time + "&msg=" + msg;
		});
		$(".delete-msg").click(function() {
			//dosomething
			window.location.href="removeMessage?amId=" + $(this).next('input').val();
		});
		
		

	});
</script>


</head>

<body class="flat-blue sidebar-collapse">


	<jsp:include page="/WEB-INF/views/backstage/fragment/sidebar.jsp" />

	<jsp:include page="/WEB-INF/views/backstage/fragment/navi.jsp" />

	<script>
 	$("#adminDashBoard").addClass("active");
	</script>

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
								<span> Admin Message</span>
								<div class="buttons"
									style="float: right; display: inline-block;">
									<!-- 新增訊息 -->
									<a id="open-dialog" href="#" style="color: white;" onclick="">+</a>
								</div>
							</div>

						</div>
						<!-- dialog -->
						<div id="dialog-modal" title="Add Message">
							<span> <input id="dialog-msg" type="text" /> <input
								id="send" type="button" value="send" />
							</span>
						</div>
						<!-- dialog end -->
						<div class="panel-body no-padding">

							<ul class="message-list">
								<c:forEach var="msg" items="${Last5Msg}">
									<li><img
										src="<c:url value='/images/default-img/default_member_image.jpg'/>"
										class="profile-img pull-left">
										<div class="message-block"
											style="display: inline-block; padding-left: 5px;">
											<div>
												<span class="username">${msg.name}</span> <span
													class="message-datetime"><fmt:formatDate
														value="${msg.time}" pattern="yyyy/MM/dd HH:mm:ss" /></span>
											</div>
											<div class="message">${msg.message}</div>
										</div>
										<div class="buttons"
											style="float: right; display: inline-block; padding-top: 20px; padding-right: 10px;">
											<!-- 刪除購物車商品 -->
											<a class="delete-btn delete-msg" href="#">X</a> <input
												type="hidden" class="amId" value="${msg.amId}">
										</div></li>
								</c:forEach>
							</ul>

						</div>
					</div>
				</div>

				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
					<div class="panel panel-success">
						<div class="panel-heading">
							<h3 class="panel-title">
								<i class="fa fa-users"></i> HotSearch Top 5
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
								<c:forEach var="key" items="${Top5}" varStatus="loop">
									<tr>
										<td>${loop.index+1}</td>
										<td>${key.searchBy}</td>
										<td>${key.searchCount+1}</td>
									</tr>
								</c:forEach>
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
