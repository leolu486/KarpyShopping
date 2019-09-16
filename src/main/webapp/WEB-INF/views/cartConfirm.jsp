<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>購物車</title>

    <link rel="stylesheet" href="<c:url value='/shoppingCart/style.css' />" media="screen" title="no title" charset="utf-8" />
    <script src="https://code.jquery.com/jquery-2.2.4.js" charset="utf-8"></script>
    <meta name="robots" content="noindex,follow" />
	<link rel="stylesheet" type="text/css" href="<c:url value='/order/vendor/bootstrap/css/bootstrap.min.css' />">
<!-- 	<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css"> -->
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value='/shoppingCart/font-awesome.min.css' />">
</head>
<body>
<div class="wrapper">
	 <div class="header">
		<jsp:include page="/WEB-INF/views/fragment/top.jsp" />
	</div>
<form:form id="cartForm">	
<div class="shopping-cart content">
      <!-- Title -->      
      <div class="title">
        	購物車
<!--         	<button type="button" class="btn1 btn-success " onclick="return checkOut()"> -->
<!-- 				去買單 -->
<!-- 			</button> -->
			
			<button type="button" class="btn2 btn-info " onclick="return continueShopping()">
				繼續購物
			</button>
			
      </div>
      
<c:forEach varStatus="vs" var="anEntry" items="${ShoppingCart.content}">  
      <div class="item">
        <div class="buttons">
        		<!-- 刪除購物車商品 --> 
          <a class="delete-btn" onclick="return cancelProduct(${anEntry.key})"></a>         
        </div>

        <div class="image">
          <img src="<c:url value='/shoppingCart/item-1.png' />" />
        </div>

        <div class="description">
          <span>${anEntry.value.description}</span>        
        </div>

        <div class="quantity">
          <button class="plus-btn" type="button" name="button">
            <img src="<c:url value='/shoppingCart/plus.svg' />" />
          </button>
          <input id="${vs.index}qty" type="text" name="name" value="${anEntry.value.quantity}">
          <button class="minus-btn" type="button" name="button">
            <img src="<c:url value='/shoppingCart/minus.svg' />"  />
          </button>
        </div>

        <div class="unit-price"><fmt:formatNumber value="${anEntry.value.unitPrice * anEntry.value.discount }" pattern="#,###" />元 </div>
      	
      	<div class="refresh">
      	  <button id="refresh" class="cart-btn" type="button" name="button" onclick="return modifyQty(${anEntry.key}, ${anEntry.value.quantity}, ${vs.index})">
            <img src="<c:url value='/shoppingCart/refresh_cart.png' />" />
          </button>
         </div>
      </div>
		<c:if test="${vs.last}">      
         <div class="total-price">總付款金額: <fmt:formatNumber value="${ShoppingCart.subtotal}" pattern="#,###" />元 
         	<button type="button" class="btn1 btn-success " onclick="return checkOut()">
				去買單
			</button>
         </div>
      	</c:if>
      		<input type="text" id="oItem" value="${ShoppingCart.content}" disabled hidden="hidden">
      		
      </c:forEach>      
      </div>     
  </form:form>
  	<div class="footer">    
		<jsp:include page="/WEB-INF/views/footer/footer.jsp" />
	</div>
</div>

  <script type="text/javascript">
      $('.minus-btn').on('click', function(e) {
    		e.preventDefault();
    		var $this = $(this);
    		var $input = $this.closest('div').find('input');
    		var value = parseInt($input.val());

    		if (value > 1) {
    			value = value - 1;
    		} else {
    			value = 1;
    		}

        $input.val(value);

    	});

    	$('.plus-btn').on('click', function(e) {
    		e.preventDefault();
    		var $this = $(this);
    		var $input = $this.closest('div').find('input');
    		var value = parseInt($input.val());

    		if (value < 100) {
      		value = value + 1;
    		} else {
    			value =100;
    		}

    		$input.val(value);
    	});

      $('.like-btn').on('click', function() {
        $(this).toggleClass('is-active');
      });
    </script>
    
    <!-- 購物車script -->
<script type="text/javascript">

function continueShopping(){
// 	if (confirm("離開此頁，繼續購物  ") ) {
		window.location.href="<c:url value='/productsAddCart' />";
// 	}
}

function checkOut(){
	let oItem= document.getElementById("oItem").value;
// 	window.alert("oItem");
	if(oItem == '{}' || oItem == ''){
		window.alert("購物車為空，請選購商品");
	}else{
		if(confirm("去買單")){
			window.location.href="<c:url value='/addOrder' />"; //window.location.href="<c:url value='/order/add' />";
		}
	}
}

function cancelProduct(pId){
	if(confirm("你確定要移除嗎?")){
		document.getElementById("cartForm").action="<c:url value='/cancelProduct?pId=" + pId + "' />";
		document.getElementById("cartForm").submit();
		
	}
}

function modifyQty(pId, qty,index){
	let x = index+"qty";
	let newQty = document.getElementById(x).value;
	if(confirm("購買數量將變更為" + newQty + "個，請確認是否更新" )){
		document.getElementById("cartForm").action="<c:url value='/modifyQty?pId=" + pId + "&newQty=" + newQty + "' />";
		document.getElementById("cartForm").submit();
	}
}


</script>
    
    

</body>
</html>