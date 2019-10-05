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
	src="<c:url value='/js/bootstrap.min.js'/>" /></script>

<script type="text/javascript"
	src="<c:url value='/backstage-source/js/bootstrap-select.min.js'/>" /></script>
<script type="text/javascript"
	src="<c:url value='/backstage-source/js/main.js'/>" /></script>



<script type="text/javascript"
	src="<c:url value='/backstage-source/js/jquery-1.12.1.min.js'/>" /></script>
<script type="text/javascript"
	src="<c:url value='/backstage-source/js/jquery-ui.min.js'/>" /></script>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/backstage-source/css/jquery-ui.css'/>" />



<style>
::-webkit-scrollbar {
	width: 8px;
}

::-webkit-scrollbar-track {
	-webkit-border-radius: 10px;
	border-radius: 10px;
	margin: 0px 0 5px 0;
}

::-webkit-scrollbar-thumb {
	-webkit-border-radius: 4px;
	border-radius: 4px;
	background: rgb(191, 191, 191);
}

ul.dropdown-menu>li {
	cursor: pointer;
}
</style>


<script>

// (function() {
      
//   });

function modify_manager(id){
	//do modify_vendor
	var temp = id.split(",")
	var id = temp[0];
	var name = temp[1];
	var account = temp[2];
	var password = temp[3];
	$("#id").val(id);
	$("#account1").val(account);
	$("#name1").val(name);	
	$("#password1").val(password);	
	
	$("#modifymanager").dialog({
		width : 400,
		height : 350,
		modal : true,
		open : function() {
			$('.ui-widget-overlay').bind('click', function() {
				$("#modifymanager").dialog('close');
			})
		}
	});
	
}

function delete_manager(id){
	if(confirm("確定刪除資料嗎?")){
		window.location.href="removemanager?id="+id;
		alert("刪除成功.");
	}else{
		alert("取消成功.");
	}
	
}


$(function() {
	$("#modifymanager").hide();
	$("#addmanager").hide();
	$("#open-dialog").click(function() {

		$("#addmanager").dialog({
			width : 400,
			height : 350,
			modal : true,
			open : function() {
				$('.ui-widget-overlay').bind('click', function() {
					$("#addmanager").dialog('close');
				})
			}
		});
	});
	
	//dialog actions
	$("#m-btn-submit").click(function(){
		//update manager
		window.location.href="updateManager?id="+$("#id").val()+"&account="+$("#account1").val()+"&name="+$("#name1").val()+"&password="+$("#password1").val();
	});
	$("#m-btn-cancel").click(function(){
		$("#modifymanager").dialog('close');
	});
	//-----//
	$("#add-btn-submit").click(function(){
		//add manager
// 		var account = $("#account").val();
// 		var pasword = $("#password").val();
// 		var name = $("#name").val();

		window.location.href="addManager?account="+$("#account").val()+"&name="+$("#name").val()+"&password="+$("#password").val();
	});
	$("#add-btn-cancel").click(function(){
		$("#addmanager").dialog('close');
	});

	
	
	
	$(document).on('keypress', function(e) {
		if (e.which == 13 & $("#dialog-msg").is(":focus")) {
			$("#send").click();
		}
	});

});

</script>
<style>
label {
	cursor: pointer;
	display: inline-block;
	padding: 3px 6px;
	text-align: right;
	width: 150px;
	vertical-align: top;
}

input {
	font-size: inherit;
}
</style>


<script>
 	$("#adminManagers").addClass("active");
	</script>

</head>

<body class="flat-blue sidebar-collapse">


	<jsp:include page="/WEB-INF/views/backstage/fragment/sidebar.jsp" />

	<jsp:include page="/WEB-INF/views/backstage/fragment/navi.jsp" />

	<!-- 	 page content  -->
	<div class="content-container wrap">

		<div class="container-fluid">


			<div class="row">
				<div class="col-xs-12">
					<span class="page-title red"><h2>Managers</h2></span>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-12">

					<ol class="breadcrumb">
						<li><a>Home</a></li>
						<li><a>Managers</a></li>
					</ol>
				</div>
			</div>

			<div class="row">

				<div class="col-xs-12">
					<div class="panel panel-success"
						style="overflow: auto; height: 700px; text-align: center">
						<div class="panel-heading">
							<h3 class="panel-title" style="display: inline-block;">管理員清單</h3>
							<div class="panel-title" style="float: right;">
								<!-- add manager -->
								<a id="open-dialog" href="#" style="color: white;" onclick="">+</a>
							</div>
						</div>

						<!-- dialog -->
						<div id="addmanager" title="Add Manager" class="modal-body">

							<p>
								<label for="account">Account:</label><input id="account"
									name="account" type="text">
							</p>
							<p>
								<label for="name">Name: </label><input id="name" name="name"
									type="text">
							</p>
							<p>
								<label for="password">Password:</label><input id="password"
									name="password" type="email">
							</p>
							<p style="text-align: right">
								<span style="text-align: left;"><input type="button"
									id="add-btn-submit" value="submit"> <input
									type="button" id="add-btn-cancel" value="cancel"></span>
							</p>
						</div>

						<!-- modify vendor -->
						<div id="modifymanager" title="Modify Manager" class="modal-body">
							<p>
								<label for="id">Manager ID : </label><input id="id" name="id"
									type="text" readonly="readonly">
							</p>
							<p>
								<label for="account">Account :</label><input id="account1"
									name="account" type="text">
							</p>
							<p>
								<label for="name">Name :</label><input id="name1" name="name"
									type="text">
							</p>
							<p>
								<label for="password">Password :</label><input id="password1"
									name="password" type="text">
							</p>
							<p style="text-align: right">
								<span style="text-align: left;"><input type="button"
									id="m-btn-submit" value="submit"> <input type="button"
									id="m-btn-cancel" value="cancel"></span>
							</p>
						</div>
						<!-- dialog end -->

						<table class="table table-striped" style="">
							<thead>
								<tr>
									<th style="text-align: center;">編號</th>
									<th style="text-align: center;">帳號</th>
									<th style="text-align: center;">姓名</th>
									<th style="text-align: center;">密碼</th>
									<th style="text-align: center;">修改/刪除</th>
								</tr>
							</thead>


							<tbody>
								<c:forEach var="managers" items='${managers}'>
									<!-- foreach start -->
									<tr style="height: 80px;">
										<td style="vertical-align: middle;">${managers.id}</td>
										<td style="vertical-align: middle;">${managers.account}</td>
										<td style="vertical-align: middle;">${managers.name}</td>
										<td style="vertical-align: middle;">${managers.password}</td>
										<td style="vertical-align: middle;">


											<div class="btn-group">
												<button type="button"
													class="btn btn-primary dropdown-toggle"
													data-toggle="dropdown" aria-expanded="false">
													Edit&nbsp;<span class="caret"></span>
												</button>
												<ul class="dropdown-menu" role="menu">
													<li><a
														onclick='modify_manager("${managers.id},${managers.name},${managers.account},${managers.password}")'>修改</a></li>
													<li class="divider"></li>
													
													<li><a onclick='delete_manager(${managers.id})'>刪除</a>
													</li>
												</ul>
											</div>
										</td>
									</tr>
									<!-- foreach start -->
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
