<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
     margin-left:85px;
     width: 25%;
     height: 30%;
     background-color: #fc4a03; 
     border-radius: 10px;
     border: none;
     position: relative; 
/*      left:25%; */
/*      right:25% */
 }
 
 #details{
 	 width: 25%;
     height: 30%;
/*      background-color: #fc4a03; */
     border-radius: 10px;
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
     outline: none;
     background: transparent;  
     padding-left:50px;   
     margin-bottom: 20px;
     width:300px;        
    
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
<%--     	<div style="margin-left:660px;"><a id="details" class="btn btn-secondary" style="margin-bottom:10px" href='<c:url value="ordersBymId?mId=${order.mId}" />'>返回訂單查詢</a></div> --%>
        <div class="form_content" >
<!--             <span id="closeBtn" class="close">&times;</span><p>  -->				
                <h2>修改訂單</h2> 
                <form id="update_form1" class="update_form1" method="POST" accept-charset="UTF-8" enctype="multipart/form-data">                            
                <div class="inner">     
                <h5 style="display:inline-block">訂單編號: ${order.oId}</h5> <a href="<spring:url value='/orderItemByOid?oId=${order.oId}' />" class="btn btn-info orderInfoBtn"> <span class="glyphicon-info-sigh glyphicon"></span>詳細資料 </a>
                <h5>會員: ${order.memberBean.name}</h5>
                <h5>日期: ${order.odate}</h5>
                <h5>金額: <fmt:formatNumber value="${order.price}" pattern="#,###,###" />元</h5>
                <h5>貨單號碼: ${order.shippingNo}</h5>
                </div>             
                <div class="inner">                
                	<i class="material-icons">phone</i><input id="tel" class="input_border" type="text" placeholder="連絡電話" value="${order.tel}" required/>                
                </div>
                <div class="inner">
                	<i class="material-icons">face</i><input id="consignee" class="input_border" type="text" placeholder="取貨人" value="${order.consignee}" required />               
                </div>
                <div class="inner">
                	<i class="material-icons">house</i><input id="addr" class="input_border" type="text" placeholder="地址" value="${order.addr}" required/>
				</div>				
					<input id="oid" value="${order.oId }" type="hidden"/>
					
					<div style="width:70%;display:inline-block;float:right;margin-top:50px;">				
            			<a id="details" class="btn btn-secondary" href='<c:url value="ordersBymId?mId=${order.mId}" />'>返回</a>
                		<input class="btn btn-secondary btnOK" id="btn" type="submit" value="確定"/>
            		</div>
            		
            </form>
        </div>  
    </div>
    
    
    
    
    
    
     <div id="form_wrapper2" class="form_wrapper" style="display:none;">
<%--     	<div style="margin-left:660px;"><a id="details" class="btn btn-secondary" style="margin-bottom:10px" href='<c:url value="ordersBymId?mId=${order.mId}" />'>返回訂單查詢</a></div> --%>
        <div class="form_content">
<!--             <span id="closeBtn" class="close">&times;</span><p>  -->				
                <h2>訂單</h2> 
                <form class="update_form2" method="POST" accept-charset="UTF-8" enctype="multipart/form-data">                            
                <div class="inner">     
                <h5 style="display:inline-block;padding-bottom:20px;">訂單編號: ${order.oId}</h5> <a href="<spring:url value='/orderItemByOid?oId=${order.oId}' />" class="btn btn-info orderInfoBtn"> <span class="glyphicon-info-sigh glyphicon"></span>詳細資料 </a>
                <h5 style="padding-bottom:20px;">會員: ${order.memberBean.name}</h5>
                <h5 style="padding-bottom:20px;">日期: ${order.odate}</h5>
                <h5 style="padding-bottom:20px;">金額: <fmt:formatNumber value="${order.price}" pattern="#,###,###" />元</h5>
                <h5 style="padding-bottom:20px;">貨單號碼: ${order.shippingNo}</h5>
                <h5 id="newTel" style="padding-bottom:20px;"></h5>
                <h5 id="newConsignee" style="padding-bottom:20px;"></h5>
                <h5 id="newAddr" style="padding-bottom:20px;"></h5>
            	<a id="" class="btn btn-secondary"  href='<c:url value="ordersBymId?mId=${order.mId}" />'>返回訂單查詢</a>
                </div>                

            </form>
            	<h4 style="text-align:center;color:red;">訂單修改已完成!</h4>
        </div>  
    </div>
  
  
    <div>
    	<jsp:include page="/WEB-INF/views/footer/footer.jsp" />
	</div>
	
	
	
	

<script>
$(document).ready(function(){
	
		
		

	$('.btnOK').on("click", function (e) {
	    e.preventDefault();
	    var oId = $("#oid").val();
		var tel = $('#tel').val();
		var consignee = $("#consignee").val();
		var addr = $("#addr").val();
		var form = new Form(tel,consignee,addr);
		var formAsJSON = JSON.stringify(form);		
	    if (confirm("即將修改訂單")) {
	    	$.ajax({
	    		type:"POST",   		
	    		data: formAsJSON,
	    		contentType: "application/json",
	    		url:"orderUpdateAJ?oId=" + oId,
	    		success:function(data){
	    			if(data.hasOwnProperty("null")){
	    				alert(data['null']);
	    			}
	    			if(data.hasOwnProperty("unchanged")){
	    				alert(data['unchanged']);
	    			}
	    			if(data.hasOwnProperty("error")){
	    				alert(data['error']);
	    			}
	    			if(data.hasOwnProperty("success")){
	    				alert(data['success']);
	    				$('#form_wrapper1').css("display","none");
	    				$('#form_wrapper2').css("display","block");	    				
	    				$("#newTel").html("連絡電話: " + data["newTel"]);
	    				$("#newConsignee").html("收貨人: " + data["newConsignee"]);
	    				$("#newAddr").html("寄件地址: " + data["newAddr"]);	    				
	    			}	    			
	    		},
	    		error:function(jqXHR, textStatus, errorThrown){
	    			console.log(jqXHR);
	    			console.log(textStatus);
	    			console.log(errorThrown);
	    		}
	    	});
	    }
	});	
	
});	
	
	function Form(tel,consignee,addr){
		this.tel =tel;
		this.consignee = consignee;
		this.addr = addr;
	}
</script>

</body>
</html>