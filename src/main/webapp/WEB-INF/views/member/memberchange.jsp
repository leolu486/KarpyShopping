<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link
	href="https://fonts.googleapis.com/css?family=Noto+Sans+TC&display=swap&subset=chinese-traditional"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="<c:url value= "/css/reset.css" />"
	type=" text/css" />
<link rel="stylesheet" href="<c:url value="/css/common.css" />"
	type=" text/css" />
<link rel="stylesheet"
	href="<c:url value="/css/font-awesome2.min.css" />" type=" text/css" />
<link rel="stylesheet" href="<c:url value="/css/style.css" />"
	type="text/css" />
<link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css" />"
	type="text/css" />
<%-- 	<link rel="stylesheet" href="<c:url value="/css/test.css" />" --%>
<!-- 	type="text/css" /> -->
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/AddressSelectList.js"></script>
<!-- <script type="text/javascript" -->
<%-- 	src="${pageContext.request.contextPath }/js/modernizr-2.8.3.min.js"></script> --%>
<meta charset="UTF-8">
<title>Document</title>
</head>
<!-- <script src="js/AddressSelectList.js"></script> -->

<script type="text/javascript">
	window.onload = function() {
		//當頁面載完之後，用AddressSeleclList.Initialize()，
		//傳入要綁定的縣市下拉選單ID及鄉鎮市區下拉選單ID
		AddressSeleclList.Initialize('city', 'city2', '${city}', '${city}',
				'${city2}', '${city2}');

		//detail address

		$("#city3").val("${city3}");
		// Restricts input for each element in the set of matched elements to the given inputFilter.

	}
	function show() {
		//取出指定縣市及鄉鎮市區的下拉選單的值
		alert(AddressSeleclList.ReturnSelectAddress('city', 'city2'));
	}

	$(document).ready(function() {

		$("#鄉鎮市區").change(function() {
			$("#zip").val($(this).val());
		})

	});

	//input type limit function
	(function($) {
		$.fn.inputFilter = function(inputFilter) {
			return this
					.on(
							"input keydown keyup mousedown mouseup select contextmenu drop",
							function() {
								if (inputFilter(this.value)) {
									this.oldValue = this.value;
									this.oldSelectionStart = this.selectionStart;
									this.oldSelectionEnd = this.selectionEnd;
								} else if (this.hasOwnProperty("oldValue")) {
									this.value = this.oldValue;
									this.setSelectionRange(
											this.oldSelectionStart,
											this.oldSelectionEnd);
								}
							});
		};
	}(jQuery));

	//document start
	$(document).ready(function() {
		//form change
		$("#blogin").click(function() {
			$("#register").hide();
			$("#showcreditcard").hide();
			$("#login").show();
			$("#addCreditCard").hide();
		});
		$("#rlogin").click(function() {
			$("#register").show();
			$("#login").hide();
			$("#showcreditcard").hide();
			$("#addCreditCard").hide();
		});
		$("#Clogin").click(function() {
			$("#register").hide();
			$("#login").hide();
			$("#showcreditcard").show();
			$("#addCreditCard").hide();
		});
		$("#showAddCreditCard").click(function() {
			$("#showcreditcard").hide();
			$("#addCreditCard").show();
		});
		
		//credit card rule
		$("div.inputs input").keyup(function () {
    		if (this.value.length == this.maxLength) {
    			$(this).closest('div').next().find('input').focus();
    		}
		});	
		//input limit [0-9]
		$("#cnumber1, #cnumber2, #cnumber3, #cnumber4, #pin").inputFilter(function(value) {
			return /^\d*$/.test(value);
		});

	});

	document.addEventListener("DOMContentLoaded", function() {

		document.getElementById("passwordcheck").addEventListener("click",
				submit);

		document.getElementById("opw").addEventListener("focus", function() {
			this.style.backgroundColor = "lightyellow";
			document.getElementById("error1").innerHTML = "";
		});
		document.getElementById("opw").addEventListener("blur", CheckOpw);

		document.getElementById("npw").addEventListener("focus", function() {
			this.style.backgroundColor = "lightyellow";
			document.getElementById("error2").innerHTML = "";
		});
		document.getElementById("npw").addEventListener("blur", function() {
			CheckNpw();
		});
		document.getElementById("rnpw").addEventListener("focus", function() {
			this.style.backgroundColor = "lightyellow";
			document.getElementById("error3").innerHTML = "";
		});
		document.getElementById("rnpw").addEventListener("blur", function() {
			CheckRnpw();
		});

	});

	function CheckStr(str) {
		var SpecialCharacters = "[`~!@#$^%&;*()=|{}':;',//[//].<>/?~!#￥……&;*()——|{}【】‘;:”“'。,、?]‘'";
		var i = 0;
		for (i = 0; i < SpecialCharacters.length - 1; i++) {
			if (str.indexOf(SpecialCharacters.charAt(i)) != -1) {
				return true;
			}
		}
		return false;
	}

	function CheckOpw() {
		if (document.getElementById("opw").value == "") {
			document.getElementById("opw").style.backgroundColor = "pink";
			document.getElementById("error1").style.color = "red";
			document.getElementById("error1").innerHTML = "<img width='15px' src='<c:url value='/images/icon/error.jpg'/>'/>請輸入原密碼";
		} else {
			document.getElementById("opw").style.backgroundColor = "lightgreen";
			document.getElementById("opw").style.color = "green";
			document.getElementById("error1").innerHTML = "<img width='15px' src='<c:url value='/images/icon/correct.jpg'/>'/>";
		}
	}

	function CheckNpw() {
		let flag1 = false, flag2 = false, flag3 = true;
		if (document.getElementById("npw").value == "") {
			//檢查是否為空
			document.getElementById("npw").style.backgroundColor = "pink";
			document.getElementById("error2").style.color = "red";
			document.getElementById("error2").innerHTML = "<img width='15px' src='<c:url value='/images/icon/error.jpg'/>'/>請輸入新密碼";
		} else if (document.getElementById("npw").value.length < 6) {
			//檢查長度
			document.getElementById("npw").style.backgroundColor = "pink";
			document.getElementById("error2").style.color = "red";
			document.getElementById("error2").innerHTML = "<img width='15px' src='<c:url value='/images/icon/error.jpg'/>'/>密碼長度不可少於6";
		} else if (document.getElementById("npw").value == document
				.getElementById("opw").value) {
			//檢查新舊密碼是否相同
			document.getElementById("npw").style.backgroundColor = "pink";
			document.getElementById("error2").style.color = "red";
			document.getElementById("error2").innerHTML = "<img width='15px' src='<c:url value='/images/icon/error.jpg'/>'/>新舊密碼不可相同";
		} else {
			for (let i = 0; i < document.getElementById("npw").value.length; i++) {
				let PwdCh = document.getElementById("npw").value.charAt(i)
						.toUpperCase();
				console.log("PwdCh:" + PwdCh);
				if (PwdCh >= "A" && PwdCh <= "Z") {
					flag1 = true;
				} else if (PwdCh >= "0" && PwdCh <= "9") {
					flag2 = true;
				} else if (CheckStr(PwdCh)) {
					flag3 = false;
				}

			}
			if (flag1 && flag2 && flag3) {
				document.getElementById("npw").style.backgroundColor = "lightgreen";
				document.getElementById("npw").style.color = "green";
				document.getElementById("error2").innerHTML = "<img width='15px' src='<c:url value='/images/icon/correct.jpg'/>'/>";
			} else if (!flag3) {
				document.getElementById("npw").style.backgroundColor = "pink";
				document.getElementById("npw").style.color = "red";
				document.getElementById("error2").innerHTML = "<img width='15px' src='<c:url value='/images/icon/error.jpg'/>'/>密碼不可包含特殊符號";
			} else if (!flag2 || !flag1) {
				document.getElementById("npw").style.backgroundColor = "pink";
				document.getElementById("npw").style.color = "red";
				document.getElementById("error2").innerHTML = "<img width='15px' src='<c:url value='/images/icon/error.jpg'/>'/>密碼須包含數字及英文字母";
			}
		}
	}

	function CheckRnpw() {
		if (document.getElementById("npw").value == "") {
			//npw == "", do nothing
		} else if (document.getElementById("rnpw").value == "") {
			//檢查是否為空
			document.getElementById("rnpw").style.backgroundColor = "pink";
			document.getElementById("error3").style.color = "red";
			document.getElementById("error3").innerHTML = "<img width='15px' src='<c:url value='/images/icon/error.jpg'/>'/>欄位不可為空";
		} else if (document.getElementById("rnpw").value == document
				.getElementById("npw").value) {
			document.getElementById("rnpw").style.backgroundColor = "lightgreen";
			document.getElementById("rnpw").style.color = "green";
			document.getElementById("error3").innerHTML = "<img width='15px' src='<c:url value='/images/icon/correct.jpg'/>'/>";
		} else if (document.getElementById("rnpw").value != document
				.getElementById("npw").value) {
			document.getElementById("rnpw").style.backgroundColor = "pink";
			document.getElementById("rnpw").style.color = "red";
			document.getElementById("error3").innerHTML = "<img width='15px' src='<c:url value='/images/icon/error.jpg'/>'/>與新密碼不相符";
		}
	}

	function checkdate(){
	var today = new Date();
	var vdate = document.getElementById("edate").value;
	if(today > vdate){
		document.getElementById("dcheck").innerHTML = "<img width='15px' src='<c:url value='/images/icon/error.jpg'/>'/>日期有誤";
	}else{
		
	}
	}
</script>
<style>
.center {
	margin: 0 auto;
	float: none;
}

.border2 {
	background-color: #FFFFFF;
	width: 700px;
	height: 550px;
	margin-left: 230px;
	padding-top: 20px;
	margin-top: 15px;
}

.border1 {
	padding: 0px;
	margin: 0px;
	margin-left: 45px;
	margin-top: 24px;
	width: 150px;
	float: left;
}

.catalog {
	margin: 15px 0;
	font-size: 15px;
	list-style-type: none;
	text-align: center;
}

.p1 {
	font-size: 25px;
	text-align: left;
	color: #FF7F50;
}

.div2 {
	background-color: #F5F5F5;
	width: 1000px;
	height: 600px;
	margin-left: 430px;
	height: 600px;
}

.p1234 {
	font-size: 25px;
	text-align: center;
	font-weight: bold;
}


@media ( min-width : 600px) and (max-width: 1200px) {
	.rwdtxt {
		font-size: calc(1.2rem + ( 1.3 -1.2)* ((100vw- 600px)/(1200- 600)));
	}
}

@media ( min-width : 1200px) {
	.rwdtxt {
		font-size: 1.3rem;
	}
}

.p1234 {
	font-size: 20px;
}

@media ( min-width : 600px) and (max-width: 1200px) {
	.rwdtxt {
		font-size: calc(1.2rem + ( 1.3 -1.2)* ((100vw- 600px)/(1200- 600)));
	}
}

@media ( min-width : 1200px) {
	.rwdtxt {
		font-size: 1.3rem;
	}
}
</style>

<style>
.sub {
	text-align: center;
	width: 450px;
}

.st1 {
	font-size: 23px;
	border-bottom: 0px solid gray;
	width: 550px;
	margin-left: 190px;
	padding: 10px;
	float: left;
	text-align: left;
}

#error1, #error2, #error3 {
	font-size: 15px;
}

::placeholder {
	text-align: center;
	font-size: 16px;
	color: #AAAAAA;
}

/* addCreditCard Css */
.example_e {
border: none;
background: #404040;
color: #ffffff !important;
font-weight: 100;
padding: 20px;
text-transform: uppercase;
border-radius: 6px;
display: inline-block;
transition: all 0.3s ease 0s;
font-size:16px;
}
.example_e:hover {
color: green !important;
font-weight: 700 !important;
letter-spacing: 3px;
background: #f6b93b;
border-color: #f6b93b !important;
-webkit-box-shadow: 0px 5px 40px -10px rgba(0,0,0,0.57);
-moz-box-shadow: 0px 5px 40px -10px rgba(0,0,0,0.57);
transition: all 0.4s ease 0s;
}

/* scrollbar css */
.row::-webkit-scrollbar {
width: 8px;
}
.row::-webkit-scrollbar-track {
-webkit-border-radius: 10px;
border-radius: 10px;
margin:0px 0 5px 0;
}
.row::-webkit-scrollbar-thumb {
-webkit-border-radius: 4px;
border-radius: 4px;
background: rgb(191, 191, 191);
}

</style>
<body>

	<jsp:include page="/WEB-INF/views/fragment/top.jsp" />
	<!-- <div class="d-flex justify-content-center align-items-center w-100"> -->
	<br>
	<div style="font-family: 'Noto Sans TC', sans-serif;">
		<div class="div2">
			<div style="margin-right: 200px; padding-top: 10px">
				<div class="border1">
					<div>
						<div>
							<c:if test="${empty memberImage}">
							<img src="<c:url value='/images/default-img/default_member_image.jpg'/>" width="200px"
								height="auto" />	
							</c:if>
							<c:if test="${! empty memberImage}">
							<img src="data:image/jpg;base64,${memberImage}" width="200px"
								height="auto" />	
							</c:if>
							
							<p style="text-align: center">${memberLoginOK.name}</p>
						</div>
						<ul>
							<li class="p1234">我的帳戶</li>
							<li class="catalog"><a href="#" id="blogin">個人資料</a></li>
							<!-- cannot change password when login as gmail or line -->
							<c:if test="${! empty memberLoginOK.account }">
								<li class="catalog"><a href="#" id="rlogin">修改密碼</a></li>
							</c:if>
							<li class="catalog"><a href="#" id="Clogin">信用卡資料</a></li>

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
										<form:input type="text" class="form-control" id="inputEmail3"
											placeholder="姓名" autofocus="autofocus" path="name"
											value="${memberLoginOK.name}" />

									</div>
								</div>
								<div class="form-group row">
									<label for="id" class="col-sm-2 col-form-label">照片：</label>
									<div class="col-auto">
										<form:input type="file" class="form-control-file"
											id="exampleFormControlFile1" placeholder="未設定" path="file"
											name="file" />

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
											placeholder="phone" path="tel" value="${memberLoginOK.tel}" />

									</div>
								</div>
								<div class="form-group row">
									<label for="date" class="col-sm-2 col-form-label">生日：</label>
									<div class="col-auto">
										<input class="form-control-plaintext" id="date" name="date"
											type='date' placeholder="未設定" value="${Birthday}" />
									</div>
								</div>
								<fieldset class="form-group">
									<div class="row">
										<label class="col-form-label col-sm-2 pt-0">性別：</label>
										<div class="col-auto">
											<div class="form-check form-check-inline">
												<form:radiobutton class="form-check-input" path="gender"
													name="gender" id="gridRadios1" value="male" />
												<label class="form-check-label" for="男性"> 男性 </label>
											</div>
											<div class="form-check form-check-inline">
												<form:radiobutton class="form-check-input" path="gender"
													name="gender" id="gridRadios2" value="fmale" />
												<label class="form-check-label" for="女性"> 女性 </label>
											</div>
											<div class="form-check form-check-inline">
												<form:radiobutton class="form-check-input" path="gender"
													name="gender" id="gridRadios3" value="others" />
												<label class="form-check-label" for="其他/保密"> 其他/保密 </label>
											</div>
										</div>
									</div>
								</fieldset>
								<div class="form-group row form-check-inline">
									<label for="inputEmail3" class="col-sm col-form-label">地址：</label>
								</div>
								<!-- <select id="縣市">
                </select>
                <select id="鄉鎮市區">
                </select><br> -->

								<div class="form-row align-items-center form-check-inline">
									<div class="col-auto my-1 ">
										<label class="mr-sm-2 sr-only" for="inlineFormCustomSelect">縣市</label>
										<select class="custom-select mr-sm-5" id="city" name="county">
										</select>
									</div>
								</div>

								<div class="form-row align-items-center form-check-inline">
									<div class="col-auto my-1">
										<label class="mr-sm-2 sr-only" for="inlineFormCustomSelect">鄉鎮地區</label>
										<select class="custom-select mr-sm-5" id="city2" name="city">
										</select>
									</div>
								</div>
								<div class="form-group row">
									<div class="col-5">
										<input class="form-control" id="city3" placeholder="請輸入地址"
											name="addr" />
									</div>
								</div>



								<!-- 						<div class="form-group row"> -->
								<!-- 							<div class="col-sm-5 "> -->
								<!-- 								<button type="submit" id="sign" class="btn btn-primary" -->
								<!-- 									style="width: 300px; height: 40px; background-color: #FF7F50;">確認更改</button> -->
								<!-- 							</div> -->
								<!-- 						</div> -->

								<div class="form_btn" style="margin-left: 20px">
									<button type="submit" id="sign">確認更改</button>

								</div>
							</div>
							<input 
							 name="form" type='hidden' value='1' /> <input
								name="oldPW" type="hidden" placeholder="舊密碼"> <input
								name="newPW" type="hidden" placeholder="新密碼"> <input
								name="renewPW" type="hidden" placeholder="再次輸入新密碼"> <input
								name="code" type="hidden" placeholder="輸入驗證碼"> <input
								type="hidden" name="cnumber1"> <input type="hidden"
								name="cnumber2"> <input type="hidden" name="cnumber3">
							<input type="hidden" name="cnumber4">
						</div>
					</div>
				</form:form>
				<!-- login end -->
				<!-- change password -->
				<div class="login_title border2" id="register" style="display: none">
					<p class="p1" style="padding-left: 15px;">會員更改密碼</p>
					<hr style="width: 100%">

					<form:form method='POST' id="chgpwd" class='form-horizontal'
						enctype="multipart/form-data" onsubmit="return CheckPwd();"
						style="margin-top:100px;">
						<div class="st1">
							<label><input type="password" name="oldPW" id="opw"
								placeholder="舊密碼" autocomplete="off" autofocus="autofocus">
								<span id="error1"></span> </label>

						</div>
						<div class="st1">
							<label> <input type="password" id="npw" name="newPW"
								placeholder="請輸入新密碼" autocomplete="off"> <span
								id="error2"></span>
							</label>
						</div>
						<div class="st1">
							<label> <input type="password" id="rnpw" name="renewPW"
								placeholder="請再次輸入新密碼" autocomplete="off"> <span
								id="error3"></span>
							</label>
						</div>
						<div class="form_btn">
							<button type=submit id="passwordcheck" style="width: 296px;">送出</button>
						</div>
						<input name="form" type='hidden' value='2' />
						<input name="name" placeholder="姓名" type="hidden">
						<input name="email" placeholder="Email" type="hidden">
						<input name="phone" placeholder="phone" type="hidden">
						<input name="date" placeholder="姓名" type="hidden">
						<input name="gender" placeholder="性別" type="hidden">
						<input name="county" placeholder="縣市" type="hidden">
						<input name="city" placeholder="鄉鎮地區" type="hidden">
						<input name="addr" placeholder="請輸入地址" type="hidden">
						<input type="hidden" name="cnumber1">
						<input type="hidden" name="cnumber2">
						<input type="hidden" name="cnumber3">
						<input type="hidden" name="cnumber4">
					</form:form>




				</div>
				<!-- password end -->
				<!-- creditcard -->
				<div class="border2" id="showcreditcard" style="display: none">
					<section class="container" >
						<p class="p1">信用卡清單</p>
						<hr style="width: 60%">
						<div class="row" style="width:700px;height:360px; overflow:auto;">
						<c:if test="${! empty creditcards }">
							<c:forEach var="card" items='${creditcards}'>
								
									<div class="thumbnail" style="width: 260px; height:140px;margin-left:55px;margin-top:16px;border-radius:15px;">
										<div class="caption" >
										
										<p>信用卡名稱 : ${card.cname}</p>
										<p>卡號 : ${card.cnumber}</p>
										<p>pin : ***</p>
										<p>有效日期 : ${card.vdate}</p>
										<div style="text-align:center;"><a href='delCreditCard?cId=${card.cId}'><button>刪除</button></a></div>
										
										</div>
									</div>
								
							</c:forEach>
							</c:if>
							<c:if test="${ empty creditcards }">
								<div style="margin:auto auto;;vertical-align: bottom;text-align:center ">
									<h2>親愛的會員${memberLoginOK.name}，您目前尚無信用卡記錄</h2>
								</div>
							</c:if>
								
						</div>
					</section>
					<div style="text-align:center;">
						<hr style="width:95%;margin:2.5%;">
						<div class="button_cont" align="center"><a id="showAddCreditCard" class="example_e" href="#" >新增信用卡</a></div>
						
					</div>
				</div>


				<div class="border2" id="addCreditCard" style="display: none">
					<section class="container">
						<p class="p1">新增信用卡</p>
						<hr style="width: 60%">
						<form:form method='POST' modelAttribute="CreditCardBean"
							class='form-horizontal' enctype="multipart/form-data" onsubmit="return checkdate();">
							<div style="padding-left: 150px; padding-top: 20px;">
								<div class="form-group row ">
									<label for="cname" class="col-sm-2 col-form-label">信用卡名稱：</label>
									<div class="col-auto ">
										<form:input class="form-control" id="cname" path="cname"
											placeholder="信用卡名稱" autofocus="autofocus" />
									</div>
								</div>

								<div class="form-group row">
									<label for="CNumber" class="col-sm-2 col-form-label">
										信用卡卡號：</label>
									<div class="inputs col-auto" style="width: 80px">
										<input class="form-control" id="cnumber1" type='text'
											placeholder="1234" pattern="[0-9]{4}" maxlength="4"
											name="cnumber1">
									</div>
									-
									<div class="inputs col-auto" style="width: 80px">
										<input class="form-control" id="cnumber2" type='text'
											placeholder="2234" pattern="[0-9]{4}" maxlength="4"
											name="cnumber2">
									</div>
									-
									<div class="inputs col-auto" style="width: 80px">
										<input class="form-control" id="cnumber3" type='text'
											placeholder="3234" pattern="[0-9]{4}" maxlength="4"
											name="cnumber3">
									</div>
									-
									<div class="inputs col-auto" style="width: 80px">
										<input class="form-control" id="cnumber4" type='text'
											placeholder="4234" pattern="[0-9]{4}" maxlength="4"
											name="cnumber4">

									</div>
								</div>
								<div class="form-group row">
									<label for="oname" class="col-sm-2 col-form-label">持有者姓名:</label>
									<div class="col-auto">
										<form:input class="form-control" id="oname" path="oname"
											type='text' placeholder="姓名" />
									</div>
								</div>
								<div class="form-group row">
									<label for="pin" class="col-sm-2 col-form-label">pin：</label>
									<div class="col-auto">
										<form:input class="form-control" id="pin" path="pin"
											type='text' placeholder="未設定" maxlength="3" />
										<%-- 										<form:input id="pin" path="pin" type='password' --%>
										<%-- 						class='form:input-large' /> --%>
									</div>
								</div>
								<div class="form-group row">
									<label for="edate" class="col-sm-2 col-form-label">到期日：</label>
									<div class="col-auto">
										<input class="form-control-plaintext" id="edate" name="date"
											type='date' placeholder="未設定" />
											<span id="dcheck"></span>
									</div>
								</div>

								<!-- 						<div class="form-group row" style="margin-left: 12%;"> -->
								<!-- 							<div class="col-sm-10 "> -->
								<!-- 								<button type="submit" id="submit" class="btn btn-primary" -->
								<!-- 									style="width: 100px;">新增</button> -->

								<!-- 							</div> -->
								<!-- 						</div> -->

								<div class="form_btn" style="margin-left: 20px">
									<button type="submit" id="submit">確認更改</button>

								</div>
								<input  name="form" type='hidden' value='3' /> <input
									name="oldPW" type="hidden" placeholder="舊密碼"> <input
									name="newPW" type="hidden" placeholder="新密碼"> <input
									name="renewPW" type="hidden" placeholder="再次輸入新密碼"> <input
									name="code" type="hidden" placeholder="輸入驗證碼"> <input
									name="name" placeholder="姓名" type="hidden"> <input
									name="email" placeholder="Email" type="hidden"> <input
									name="phone" placeholder="phone" type="hidden"> <input
									name="date" placeholder="姓名" type="hidden"> <input
									name="gender" placeholder="性別" type="hidden"> <input
									name="county" placeholder="縣市" type="hidden"> <input
									name="city" placeholder="鄉鎮地區" type="hidden"> <input
									name="addr" placeholder="請輸入地址" type="hidden">
							</div>
						</form:form>
					</section>
				</div>
			</div>
		</div>
	</div>
	<br>

	<jsp:include page="/WEB-INF/views/footer/footer.jsp" />
</body>
</html>