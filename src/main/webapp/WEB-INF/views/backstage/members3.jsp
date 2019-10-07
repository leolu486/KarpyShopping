<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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


function modify_member(mb){
	//do modify_meber
	var temp = mb.split(",")
	var mId = temp[0];
	var name = temp[1];
	var account = temp[2];
	var password = temp[3];
	var email = temp[4];
	var tel = temp[5];
	var date = temp[6];
	var gender = temp[7];
	var addr = temp[8];
	$("#mId").val(mId);
	$("#name1").val(name);
	$("#account1").val(account);
	$("#password1").val(password);	
	$("#email1").val(email);
	$("#tel1").val(tel);
	$("#birthday1").val(date);
	$("#gender1").val(gender);
	$("#addr1").val(addr);
	
	$("#modifymember").dialog({
		width : 1500,
		height : 800,
		modal : true,
		open : function() {
			$('.ui-widget-overlay').bind('click', function() {
				$("#modifymember").dialog('close');
			})
		}
	});
	
}

function delete_member(mId){
	if(confirm("確定刪除此會員嗎?")){
		window.location.href="removemember?mId="+mId;
		alert("刪除成功.");
	}else{
		alert("取消成功.");
	}
	
}


$(function() {
	$("#modifymember").hide();
	$("#addmember").hide();
	$("#open-dialog").click(function() {

		$("#addmember").dialog({
			width : 400,
			height : 350,
			modal : true,
			open : function() {
				$('.ui-widget-overlay').bind('click', function() {
					$("#addmember").dialog('close');
				})
			}
		});
	});

	//dialog actions
	$("#m-btn-submit").click(function(){
		//update member
		window.location.href="updateMember1?mId="+$("#mId").val()+"&name="+$("#name1").val()+"&account="+$("#account1").val()+"&password="+$("#password1").val()+"&email="+$("#email1").val()+"&tel="+$("#tel1").val()+"&date="+$("#birthday1").val()+"&gender="+$("#gender1").val()+"&addr="+$("#addr1").val();
	});
	$("#m-btn-cancel").click(function(){
		$("#modifymember").dialog('close');
	});
	//-----//
	$("#add-btn-submit").click(function(){

		window.location.href="addMember?account="+$("#account").val()+"&name="+$("#name").val()+"&password="+$("#password").val();
	});
	$("#add-btn-cancel").click(function(){
		$("#addmember").dialog('close');
	});

	
	
	
	$(document).on('keypress', function(e) {
		if (e.which == 13 & $("#dialog-msg").is(":focus")) {
			$("#send").click();
		}
	});

});

</script>
<script>
 	$("#adminMembers").addClass("active");
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
</head>

<body class="flat-blue sidebar-collapse">


	<jsp:include page="/WEB-INF/views/backstage/fragment/sidebar.jsp" />

	<jsp:include page="/WEB-INF/views/backstage/fragment/navi.jsp" />

	<script>
 	$("#adminMembers").addClass("active");
	</script>
	<!-- 	 page content  -->
	<div class="content-container wrap">

		<div class="container-fluid">


			<div class="row">
				<div class="col-xs-12">
					<span class="page-title red"><h2>Members</h2></span>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-12">

					<ol class="breadcrumb">
						<li><a>Home</a></li>
						<li><a>Members</a></li>
					</ol>
				</div>
			</div>

			<div class="row">

				<div class="col-xs-12">
					<div class="panel panel-warning"
						style="overflow: auto; height: 700px; text-align: center">
						<div class="panel-heading">
							<h3 class="panel-title" style="display: inline-block;">Member
								List</h3>
							<div class="panel-title" style="float: right;">
								<!-- add member -->
								<a id="open-dialog" href="#" style="color: white;" onclick="">+</a>
							</div>
						</div>

						<!-- dialog -->
						<div id="addmember" title="Add Member" class="modal-body">

							<p>
								<label for="name">Name :</label><input id="name" name="name"
									type="text">
							</p>
							<p>
								<label for="account">Account :</label><input id="account"
									name="account" type="text">
							</p>
							<p>
								<label for="password">Password :</label><input id="password"
									name="password" type="text">
							</p>
							<p>
								<label for="email">Email :</label><input id="email" name="email"
									type="text">
							</p>
							<p>
								<label for="phone">Phone :</label><input id="phone" name="phone"
									type="text">
							</p>
							<p>
								<label for="birthday">Birthday :</label><input id="birthday"
									name="birthday" type="text">
							</p>
							<p>
								<label for="gender">Gender :</label><input id="gender"
									name="gender" type="text">
							</p>
							<p style="text-align: right">
								<span style="text-align: left;"><input type="button"
									id="add-btn-submit" value="submit"> <input
									type="button" id="add-btn-cancel" value="cancel"></span>
							</p>
						</div>
						<!-- modify member -->
						<div id="modifymember" title="Modify Member" class="modal-body">
							<div style="font-family: 'Noto Sans TC', sans-serif;">
								<div class="div2">
									<div style="margin-right: 200px; padding-top: 10px">
										<div class="border1">
											<div>
												<div>
													<c:if test="${empty memberImage}">
														<img
															src="<c:url value='/images/default-img/default_member_image.jpg'/>"
															width="200px" height="auto" />
													</c:if>
													<c:if test="${! empty memberImage}">
														<img src="data:image/jpg;base64,${memberImage}"
															width="200px" height="auto" />
													</c:if>

													<p style="text-align: center">${memberLoginOK.name}</p>
												</div>
												<ul>
													<li class="catalog"><a href="#" id="blogin">個人資料</a></li>
												</ul>
											</div>

										</div>
										<!-- login block -->
										<form:form method='POST' modelAttribute="memberBean"
											enctype="multipart/form-data" onsubmit="return PDchk(this); "
											id="PD">
											<div class="border2" id="login">

												<div class="container">
													<p class="p1">個人檔案</p>
													<hr style="width: 670px">
													<div style="padding-left: 150px; padding-top: 20px;">
														<div class="form-group row ">
															<label for="inputEmail3" class="col-sm-2 col-form-label">姓名：</label>
															<div class="col-auto ">
																<form:input type="text" class="form-control"
																	id="inputEmail3" placeholder="姓名" autofocus="autofocus"
																	path="name" value="${memberLoginOK.name}" />

															</div>
														</div>
														<div class="form-group row">
															<label for="id" class="col-sm-2 col-form-label">照片：</label>
															<div class="col-auto">
																<form:input type="file" class="form-control-file"
																	id="exampleFormControlFile1" placeholder="未設定"
																	path="file" name="file" />

															</div>
														</div>
														<c:if test="${! empty memberLoginOK.account }">
															<div class="form-group row">
																<label for="email" class="col-sm-2 col-form-label">Email：</label>
																<div class="col-auto">
																	<form:input type="email" class="form-control"
																		id="inputEmail3" placeholder="Email" path="email"
																		value="${memberLoginOK.email}" />

																</div>
															</div>
														</c:if>
														<div class="form-group row">
															<label for="phone" class="col-sm-2 col-form-label">手機：</label>
															<div class="col-auto">
																<form:input type="phone" class="form-control" id="phone"
																	placeholder="phone" path="tel"
																	value="${memberLoginOK.tel}" />

															</div>
														</div>
														<div class="form-group row">
															<label for="date" class="col-sm-2 col-form-label">生日：</label>
															<div class="col-auto">
																<input class="form-control-plaintext" id="date"
																	name="date" type='date' placeholder="未設定"
																	value="${Birthday}" />
															</div>
														</div>
														<fieldset class="form-group">
															<div class="row">
																<label class="col-form-label col-sm-2 pt-0">性別：</label>
																<div class="col-auto">
																	<div class="form-check form-check-inline">
																		<form:radiobutton class="form-check-input"
																			path="gender" name="gender" id="gridRadios1"
																			value="male" />
																		<label class="form-check-label" for="男性"> 男性 </label>
																	</div>
																	<div class="form-check form-check-inline">
																		<form:radiobutton class="form-check-input"
																			path="gender" name="gender" id="gridRadios2"
																			value="fmale" />
																		<label class="form-check-label" for="女性"> 女性 </label>
																	</div>
																	<div class="form-check form-check-inline">
																		<form:radiobutton class="form-check-input"
																			path="gender" name="gender" id="gridRadios3"
																			value="others" />
																		<label class="form-check-label" for="其他/保密">
																			其他/保密 </label>
																	</div>
																</div>
															</div>
														</fieldset>
														<div class="form-group row form-check-inline">
															<label for="inputEmail3" class="col-sm col-form-label">地址：</label>
														</div>

														<div class="form-row align-items-center form-check-inline">
															<div class="col-auto my-1 ">
																<label class="mr-sm-2 sr-only"
																	for="inlineFormCustomSelect">縣市</label> <select
																	class="custom-select mr-sm-5" id="city" name="county">
																</select>
															</div>
														</div>

														<div class="form-row align-items-center form-check-inline">
															<div class="col-auto my-1">
																<label class="mr-sm-2 sr-only"
																	for="inlineFormCustomSelect">鄉鎮地區</label> <select
																	class="custom-select mr-sm-5" id="city2" name="city">
																</select>
															</div>
														</div>
														<div class="form-group row">
															<div class="col-5">
																<input class="form-control" id="city3"
																	placeholder="請輸入地址" name="addr" />
															</div>
														</div>


														<div class="form_btn" style="margin-left: 20px">
															<button type="submit" id="sign">確認更改</button>

														</div>
													</div>
												</div>
											</div>
										</form:form>
										<!-- login end -->
									</div>
									<!-- dialog end -->

									<table class="table table-striped" style="">
										<thead>
											<tr>
												<th style="text-align: center;">mId</th>
												<th style="text-align: center;">name</th>
												<th style="text-align: center;">Account</th>
												<th style="text-align: center;">password</th>
												<th style="text-align: center;">Email</th>
												<th style="text-align: center;">Phone</th>
												<th style="text-align: center;">Birthday</th>
												<th style="text-align: center;">Gender</th>
												<th style="text-align: center;">Address</th>
												<th style="text-align: center;">修改/刪除</th>
											</tr>
										</thead>


										<tbody>
											<c:forEach var="member" items='${members}'>
												<!-- foreach start -->
												<tr style="height: 80px;">
													<td style="vertical-align: middle;">${member.mId}</td>
													<td style="vertical-align: middle;">${member.name}</td>
													<td style="vertical-align: middle;">${member.account}</td>
													<td style="vertical-align: middle;">${member.password}</td>
													<td style="vertical-align: middle;">${member.email}</td>
													<td style="vertical-align: middle;">${member.tel}</td>
													<td style="vertical-align: middle;"><fmt:formatDate
															value="${member.birthday}" pattern="yyyy/MM/dd" /></td>
													<td style="vertical-align: middle;">${member.gender}</td>
													<td style="vertical-align: middle;">${member.addr}</td>
													<td style="vertical-align: middle;">
														<div class="btn-group">
															<button type="button"
																class="btn btn-primary dropdown-toggle"
																data-toggle="dropdown" aria-expanded="false">
																Edit&nbsp;<span class="caret"></span>
															</button>
															<ul class="dropdown-menu" role="menu">
																<li><a
																	onclick='modify_member("${member.mId},${member.name},${member.account},${member.password},${member.email},${member.tel},${member.birthday},${member.gender},${member.addr}")'>修改</a></li>
																<li class="divider"></li>
																<li><a onclick='delete_member(${member.mId})'>刪除</a></li>
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
