<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!doctype html>
<html lang="zh-tw">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" >

    <!-- Custom styles for this template -->
    <link rel="stylesheet" type="text/css" href="<c:url value='/order/form-validation.css' />">
    
    <title>結帳頁面</title>
  </head>
  <body class="bg-light">

    <div class="container">
      <div class="py-5 text-center">
        <img class="d-block mx-auto mb-4" src="https://getbootstrap.com/assets/brand/bootstrap-solid.svg" alt="" width="72" height="72">
        <h2>結帳</h2>
<!--         <p class="lead">請填寫以下資訊</p> -->
      </div>

<!-- 購物車檢視 -->
      <div class="row">
        <div class="col-md-4 order-md-2 mb-4">
          <h4 class="d-flex justify-content-between align-items-center mb-3">
            <span class="text-muted">訂單詳情</span>         
          </h4>
          
          <ul class="list-group mb-3">
        <c:forEach varStatus="vs" var="anEntry" items="${ShoppingCart.content}">
            <li class="list-group-item d-flex justify-content-between lh-condensed">
              <div>
                <h6 class="my-0">${anEntry.value.description}x${anEntry.value.quantity}</h6>
                <small class="text-muted"><fmt:formatNumber value="${anEntry.value.unitPrice * anEntry.value.discount }" pattern="#,###" />元</small>             
              </div>             
            </li>
         <c:if test="${vs.last}">
			<li class="list-group-item d-flex justify-content-between"> 
              	<span><strong>總付款金額</strong></span> 
               	<strong><fmt:formatNumber value="${ShoppingCart.subtotal}" pattern="#,###,###" />元</strong> 
            </li> 
          </c:if>
          </c:forEach> 
            </ul>

          <form class="card p-2">
            <div class="input-group">
              <input type="text" class="form-control" placeholder="Promo code">
              <div class="input-group-append">
                <button type="submit" class="btn btn-secondary">Redeem</button>
              </div>
            </div>
          </form>
        </div>
        <div class="col-md-8 order-md-1">
          <h4 class="mb-3"><strong>請確認以下資訊</strong></h4>
          
          
<!--    結帳資訊        -->
          <form:form modelAttribute='order' method='POST' class='needs-validation' novalidate="novalidate" enctype="multipart/form-data">
			 <div class="mb-3">
             <p>會員編號: ${memberLoginOK.mId}</p>
             <p>會員姓名: ${memberLoginOK.name}</p>	
              
            </div>

            <div class="mb-3">
              <label for="tel">聯絡電話 <span class="text-muted"></span></label>
              <form:input type="text" class="form-control" id="tel" path="tel" value='${memberLoginOK.tel}'  required="required"/>
              <div class="invalid-feedback">
               	 此欄位不可為空白
              </div>
            </div>

            <div class="mb-3">
              <label for="addr">寄送地址</label>
              <form:input type="text" class="form-control" id="addr" path="addr" value='${memberLoginOK.addr}' required="required" />
              <div class="invalid-feedback">
               	 此欄位不可為空白
              </div>
            </div>
              <div class="mb-3">
              <label for="consignee">收貨人</label>
              <form:input type="text" class="form-control" id="consignee" path="consignee" value='${memberLoginOK.name}' required="required" />
              <div class="invalid-feedback">
               	 此欄位不可為空白
              </div>
            </div>
            <hr class="mb-4">
            <button class="btn btn-danger btn-lg btn-block" type="submit">下訂單</button>
          </form:form>
        </div>
      </div>

      <footer class="my-5 pt-5 text-muted text-center text-small">
<!--         <p class="mb-1">&copy; 2019 Karpy Shopping</p> -->
<!--         <ul class="list-inline"> -->
<!--           <li class="list-inline-item"><a href="#">Privacy</a></li> -->
<!--           <li class="list-inline-item"><a href="#">Terms</a></li> -->
<!--           <li class="list-inline-item"><a href="#">Support</a></li> -->
<!--         </ul> -->
      </footer>
    </div>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/holder/2.9.4/holder.min.js" integrity="sha256-ifihHN6L/pNU1ZQikrAb7CnyMBvisKG3SUAab0F3kVU=" crossorigin="anonymous"></script>
    <script>
      // Example starter JavaScript for disabling form submissions if there are invalid fields
      (function() {
        'use strict';

        window.addEventListener('load', function() {
          // Fetch all the forms we want to apply custom Bootstrap validation styles to
          var forms = document.getElementsByClassName('needs-validation');

          // Loop over them and prevent submission
          var validation = Array.prototype.filter.call(forms, function(form) {
            form.addEventListener('submit', function(event) {
              if (form.checkValidity() === false) {
                event.preventDefault();
                event.stopPropagation();
              }
              form.classList.add('was-validated');
            }, false);
          });
        }, false);
      })();
    </script>
  </body>
</html>