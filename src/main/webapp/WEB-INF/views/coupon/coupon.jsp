<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!doctype html>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Coupon</title>

<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<script src="https://code.jquery.com/jquery-3.4.1.js"></script>

<script>
	$(document).ready(function() {
		var qualification = "${memberLoginOK}";

		//getCoupon
		$("#button").click(function() {
			//not login yet
			if (qualification == "") {
				alert("Please login first.");
				location.href = "memberLogin";
			} else {
				var data = {
					category : "食品",
					discount : 0.7,
					expdate : "2100-01-30",
					token : "abcde"
				}
				$.ajax({
					type : 'POST',
					url : "http://localhost:8080/KarpyShopping/getCoupon",
					data : data,
					dataType : "json",
					success : function(data) {

						alert(data.result);
						console.log(data);
						console.log('${sessionScope.requestURI}');//取得攔截前的uri
						//location.href = 'http://localhost:8080/KarpyShopping';
					},
					error : function(jqXHR, textStatus, errorThrown) {
						console.log("jqXHR: " + jqXHR);
						console.log("textStatus: " + textStatus);
						console.log("errorThrown: " + errorThrown);

					},
				});
			}
		});

		//use Coupon
		$("#use").click(function() {
			//not login yet

			var data = {token : "abcde",}
			$.ajax({
				type : 'POST',
				url : "http://localhost:8080/KarpyShopping/useCoupon",
				data : data,
				dataType : "text",
				success : function(data) {
					
					console.log('${sessionScope.requestURI}');//取得攔截前的uri
					//location.href = 'http://localhost:8080/KarpyShopping';
				},
				error : function(jqXHR, textStatus, errorThrown) {
					console.log("jqXHR: " + jqXHR);
					console.log("textStatus: " + textStatus);
					console.log("errorThrown: " + errorThrown);

				},
			});

		});
	});
</script>
<body>
	<button id="button">Get Coupon 30%off 食品</button>
	<button id="use">useCoupon</button>
</body>