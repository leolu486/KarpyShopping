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
								} else if (this.hasOwnProperty("1")) {
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
		$("#1").click(function() {
			$("#B").hide();
			$("#C").hide();
			$("#A").show();
			$("#D").hide();
			$("#E").hide();
			$("#F").hide();
		});
		$("#2").click(function() {
			$("#A").hide();
			$("#C").hide();
			$("#B").show();
			$("#D").hide();
			$("#E").hide();
			$("#F").hide();
		});
		$("#3").click(function() {
			$("#B").hide();
			$("#A").hide();
			$("#C").show();
			$("#D").hide();
			$("#E").hide();
			$("#F").hide();
		});
		$("#4").click(function() {
			$("#B").hide();
			$("#C").hide();
			$("#D").show();
			$("#A").hide();
			$("#E").hide();
			$("#F").hide();
		});
		$("#5").click(function() {
			$("#B").hide();
			$("#C").hide();
			$("#E").show();
			$("#D").hide();
			$("#A").hide();
			$("#F").hide();
		});
		$("#6").click(function() {
			$("#B").hide();
			$("#C").hide();
			$("#F").show();
			$("#D").hide();
			$("#E").hide();
			$("#A").hide();
		});
	});
</script>
<style>
.center {
	margin: 0 auto;
	float: none;
}

.border2 {
	background-color: #FFFFFF;
	width: 700px;
	height: 1000px;
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
	height: 1050px;
	margin-left: 430px;
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
	font-size: 16px;
}

.example_e:hover {
	color: green !important;
	font-weight: 700 !important;
	letter-spacing: 3px;
	background: #f6b93b;
	border-color: #f6b93b !important;
	-webkit-box-shadow: 0px 5px 40px -10px rgba(0, 0, 0, 0.57);
	-moz-box-shadow: 0px 5px 40px -10px rgba(0, 0, 0, 0.57);
	transition: all 0.4s ease 0s;
}

/* scrollbar css */
.row::-webkit-scrollbar {
	width: 8px;
}

.row::-webkit-scrollbar-track {
	-webkit-border-radius: 10px;
	border-radius: 10px;
	margin: 0px 0 5px 0;
}

.row::-webkit-scrollbar-thumb {
	-webkit-border-radius: 4px;
	border-radius: 4px;
	background: rgb(191, 191, 191);
}

.p {
	font-size: 15px;
}
</style>
<body>

	<jsp:include page="/WEB-INF/views/fragment/top.jsp" />
	<jsp:include page="/WEB-INF/views/fragment/rightIcon.jsp" />
	<!-- <div class="d-flex justify-content-center align-items-center w-100"> -->
	<br>
	<div style="font-family: 'Noto Sans TC', sans-serif;">
		<div class="div2">
			<div style="margin-right: 200px; padding-top: 10px">
				<div class="border1">
					<div>

						<ul>
							<li class="catalog"><a href="#" id="1">訂購問題</a></li>
							<li class="catalog"><a href="#" id="2">付款問題</a></li>
							<li class="catalog"><a href="#" id="3">發票問題</a></li>
							<li class="catalog"><a href="#" id="4">運送問題</a></li>
							<li class="catalog"><a href="#" id="5">商品問題</a></li>
							<li class="catalog"><a href="#" id="6">其他問題</a></li>
						</ul>
					</div>

				</div>
				<!-- login block -->
				<div class="border2" id="A">

					<div class="container">
						<p class="p1">訂購問題</p>
						<hr style="width: 670px">
						<div style="padding-left: 50px; padding-top: 20px;">
							<h3>Q1、請問訂購方式有：</h3>
							<p class="p">卡痞線上購物訂購方式為網路訂購，所提供的付款方式目前只有提供<br>「信用卡」與「貨到付款」敬請見諒！</p>
						</div>
						<div style="padding-left: 50px; padding-top: 20px;">
							<h3>Q2、訂購需要先入會員嗎？</h3>
							<p class="p">是，需先登入後才可以訂購商品。</p>
						</div>
						<div style="padding-left: 50px; padding-top: 20px;">
							<h3>Q3、如何查詢我的訂單資料呢？</h3>
							<p class="p">請先點至「會員中心」後點選「訂單查詢」</p>
						</div>
						<div style="padding-left: 50px; padding-top: 20px;">
							<h3>Q4、如何取消訂單？訂單數量有誤如何更改？</h3>
							<p class="p">請先點至「會員中心」後點選「訂單查詢」即可更改或取消訂單。</p>
						</div>
						<div style="padding-left: 50px; padding-top: 20px;">
							<h3>Q5、商品訂錯或不滿意，可以直接換購其他商品嗎？</h3>
							<p class="p">建議直接取消商品訂單再重新下訂單即可，或可撥打至客服。</p>
						</div>
						<div style="padding-left: 50px; padding-top: 20px;">
							<h3>Q6、訂購當時至付款網頁後一片空白，請問是否訂購成功？</h3>
							<p class="p">
								不一定成功，請至本站「會員中心」的「訂單查詢」功能，再確認購物資料<br>，或是來電「客服專線」提供訂購姓名再確認一下。
							</p>
						</div>
						<div style="padding-left: 50px; padding-top: 20px;">
							<h3>Q7、請問可以到店面看貨購買嗎？可以親自取貨嗎？</h3>
							<p class="p">因為卡痞線上購物為網路購物網站，沒有實體商店可以提供客戶現場購買付款和親自取貨。
							<p>
						</div>
						<div style="padding-left: 50px; padding-top: 20px;">
							<h3>Q8、可以寄送海外或離島嗎？</h3>
							<p class="p">目前僅提供本島服務。</p>
						</div>


					</div>
				</div>
				<!-- login end -->


				<div class="border2" id="B" style="display: none">

					<div class="container">
						<p class="p1">付款問題</p>
						<hr style="width: 670px">
						<div style="padding-left: 50px; padding-top: 20px;">
							<h3>Q1、請問付款方式有哪些？有匯款、貨到付款嗎？</h3>
							<p class="p">本站付款方式為「信用卡」與「貨到付款」，其餘皆沒有提供，敬請見諒！</p>
						</div>
						<div style="padding-left: 50px; padding-top: 20px;">
							<h3>Q2、付款多久可以查到？</h3>
							<p class="p">完成訂單後即可至「會員中心」查詢</p>
						</div>
						<div style="padding-left: 50px; padding-top: 20px;">
							<h3>Q3、可以接受國外的信用卡嗎？</h3>
							<p class="p">使用國外信用卡消費時只須通過「信用卡3D驗證」即可完成購買。</p>
						</div>
						<div style="padding-left: 50px; padding-top: 20px;">
							<h3>Q4、請問信用卡線上分期付款方便嗎？</h3>
							<p class="p">信用卡線上分期付款機制可在數秒鐘之內授權完成。</p>
						</div>
						<div style="padding-left: 50px; padding-top: 20px;">
							<h3>Q5、使用一次付清付款方式可以更改分期付款嗎？</h3>
							<p class="p">建議您直接取消訂單後再重新下訂單，或撥打至客服由客服為您做更改。</p>
						</div>
						<div style="padding-left: 50px; padding-top: 20px;">
							<h3>Q6、如果信用卡換新卡，那分期付款帳單如何計算？</h3>
							<p class="p">
								信用卡年度更換新卡，對於您在卡痞的消費資料是不會有影響的。 <br>信用卡中心會將您舊的消費轉換至新卡，敬請放心。
							</p>
						</div>
						<div style="padding-left: 50px; padding-top: 20px;">
							<h3>Q7、轉帳繳費期限剛好遇上假日有影響嗎？</h3>
							<p class="p">不受影響，因為轉帳是24小時提供的服務，並沒有因為假日而遞延繳款期限。
							<p>
						</div>


					</div>
				</div>



				<div class="border2" id="C" style="display: none">

					<div class="container">
						<p class="p1">發票問題</p>
						<hr style="width: 670px">
						<div style="padding-left: 50px; padding-top: 20px;">
							<h3>Q1、什麼是電子發票？</h3>
							<p class="p">
								卡痞消費開立之「電子發票」將不再主動寄送，後續也會將發票上傳至<br>
								<a href ="#">『財政部電子發票整合服務平台』</a><br>供會員查閱。
							</p>
						</div>
						<div style="padding-left: 50px; padding-top: 20px;">
							<h3>Q2、 商品收到了，發票怎麼沒一起附上？</h3>
							<p class="p">卡痞購物商城使用電子發票。</p>
						</div>
						<div style="padding-left: 50px; padding-top: 20px;">
							<h3>Q3、發票欲申請換開為個人戶或公司戶？</h3>
							<p class="p">依統一發票使用規定，個人戶發票無法更改為公司發票，敬請見諒！</p>
						</div>
						<div style="padding-left: 50px; padding-top: 20px;">
							<h3>Q4、收到發票，但是統編有錯怎麼辦？</h3>
							<p class="p">請在發票開立日的次月5號前掛號送達卡痞所在地，並註明正確統編，以利本公司換開發票。</p>
						</div>
						<div style="padding-left: 50px; padding-top: 20px;">
							<h3>Q5、發票可以指定開立其它品名或金額嗎？</h3>
							<p class="p">
								本公司已全面導入電子式發票系統，發票一旦開立即完成無法更動其內容<br>發票商品名稱將依訂購當時品名和金額開立，恕無法指定開立日期、其它品名或金額。
							</p>
						</div>
						<div style="padding-left: 50px; padding-top: 20px;">
							<h3>Q6、一筆訂單可以開立多張發票嗎？</h3>
							<p class="p">由於配合整個電子請款結帳，故一筆訂單對應一張發票，請恕無法分別開立多張。</p>
						</div>
						<div style="padding-left: 50px; padding-top: 20px;">
							<h3>Q7、發票電子檔，可以印出來去銀行行庫兌獎嗎？</h3>
							<p class="p">卡痞會幫您保存發票正本，如有中獎會掛號寄送發票給您。
							<p>
						</div>


					</div>
				</div>


				<div class="border2" id="D" style="display: none">

					<div class="container">
						<p class="p1">運送問題</p>
						<hr style="width: 670px">
						<div style="padding-left: 50px; padding-top: 20px;">
							<h3>Q1、請問出貨會通知嗎？我該如何查詢出貨日？</h3>
							<p class="p">
								訂單完成後，請至「會員中心」查詢。
							</p>
						</div>
						<div style="padding-left: 50px; padding-top: 20px;">
							<h3>Q2、我訂了幾項商品，為什麼沒有同時送達？</h3>
							<p class="p">依照各商品網頁設定的日期為主。</p>
						</div>
						<div style="padding-left: 50px; padding-top: 20px;">
							<h3>Q3、付款超過兩週仍未收到商品怎辦？</h3>
							<p class="p">遇缺貨或是延遲出貨我們將另外通知訂戶。</p>
						</div>
						<div style="padding-left: 50px; padding-top: 20px;">
							<h3>Q4、今天訂購商品可以明天到貨嗎？我急著出國用。</h3>
							<p class="p">依商品頁面上提供的到貨日期為主。</p>
						</div>
						<div style="padding-left: 50px; padding-top: 20px;">
							<h3>Q5、已經完成付款，商品約何時送達？</h3>
							<p class="p">
								完成訂單後，卡痞商城會馬上幫您整理訂單與出貨，詳情請至「會員中心」查詢。
							</p>
						</div>
						<div style="padding-left: 50px; padding-top: 20px;">
							<h3>Q6、收件地址要變更，請問如何更改？</h3>
							<p class="p">若商品尚未寄出，可至「訂單查詢」頁面更改地址
							<br>若已寄出，請與配送公司聯絡。</p>
						</div>
						<div style="padding-left: 50px; padding-top: 20px;">
							<h3>Q7、請問可以到店面看貨購買嗎？可以親自取貨嗎？</h3>
							<p class="p">卡痞是網路購物平台，無店面與面交服務。
							<p>
						</div>
					</div>
				</div>

				<div class="border2" id="E" style="display: none">

					<div class="container">
						<p class="p1">商品問題</p>
						<hr style="width: 670px">
						<div style="padding-left: 50px; padding-top: 20px;">
							<h3>Q1、請問出貨會通知嗎？我該如何查詢出貨日？</h3>
							<p class="p">
								訂單完成後，請至「會員中心」查詢。
							</p>
						</div>
						<div style="padding-left: 50px; padding-top: 20px;">
							<h3>Q2、已經完成付款，商品約何時送達？</h3>
							<p class="p">依照各商品網頁設定的日期為主。</p>
						</div>
						<div style="padding-left: 50px; padding-top: 20px;">
							<h3>Q3、商品已有出貨日但過3天仍未收到怎麼辦？</h3>
							<p class="p">可能是運送過程中遇到問題，指定地點無人簽收或是電話連絡不上<br>此時請至本站「會員中心」的「訂單查詢」功能聯絡我們確認查詢。</p>
						</div>
						<div style="padding-left: 50px; padding-top: 20px;">
							<h3>Q4、收到商品不符、破損、瑕疵怎麼辦？</h3>
							<p class="p">請致電客服，由客服協助您退換商品。</p>
						</div>
						<div style="padding-left: 50px; padding-top: 20px;">
							<h3>Q5、商品不滿意如何辦理退貨？</h3>
							<p class="p">
								依照消費者權益，可於七日內辦理退貨。
							</p>
						</div>
						<div style="padding-left: 50px; padding-top: 20px;">
							<h3>Q6、商品保固期多久？又如何保固、維修？</h3>
							<p class="p">皆以原廠規定的保固為主。</p>
						</div>
						<div style="padding-left: 50px; padding-top: 20px;">
							<h3>Q7、商品訂錯或不滿意，可以直接換購其他商品嗎？</h3>
							<p class="p">只能直接退貨再重新下訂單。
							</p>
						</div>
												<div style="padding-left: 50px; padding-top: 20px;">
							<h3>Q7、商品維修時間約多久？維修費如何計算？</h3>
							<p class="p">只能直接退貨再重新下訂單。
							</p>
						</div>
												<div style="padding-left: 50px; padding-top: 20px;">
							<h3>Q7、商品訂錯或不滿意，可以直接換購其他商品嗎？</h3>
							<p class="p">只能直接退貨再重新下訂單。
							</p>
						</div>
					</div>
				</div>

				<div class="border2" id="F" style="display: none">

					<div class="container">
						<p class="p1">其他問題</p>
						<hr style="width: 670px">
						<div style="padding-left: 50px; padding-top: 20px;">
							<h3>Q1、請問退款的方式有哪些？</h3>
							<p class="p">
								請致電至客服與客服聯絡處理退款。
							</p>
						</div>
						<div style="padding-left: 50px; padding-top: 20px;">
							<h3>Q2、如何與顧客中心聯絡？</h3>
							<p class="p">請至下方「語音服務」或「聯絡我們」聯絡客服</p>
						</div>
						<div style="padding-left: 50px; padding-top: 20px;">
							<h3>Q3、非卡痞會員且第一次訂購該如何訂購？</h3>
							<p class="p">請先辦理會員就可以訂購了。</p>
						</div>
						<div style="padding-left: 50px; padding-top: 20px;">
							<h3>Q4、收到商品不符、破損、瑕疵怎麼辦？</h3>
							<p class="p">請致電客服，由客服協助您退換商品。</p>
						</div>					
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="/WEB-INF/views/footer/footer.jsp" />

</body>
</html>