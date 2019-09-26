<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css" />"
	type="text/css" />
<!-- animate css -->
<link rel="stylesheet" href="<c:url value="/css/animate.css" />"
	type="text/css" />
<!-- jquery-ui.min css -->
<link rel="stylesheet" href="<c:url value="/css/jquery-ui.min.css" />"
	type="text/css" />
<!-- meanmenu css -->
<link rel="stylesheet" href="<c:url value="/css/meanmenu.min.css" />"
	type="text/css" />
<!-- nivo slider css -->
<link rel="stylesheet" href="<c:url value="/css/nivo-slider.css" />"
	type="text/css" />
<link rel="stylesheet" href="<c:url value="/css/preview.css" />"
	type="text/css" />
<!-- owl.carousel css -->
<link rel="stylesheet" href="<c:url value="/css/owl.carousel.css" />"
	type="text/css" />
<!-- font-awesome css -->
<link rel="stylesheet"
	href="<c:url value="/css/font-awesome.min.css" />" type="text/css" />
<!-- style css -->
<link rel="stylesheet" href="<c:url value="/css/style.css" />"
	type="text/css" />
<!-- responsive css -->

<!-- modernizr js -->
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/vendor/modernizr-2.8.3.min.js"></script>


<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery_3_4_1.js"></script>

<title>Chat</title>

<style>


.system_log {
	color: red;
	font-size: 25px;
	margin-top:5px;
}



#log::-webkit-scrollbar {
	width: 8px;
}

#log::-webkit-scrollbar-track {
	-webkit-border-radius: 10px;
	border-radius: 10px;
	margin: 5px 5px 5px 5px;
}

#log::-webkit-scrollbar-thumb {
	-webkit-border-radius: 4px;
	border-radius: 4px;
	background: rgb(191, 191, 191);
}
</style>


<script>

	var ws;

	$(document).on('keypress', function(e) {
		if (e.which == 13 & $("#msg").is(":focus")) {
			send();
		}
	});

	
	$(function() {
		//WebSocket
		ws = new WebSocket("ws://" + document.location.host + document.location.pathname +"/${memberLoginOK.name}/${memberLoginOK.mId}");
		ws.onmessage = function(event) {
			//clean message
			$("#clean")	.click(function() {
				$("#log").html("<div class='system_log'><strong>系統通知 : 已清除聊天室</strong></div>");		
			});
			//send message
			console.log(event.data);
			var message = JSON.parse(event.data);
			//system_log
			if (message.system_msg != null) {
				$("#log").append("<div class='system_log'><strong>系統通知 : "+ message.system_msg + "</strong></div>");
			} 
			//user message
			else {

				//picture + username + message with html css
				var log_start = "<div class='message' style='width:auto;height:70px;font-size: 16px;border: 1px solid gray;border-left:0px;border-right:0px;margin-top: 10px;'>";
				var memberImage_start = "<div class='memberimage' style='margin-right:5px;margin-left:5px;margin-top:5px;float:left;display:inline:block'>";
				var memberImage_content = "<img src='<c:url value='/getMemberPicture/"+message.from_id+"'/>' width='200px' height='auto'/>";
				var memberImage_end = "</div>";
				var name ="<div style='display:inline;'>"+ message.from+":</div>";
				var message = "<div style='margin-left:70px;margin-right:5px;border-top:1px solid silver'>"+message.content.replace(/ /g, '\u00a0')+"</div>";
				var log_end = "</div>";
				$("#log").append(log_start + memberImage_start + memberImage_content+ memberImage_end + name + message+ log_end);	
			}
			
			//洨安TODO : auto scroll to bottom (some problems had not been fixed)
			//13 message and get scrollbar rolling error
			$("#log").scrollTop($("#log").height());
		};
		
	});

	
	
	function send() {
		if($("#msg").val()!=""){
			var json = JSON.stringify({
				"content" : $("#msg").val()
			});
			//reset and refocus on input
			$("#msg").val("");
			$("#msg").focus();
			ws.send(json);
		}
	}
</script>

</head>
<body>
	<jsp:include page="/WEB-INF/views/fragment/top.jsp" />
	<table
		style="margin-left: auto; margin-right: auto;margin-top:5px;margin-bottom:5px; border: 2px solid black;">
		<tr>
			<td><div
					style="width: 1000px; height: 800px; background-color: white; overflow: auto;"
					id="log"></div></td>
		</tr>
		<tr>
			<td><input type="text" size="51" id="msg"
				placeholder="請輸入訊息....." autofocus="autofocus" />
				<button type="button" onclick="send();">Send</button>
				<button id="clean" type="button">clean</button></td>

		</tr>
	</table>
	<jsp:include page="/WEB-INF/views/footer/footer.jsp" />
</body>



</html>