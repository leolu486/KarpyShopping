<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="zh-tw">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>訂單修改</title>
<!--     <script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script> -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
<!--     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" > -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+TC&display=swap" rel="stylesheet">
   	<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
   	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+TC&display=swap" rel="stylesheet">
<%--     <link rel="stylesheet" href="<c:url value='/order/memberUpdateOrder.css' />" rel="stylesheet">  --%>
</head>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>	
<style>
	.form_wrapper{
/*     display: none; */
/*      position: fixed; /*  Stay in place */ */
    z-index: 1; /* Sit on top */ 
    padding: 50px; /* Location of the box */
    left: 0;
    top: 0;
    width: auto; /* Full width */
    height: auto; /* Full height */
    overflow: auto; /* Enable scroll if needed */
/*     background-color: rgb(0,0,0); /* Fallback color */ */
/*     background-color: rgba(0,0,0,0.4); /* Black w/ opacity */ */
/*      border:1px solid red;  */	
 }  

 .form_content{
    position: relative;
    background-color: #fefefe;
    margin: auto;
    padding: 0;
    border: 1px solid #888;         
    width: 500px;
    box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19);
    -webkit-animation-name: animatetop;
    -webkit-animation-duration: 0.4s;
    animation-name: animatetop;
    animation-duration: 0.4s;
    height:770px;
    border-radius:20px;
/*     border:1px solid light-grey; */
    
 } 

 .update_form1{
     margin: 30px;    
              
 }
 .update_form2{
     margin: 30px;    
              
 }

 #btn{
    
     width: 50%;
     height: 50px;
     background-color: #fc4a03;
     border-radius: 40px;
     border: none;
      position: relative; 
     left:25%;
     right:25%
 }

 h6{
     /*line-height: 40px; */
     margin: 30px;
 }

 .input_border{
     border:none; 
     border-bottom:1px solid gray; 
     border-radius: 0;
     box-shadow: none;
     background: transparent;  
     padding-left:50px;   
     margin-bottom: 20px;
     width:300px; 
     display:inline-block;       
    
 }

 .form-control:focus {
    -webkit-box-shadow: none;
     box-shadow: none;
}

.close{
    font-size: 40px;
    margin-right: 20px;
}
.close:hover,
.close:focus {
    color: #000;
    text-decoration: none;
    cursor: pointer;        
}

.material-icons{
    position: absolute;
    color: gray;
}

h2{
    text-align: center;
    color:  #fc4a03;
    font-family: 'Noto Sans TC', sans-serif;       
} 

h5{
	margin:10px;
	padding-bottom:10px;

}

.inner{
	margin:50px;

}

.orderInfoBtn{
	float:right;
	border-radius:10px;

}

body { 
	opacity: 0; 
	transition: opacity 2s; 
} 


</style>
<body onload="document.body.style.opacity='1'">
	<div>
   		<jsp:include page="/WEB-INF/views/fragment/top.jsp" />
    </div>
    <div id="form_wrapper1" class="form_wrapper">
    	<div style="margin-left:660px;"><a id="details" class="btn btn-secondary" style="margin-bottom:10px" href='<c:url value="/" />'>返回</a></div>
        <div class="form_content" >
<!--             <span id="closeBtn" class="close">&times;</span><p>  -->				
                <h2>修改訂單</h2> 
                <form:form  modelAttribute="order" id="update_form1" class="update_form1" method="POST" accept-charset="UTF-8" enctype="multipart/form-data">                            
                <div class="inner">     
                <h5 style="display:inline-block">訂單編號: ${order.oId}</h5> <a href="<spring:url value='/orderItemByOid?oId=${order.oId}' />" class="btn btn-info orderInfoBtn"> <span class="glyphicon-info-sigh glyphicon"></span>詳細資料 </a>
                <h5>會員: ${order.memberBean.name}</h5>
                <h5>日期: ${order.odate}</h5>
                <h5>金額: ${order.price}元</h5>
                <h5>連絡電話: ${order.tel}</h5>
                <h5>取貨人: ${order.consignee}</h5>
                <h5>地址: ${order.addr}</h5>
                <c:choose>              
                	<c:when test="${order.status != '已出貨'}">
	                	<h5 style="padding-bottom:0;">運送狀態: </h5>
	                		<select class="custom-select my-1 mr-sm-2" id="status" name="status">   	 						
	    						<option>未出貨</option>
	    						<option>已出貨</option>    						
	  						</select>               
	                </c:when>
	                <c:otherwise>
	                	<h5>運送狀態: 已出貨</h5>
	                	<form:input id="status" path="status" type="hidden"/>
	                </c:otherwise>
	             </c:choose>   
                	<h5 style="padding-top:20px;">貨單號碼: </h5>
                		<form:input  id="shippingNo" path="shippingNo" class="form-control" type="text" />                	
                </div> 
                
                			<form:input id="oid" path="oId"  type="hidden"/>
							<form:input id="addr" path="addr"  type="hidden"/>
							<form:input id="consignee" path="consignee"  type="hidden"/>
							<form:input id="mId" path="mId" type="hidden"/>
							<form:input id="odate" path="odate"  type="hidden"/>
							<form:input id="price" path="price"  type="hidden"/>
							<form:input id="tel" path="tel"  type="hidden"/>
						          
                				
                	<input class="btn btn-secondary btnOK" id="btn" type="submit" value="確定"/>
            	
            </form:form>
        </div>  
    </div>
  
  
    <div>
    	<jsp:include page="/WEB-INF/views/footer/footer.jsp" />
	</div>


</body>
</html>