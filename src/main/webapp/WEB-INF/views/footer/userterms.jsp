<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<c:url value="/css/style.css" />"
	type="text/css" />

<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/vendor/modernizr-2.8.3.min.js"></script>
<link rel="stylesheet"
	href="<c:url value="/css/font-awesome.min.css" />" type="text/css" />
<meta charset="UTF-8">


<link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css" />"
	type="text/css" />
<title>Insert title here</title>
</head>
<style>
</style>
<body>
	<jsp:include page="/WEB-INF/views/fragment/top.jsp" />

	<jsp:include page="/WEB-INF/views/fragment/header.jsp" />

	<br>
	<div style="width: 1000px; margin: 0 auto;">
		<h2 style="font-weight: bold;">使用者條款</h2>
		<hr>
		<h4 style="font-weight: bold;">卡痞服務條款</h4>
		<p style="font-size: 15px">
			任何使用者使用本網站服務時，請先詳細閱讀本服務條款及其他本網站公布之相關條款，並請確實遵守；若您無法遵守本服務條款內容、或對於本服務條款內容全部或部分不同意時，提醒您請勿使用本網站服務。</p>
		<h4 style="font-weight: bold;">第1條：服務說明</h4>
		<p style="font-size: 15px">
			本網站提供線上訂購商品及送貨到府服務。本網站得依業務推展及評估消費者需求，視情形增加、修改或終止相關服務。</p>
		<h4 style="font-weight: bold;">第2條：本公司會員</h4>
		<p style="font-size: 15px">1、您同意於申請使用本服務時，同時加入本公司會員，您所填寫之個人資料將由本公司依個人資料保護法規定予以保護。您同意本公司得以電子郵件、簡訊或其他方式提供您本公司各項服務及相關優惠訊息。
			2、您所申請之帳號、密碼於本網站開通後，將得於本公司目前已提供及後續所提供之各項服務(包含本公司所經營之其他網站 )中登入使用。</p>
		<h4 style="font-weight: bold;">第3條：交易注意事項</h4>
		<p style="font-size: 15px">1、您加入本公司會員後，即可透過本網站選購您所喜歡的商品，本網站將定期或不定期更新商品。本網站銷售頁面所載商品照片或其他說明資訊，為合作廠商為供銷售所提供之示意照片，並非該批商品之真實照片，惟本公司將與合作廠商共同維護本網站所販售之商品品質，以保障您的權益。
			2、網站所販售之部分商品，乃是請合作廠商提供預計到貨數量進行預售，須配合到貨時程安排出貨事宜。若原定出貨日期有延遲或當批到貨數量不足，您同意本公司得以電子郵件或簡訊向您通知後延後出貨。若您在時程上無法配合或有其他因素致不需要該商品，您得辦理取消訂購，本公司將立即為您辦理退款事宜。
			3、於本網站訂購商品並已付款者，視為契約成立。
			4、若您對本公司所提供之服務有任何問題，請來信客服信箱【service@buy888.com.tw】或加入卡痞LINE@【＠rid7183q】與我們聯繫。</p>
		<h4 style="font-weight: bold;">第4條：消費者權益保護</h4>
		<p style="font-size: 15px">1、本服務將依消費者保護法規定保障您的權益。
			2、若您決定就當次訂購商品取消訂購時，您可透過客服信箱(service@buy888.com.tw)或加入卡痞LINE@【＠rid7183q】
			與我們聯繫，並就該商品進行取消訂購及退款申請程序。
			本公司將依您付款方式，辦理信用卡刷退或退款至您轉帳付款之銀行帳戶。若因您取消訂購致當次消費未符合免收運費之標準，本公司將另行補收運費。
			3、於本網站訂購商品時，請務必確認符合所需才下單購買。而您使用本服務時，若經本公司判斷有多次任意退換貨、無故取消訂單，或是任何本公司認定不恰當等情形，造成本公司經營、作業上的困擾或損失，將視情況拒絕交易，暫時或永久終止對您提供本服務。
		</p>
		<h4 style="font-weight: bold;">第5條：隱私權保護</h4>
		<p style="font-size: 15px">1、除本服務條款另有約定者外，本公司將依個人資料保護法及本公司隱私權政策提供您有關個人資料保護及利用。
			2、若本公司配合之供應商，將您使用本服務所提供的個人資料運用在行銷、廣告，請透過客服信箱(service@buy888.com.tw)與我們聯繫，本公司將立即提供必要之協助，並請您相信本公司對於個人資料隱私之重視，相關規範皆已明定於供應商合約規範中。</p>
		<h4 style="font-weight: bold;">第6條：責任限制</h4>
		<p style="font-size: 15px">如依法令或契約本公司負就本服務條款相關事項負賠償或違約責任時，您同意本公司所負賠償責任，以您當次所支付予本公司之費用，作為本公司賠償責任之上限。</p>
		<h4 style="font-weight: bold;">第7條：其他</h4>
		<p style="font-size: 15px">1、本服務條款之解釋及履行，雙方同意以中華民國法律為準據法。如因本服務條款產生任何爭議，除法律另有規定者外，雙方同意以台灣屏東地方法院為第一審管轄法院。
			2、未經本公司同意授權，請勿將本網站全部或部分資料，以任何方式進行操作利用，若有違反相關法律之行為，將依法提出刑、民事訴訟。
			3、若您發現本網站上由供應商所提供之服務商品或圖片，有任何侵權情形，請與我們反映，收到通報後本公司將立即釐清情況，並做出適當之處理。
			4、本公司保留修改本網站服務條款之權利，並於修改後公佈於網站上，您同意自主閱讀。若涉及使用者權益重大情形，將以e-mail或簡訊等方式進行通知。您於服務條款發佈生效後仍繼續使用本服務，視為您同意修改內容；若您不同意修改的全部或部分內容，請您停止使用本網站服務。</p>
	</div>


	<jsp:include page="/WEB-INF/views/footer/footer.jsp" />

</body>
</html>