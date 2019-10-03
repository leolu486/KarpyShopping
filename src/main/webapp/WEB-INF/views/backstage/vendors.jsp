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
<link rel="stylesheet" type="text/css" href="<c:url value='/backstage-source/css/jquery-ui.css'/>" />



<style>

::-webkit-scrollbar {
width: 8px;
}
::-webkit-scrollbar-track {
-webkit-border-radius: 10px;
border-radius: 10px;
margin:0px 0 5px 0;
}
::-webkit-scrollbar-thumb {
-webkit-border-radius: 4px;
border-radius: 4px;
background: rgb(191, 191, 191);
}

ul.dropdown-menu > li{
	cursor:pointer;
}
</style>


<script>
function modify_vendor(data){
	//do modify_vendor
	var temp = data.split(",")
	var vId = temp[0];
	var vname = temp[1];
	var addr = temp[2];
	var tel = temp[3];
	var email = temp[4];
	$("#vid").val(vId);
	$("#vname").val(vname);	
	$("#addr").val(addr);	
	$("#tel").val(tel);	
	$("#email").val(email);	
	
	$("#modifyvendor").dialog({
		width : 400,
		height : 350,
		modal : true,
		open : function() {
			$('.ui-widget-overlay').bind('click', function() {
				$("#modifyvendor").dialog('close');
			})
		}
	});
	
}

function delete_vendor(data){
	if(confirm("Remove vendor will remove relative products. Continue?")){
		//do remove vendor
		window.location.href="removeVendor?vId="+data;
		alert("Remove vendor success.");
	}else{
		alert("Operate cancelled.");
	}
	
}


$(function() {
	$("#modifyvendor").hide();
	$("#addvendor").hide();
	$("#open-dialog").click(function() {

		$("#addvendor").dialog({
			width : 400,
			height : 350,
			modal : true,
			open : function() {
				$('.ui-widget-overlay').bind('click', function() {
					$("#addvendor").dialog('close');
				})
			}
		});
	});
	
	//dialog actions
	$("#m-btn-submit").click(function(){
		//update vendor
		window.location.href="updateVendor?vId="+$("#vid").val()+"&vname="+$("#vname").val()+"&addr=" +$("#addr").val()+"&tel="+$("#tel").val()+"&email="+$("#email").val();
	});
	$("#m-btn-cancel").click(function(){
		$("#modifyvendor").dialog('close');
	});
	//-----//
	$("#add-btn-submit").click(function(){
		//add vendor
		window.location.href="addVendor?vname="+$("#vname1").val()+"&addr=" +$("#addr1").val()+"&tel="+$("#tel1").val()+"&email="+$("#email1").val();
	});
	$("#add-btn-cancel").click(function(){
		$("#addvendor").dialog('close');
	});

	
	
	
	$(document).on('keypress', function(e) {
		if (e.which == 13 & $("#dialog-msg").is(":focus")) {
			$("#send").click();
		}
	});
// 	$("#send").click(function() {
// 		//dosomething
// 		var id = ${LoginOK.id};
// 		var name = "${LoginOK.name}";
// 		var time = Date.now();
// 		var msg = $("#dialog-msg").val();
// 		$("#dialog-modal").dialog('close');
// //			alert("addMessage?id="+id+"&name="+name+"&time=" + time + "&msg=" + msg);
// 		window.location.href="addMessage?id="+id+"&name="+name+"&time=" + time + "&msg=" + msg;
// 	});
// 	$(".delete-msg").click(function() {
// 		//dosomething
// 		window.location.href="removeMessage?amId=" + $(this).next('input').val();
// 	});
	
	

});

</script>

<style>
        label{
            cursor: pointer;
            display: inline-block;
            padding: 3px 6px;
            text-align: right;
            width: 150px;
            vertical-align: top;
        }

        input{
            font-size: inherit;
        }
</style>

</head>

<body class="flat-blue sidebar-collapse">


	<jsp:include page="/WEB-INF/views/backstage/fragment/sidebar.jsp" />

	<jsp:include page="/WEB-INF/views/backstage/fragment/navi.jsp" />

	<script>
 	$("#adminVendors").addClass("active");
	</script>
		<!-- 	 page content  -->
	<div class="content-container wrap">

		<div class="container-fluid">
		
		
			<div class="row">
				<div class="col-xs-12">
					<span class="page-title red"><h2>Vendors</h2></span>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-12">

					<ol class="breadcrumb">
						<li><a>Home</a></li>
						<li><a>Vendors</a></li>
					</ol>
				</div>
			</div>
			
			<div class="row">
	
		<div class="col-xs-12">
                    <div class="panel panel-primary" style="text-align:center;">
                        <div class="panel-heading">
                            <h3 class="panel-title" style="display:inline-block;">Vendors List</h3>
                            <div class="panel-title" style="float:right;">
									<!-- add vendor -->
								<a id="open-dialog" href="#" style="color: white;" onclick="">+</a>
							</div>
							
							
							
                        </div>
                        
                        <!-- dialog -->
						<div id="addvendor" title="Add Vendor" class="modal-body">
							<p>
								<label for="vname">Vendor Name : </label><input id="vname1" name="vname" type="text">
							</p>
							<p>
								<label for="addr">Address: </label><input id="addr1" name="addr" type="text">
							</p>
							<p>
								<label for="tel">Tel : </label><input id="tel1" name="tel" type="text">
							</p>	
							<p>		
								<label for="email">Email:</label><input id="email1" name="email" type="email">
							</p>
							<p style="text-align:right">
								<span style="text-align:left;"><input type="button" id="add-btn-submit" value="submit">
								<input type="button" id="add-btn-cancel" value="cancel"></span>
							</p>							
						</div>
						
						  <!-- modify vendor -->
                     	<div id="modifyvendor" title="Modify Vendor" class="modal-body">
							<p>
								<label for="vid">Vendor ID : </label><input id="vid" name="vid" type="text" readonly="readonly">
							</p>
							<p>
								<label for="vname">Vendor Name : </label><input id="vname" name="vname" type="text">
							</p>
							<p>
								<label for="addr">Address: </label><input id="addr" name="addr" type="text">
							</p>
							<p>
								<label for="tel">Tel : </label><input id="tel" name="tel" type="text">
							</p>	
							<p>		
								<label for="email">Email:</label><input id="email" name="email" type="email">
							</p>
							<p style="text-align:right">
								<span style="text-align:left;"><input type="button" id="m-btn-submit" value="submit">
								<input type="button" id="m-btn-cancel" value="cancel"></span>
							</p>							
						</div>   
						<!-- dialog end -->
						<div style="height:700px;text-align:center;overflow:auto">
                        <table class="table table-striped" style="">
                            <thead>
                                <tr>
                                    <th style="text-align:center;">Vendor ID</th>
                                    <th style="text-align:center;">Vendor Name</th>
                                    <th style="text-align:center;">Address</th>
                                    <th style="text-align:center;">Telephone</th>
                                    <th style="text-align:center;">E-mail</th>
                                    <th style="text-align:center;">Edit</th>
                                    <th style="text-align:center;">&nbsp;</th>
                                    <th style="text-align:center;">&nbsp;</th>
                                </tr>
                            </thead>
			
                            <tbody>
                                <!-- foreach start -->
                            	<c:forEach items="${vlist}" var="vendor">
                                <tr style="height:80px;"> 
                                    <td style="vertical-align: middle;">${vendor.vId}</td>
                                    <td style="vertical-align: middle;">${vendor.vname}</td>
                                    <td style="vertical-align: middle;">${vendor.addr}</td>
                                    <td style="vertical-align: middle;">${vendor.tel}</td>
                                    <td style="vertical-align: middle;">${vendor.email}</td>
                                    <td style="vertical-align: middle;">

										<div class="btn-group">
                                    		<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-expanded="false">Edit&nbsp;<span class="caret"></span></button>
                                		    <ul class="dropdown-menu" role="menu">
                            		            <li><a onclick='modify_vendor("${vendor.vId},${vendor.vname},${vendor.addr},${vendor.tel},${vendor.email}")'>Modify Vendor</a></li>
                            		           
    	                        	            <li class="divider"></li>
	                            	            <li><a onclick='delete_vendor(${vendor.vId})'>Delete Vendor</a>
                               		         	</li>
                                	    	</ul>
                               			</div>
									</td>
									<td style="vertical-align: middle;">&nbsp;</td>
									<td style="vertical-align: middle;">&nbsp;</td>
                                </tr>     
                                </c:forEach>
                                <!-- foreach end --> 
                            </tbody>           
                        </table>
                        </div>
                    </div>
                </div>
			</div>		
		</div>
	</div>
<!-- 	footer area -->
	<footer class="footer">
		<span>Copyright by KarpyShopping</span>
	</footer>
</body>

</html>
