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
		AddressSeleclList.Initialize('city', 'city2','${city}','${city}','${city2}','${city2}');


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

	$(document).ready(function() {
		$("#blogin").click(function() {
			$("#register").hide();
			$("#addCreditCard").hide();
			$("#login").show();
		});
		$("#rlogin").click(function() {
			$("#register").show();
			$("#login").hide();
			$("#addCreditCard").hide();
		});
		$("#Clogin").click(function() {
			$("#register").hide();
			$("#login").hide();
			$("#addCreditCard").show();
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

	// 	individual date check
// 	function PDchk() {
// 		if ($('input[name=gender]:checked', '#PD').val() == undefined) {
// 			alert("未選擇性別");
// 			return false;
// 		}
// 		return true;
// 	}
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

.div5 {
	margin: 0px;
	padding: 0px;
	padding-bottom: 30px;
}

.btn1 {
	margin-left: 20px;
}

.p1234 {
	font-size: 25px;
	text-align: center;
	font-weight: bold;
}

.rwdtxt {
	font-size: 1.2rem;
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

.rwdtxt {
	font-size: 1.2rem;
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
.lab1 {
	text-align: right;
	width: 55px;
}

.sub {
	text-align: center;
	width: 450px;
}

.des {
	width: 55px;
	text-align: right;
	color: gray;
	font-size: 1ch;
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
</style>
<body>

	<jsp:include page="/WEB-INF/views/fragment/top.jsp" />
	<!-- <div class="d-flex justify-content-center align-items-center w-100"> -->
	<br>
	<div>
		<div class="div2">
			<div style="margin-right: 200px; padding-top: 10px">
				<div class="border1">
					<div>
						<div>
							<img src="data:image/jpg;base64,${memberImage}" width="200px"
								height="auto" />
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
										<select class="custom-select mr-sm-5" id="city" name="county"
											placeholder="縣市">
										</select>
									</div>
								</div>

								<div class="form-row align-items-center form-check-inline">
									<div class="col-auto my-1">
										<label class="mr-sm-2 sr-only" for="inlineFormCustomSelect">鄉鎮地區</label>
										<select class="custom-select mr-sm-5" id="city2" name="city"
											placeholder="鄉鎮地區">
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
							<input id="type" name="form" type='hidden' value='1' /> <input
								name="oldPW" type="hidden" placeholder="舊密碼"> <input
								name="newPW" type="hidden" placeholder="新密碼"> <input
								name="renewPW" type="hidden" placeholder="再次輸入新密碼"> <input
								name="code" type="hidden" placeholder="輸入驗證碼"> <input
								id="cnumber1" type="hidden" name="cnumber1"> <input
								id="cnumber2" type="hidden" name="cnumber2"> <input
								id="cnumber3" type="hidden" name="cnumber3"> <input
								id="cnumber4" type="hidden" name="cnumber4">
						</div>
					</div>
				</form:form>
				<!-- login end -->
				<!-- change password -->
				<div class="login_title border2" id="register" style="display: none">
					<p class="p1" style="padding-left: 15px;">會員更改密碼</p>
					<hr style="width: 100%">

					<form:form method='POST' class='form-horizontal'
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
						<input id="type" name="form" type='hidden' value='2' />
						<input name="name" placeholder="姓名" type="hidden">
						<input name="email" placeholder="Email" type="hidden">
						<input name="phone" placeholder="phone" type="hidden">
						<input name="date" placeholder="姓名" type="hidden">
						<input name="gender" placeholder="性別" type="hidden">
						<input name="county" placeholder="縣市" type="hidden">
						<input name="city" placeholder="鄉鎮地區" type="hidden">
						<input name="addr" placeholder="請輸入地址" type="hidden">
						<input id="cnumber1" type="hidden" name="cnumber1">
						<input id="cnumber2" type="hidden" name="cnumber2">
						<input id="cnumber3" type="hidden" name="cnumber3">
						<input id="cnumber4" type="hidden" name="cnumber4">
					</form:form>




				</div>
				<!-- password end -->


				<div class="border2" id="addCreditCard" style="display: none">
					<section class="container">
						<p class="p1">新增信用卡</p>
						<hr style="width: 60%">
						<form:form method='POST' modelAttribute="CreditCardBean"
							class='form-horizontal' enctype="multipart/form-data">
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
									<div class="col-auto" style="width: 80px">
										<input class="form-control" id="cnumber1" type='text'
											placeholder="1234" pattern="[0-9]{4}" maxlength="4"
											name="cnumber1">
									</div>
									-
									<div class="col-auto" style="width: 80px">
										<input class="form-control" id="cnumber2" type='text'
											placeholder="2234" pattern="[0-9]{4}" maxlength="4"
											name="cnumber2">
									</div>
									-
									<div class="col-auto" style="width: 80px">
										<input class="form-control" id="cnumber3" type='text'
											placeholder="3234" pattern="[0-9]{4}" maxlength="4"
											name="cnumber3">
									</div>
									-
									<div class="col-auto" style="width: 80px">
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
											type='password' placeholder="未設定" maxlength="3" />
										<%-- 										<form:input id="pin" path="pin" type='password' --%>
										<%-- 						class='form:input-large' /> --%>
									</div>
								</div>
								<div class="form-group row">
									<label for="date" class="col-sm-2 col-form-label">到期日：</label>
									<div class="col-auto">
										<input class="form-control-plaintext" id="date" name="date"
											type='date' placeholder="未設定" />
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
								<input id="type" name="form" type='hidden' value='3' /> <input
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