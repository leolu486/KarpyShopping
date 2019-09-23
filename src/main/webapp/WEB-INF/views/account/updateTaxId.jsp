<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<link rel='stylesheet'
	href='${pageContext.request.contextPath}/css/styles.css'
	type="text/css" />
<meta charset="UTF-8">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<style type="text/css">
fieldset {
	border: 1px solid rgb(255, 232, 57);
	width: 400px;
	margin: auto;
}
</style>
<title>addTaxId</title>
<link rel='stylesheet' href='css/styles.css' type="text/css" />
<script type="text/javascript">
function IdTaxNumberCheck(taxId){
    var invalidList = "00000000,11111111";
    if (/^\d{8}$/.test(taxId) == false || invalidList.indexOf(taxId) != -1) {
        document.getElementById("PointMsg").innerHTML = "<span style='color:red;'>請輸入正確統一編號格式</span>";
        document.getElementById("taxId").value = "";
        return false;
    }

    var validateOperator = [1, 2, 1, 2, 1, 2, 4, 1],
        sum = 0,
        calculate = function (product) { // 個位數 + 十位數
            var ones = product % 10,
                tens = (product - ones) / 10;
            return ones + tens;
        };
    for (var i = 0; i < validateOperator.length; i++) {
        sum += calculate(taxId[i] * validateOperator[i]);
    }

    if (sum % 10 == 0 || (taxId[6] == "7" && (sum + 1) % 10 == 0)) {
        document.getElementById("PointMsg").innerHTML = "<span style='color:red;'>Yes</span>";
    } else {
        document.getElementById("PointMsg").innerHTML = "<span style='color:red;'>驗證失敗，請輸入正確統一編號格式</span>";
        document.getElementById("taxId").value = "";
        return false;
    }
    return true;
} 
</script>
</head>
<body>
	<section>
		<div class="container">
			<h1 style="text-align: center">新增統一編號</h1>
		</div>
	</section>
	<hr
		style="height: 1px; border: none; color: #333; background-color: #333;">
	<section class="container">
		<!--       三個地方要完全一樣 -->
		
		
		<form:form method='POST' modelAttribute="memberBean"
			class='form-horizontal' enctype="multipart/form-data" onsubmit="return IdTaxNumberCheck();">
			<!-- <form>加入enctype="multipart/form-data"才有檔案上傳功能 -->
			<fieldset>
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for='taxId'>
						統一編號: </label>
					<div class="col-lg-10">
						<form:input id="taxId" path="taxId" type='text'
							class='form:input-large' />
					</div>
					<span id="PointMsg"></span>
				</div>
				<div class="form-group">
					<div class='col-lg-offset-2 col-lg-10'>
						<input id="btnAdd" type='submit' class='btn btn-primary'
							value="新增" />
					</div>
				</div>



			</fieldset>
		</form:form>
	</section>
</body>
</html>
