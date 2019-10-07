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
		<h2 style="font-weight:bold;">個人隱私保密政策</h2>
		<hr>
		<h4 style="font-weight:bold;">隱私權政策</h4>
		<p style="font-size:15px">
			本公司卡痞十分重視您的隱私權保護，將依個人資料保護法及本隱私權政策蒐集、處理及利用您的個人資料，並提供您對個人資料權利之行使與保護。若您不同意本隱私權政策之全部或部分者，請您停止使用本網站服務。</p>
		<h4 style="font-weight:bold;">1、本隱私權政策適用之範圍</h4>
		<p style="font-size:15px">
			本隱私權政策及其所包含之告知事項，適用於卡痞網站。本網站內可能包含許多連結、或其他合作夥伴所提供的服務，關於該等連結網站或合作夥伴網站的隱私權聲明及與個人資料保護有關之告知事項，請參閱各該連結網站或合作夥伴網站。</p>
		<h4 style="font-weight:bold;">2、個人資料保護法應告知事項</h4>
		<p style="font-size:15px">(1)
			蒐集目的：提供本網站相關服務、行銷、契約、類似契約或其他法律關係事務、客戶管理與服務、網路購物及其他電子商務服務、廣告和商業行為管理業務、以及經營合於營業登記項目或組織章程所定之業務。
			(2)
			個人資料類別：識別類（姓名、職稱、地址、聯絡電話、電子郵件信箱）、特徵類（年齡、性別、出生年月日等）、社會情況類（興趣、休閒、生活格調、消費模式等）、教育、技術或其他專業類（學歷）、受僱情形類（任職公司、職務等）、其他（為完成收款或付款所需之資料、往來電子郵件、網站留言、系統自動紀錄之軌跡資訊及其他得以直接或間接識別使用者身分之個人資料等），惟將以實際本公司取得之個人資料為限。
			(3)
			個人資料利用：本網站所蒐集的足以識別使用者身分的個人資料，都僅供本網站於其內部、依照蒐集之目的進行處理和利用，除非事先說明、或為完成提供服務或履行合約義務之必要、或依照相關法令規定或有權主管機關之命令或要求，否則本網站不會將足以識別使用者身分的個人資料提供給第三人（包括境內及境外）、或移作蒐集目的以外之使用。

			在會員有效期間內，以及法令所定應保存之期間內，本網站會持續保管、處理及利用相關資料。 (4)
			個人資料利用對象：本公司及本公司委外之協力廠商（例如：商品供應商、提供物流、金流或活動贈品、展示品之廠商）；如為本公司與其他廠商共同蒐集者，將於該共同蒐集之活動中載明。
			(5)
			行使個人資料權利方式：依個人資料保護法第3條規定，您就您的個人資料享有查詢或請求閱覽、請求製給複製本、請求補充或更正、請求停止蒐集、處理或利用、請求刪除之權利。
			您可以透過寄送電子郵件至【service@buy888.com.tw
			】（為避免電子郵件系統漏信或其他原因無法收悉，以本公司回覆收悉為準）或加入卡痞LINE@【＠rid7183q】方式行使上開權利，本公司將於收悉您的請求後，儘速處理。但因本網站執行職務或業務所必須者，不在此限。
		</p>
		<h4 style="font-weight:bold;">3、個人資料蒐集、處理及利用說明</h4>
		<p style="font-size:15px">本公司可能透過Facebook或類似社群服務系統，於取得您的同意後，將部分本網站的資訊發布於您的社群活動資訊頁面，若您不同意該等訊息之發布，請您勿點選同意鍵，或於事後透過各該社群服務之會員機制移除該等資訊或拒絕本網站繼續發布相關訊息。若有任何問題，仍可與本公司聯絡，本公司將協助您確認、處理相關問題。
			若您所填寫之送貨地址、聯絡人、聯絡方式等非您本人之個人資料，您同意已取得各該當事人之同意提供予本公司，並已代公本公司就前開法定告知事項予以告知。
			除依法應提供予司法、檢調機關、相關主管機關，或與本公司協力廠商為執行相關活動必要範圍之利用外，本公司將不會任意將您的個人資料提供予第三人。
			當本公司或本網站全部或部分分割、獨立子公司經營、被其他第三者購併或收購資產，導致經營權轉換時，本公司會於事前將相關細節公告於本網站，且本公司或本網站所擁有之全部或部分使用者資訊亦可能在經營權轉換的狀況下移轉給第三人。惟限於與該經營權轉換服務相關之個人資料。若本公司或本網站部分營運移轉予第三人，您仍為本公司會員，若您不希望本公司後續利用您的個人資料，您可以依本隱私權政策向本公司行使權利。</p>
		<h4 style="font-weight:bold;">4、Cookie技術</h4>
		<p style="font-size:15px">為便於日後的辨識，當您使用本網站服務時，本公司可能會在您的電腦上設定與存取Cookie。
			您可以透過設定您的個人電腦或上網設備，決定是否允許Cookie技術的使用，若您關閉Cookie時，可能會造成您使用本網站服務時之不便利或部分功能限制。
		</p>
		<h4 style="font-weight:bold;">5、保密與安全性</h4>
		<p style="font-size:15px">本公司之員工，僅於其為您提供產品或服務之需求範圍內，對於您的個人資料得為有限之接觸。
			為了保護您的帳戶及個人資料的安全，請您不要任意將個人帳號、密碼提供予第三人或允許第三人以您的個人資料申請帳號、密碼，否則，相關責任由您自行負擔。若您的帳號、密碼有外洩之虞，請您立即更改密碼，或通知本公司暫停該帳號（本公司可能會要求核對您的個人資料）。
			網際網路並不是一個安全的資訊傳輸環境，請您在使用本網站時，避免將敏感的個人資料提供予他人或在網站上公開揭露。</p>
		<h4 style="font-weight:bold;">6、隱私權政策之修改</h4>
		<p style="font-size:15px">本網站有權隨時修改本隱私權政策，並得於修訂後公佈在本網站適當位置，不另行個別通知。若您不同意該等變更或修改，請停止繼續使用本網站服務，並依本隱私權政策規定通知本公司停止蒐集、處理及利用您的個人資料。</p>
	</div>


	<jsp:include page="/WEB-INF/views/footer/footer.jsp" />

</body>
</html>