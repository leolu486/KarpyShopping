<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>

<head>
<!-- ======================================================================================================= -->
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>訂單修改</title>
<!-- ======================================================================================================= -->
<link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,900'
	rel='stylesheet' type='text/css' />

<link rel="stylesheet" type="text/css"
	href="<c:url value='/backstage-source/css/bootstrap.min.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/backstage-source/css/animate.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/backstage-source/css/font-awesome.min.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/backstage-source/css/bootstrap-select.min.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/backstage-source/css/awesome-bootstrap-checkbox.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/backstage-source/css/select2.css'/>" />
<!-- ? -->
<link rel="stylesheet" type="text/css"
	href="<c:url value='/backstage-source/css/style.css'/>" />

<!-- ? -->
<link rel="stylesheet" type="text/css"
	href="<c:url value='/backstage-source/css/theme.css'/>" />

<script type="text/javascript"
	src="<c:url value='/backstage-source/js/jquery-2.1.3.min.js'/>" /></script>
<script type="text/javascript"
	src="<c:url value='/backstage-source/js/Chart.min.js'/>" /></script>
<script type="text/javascript"
	src="<c:url value='/backstage-source/js/bootstrap-select.min.js'/>" /></script>
<script type="text/javascript"
	src="<c:url value='/backstage-source/js/main.js'/>" /></script>

<script type="text/javascript"
	src="<c:url value='/backstage-source/js/index.js'/>" /></script>
	
<!-- ======================================================================================================= -->
<!--   <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"> -->
<!--   <link href="https://fonts.googleapis.com/css?family=Noto+Sans+TC&display=swap" rel="stylesheet"> -->
<!--   <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet"> -->
<!--   <link href="https://fonts.googleapis.com/css?family=Noto+Sans+TC&display=swap" rel="stylesheet">	 -->
<!-- ======================================================================================================= -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.9/dist/css/bootstrap-select.min.css">
</head>
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
    animation:transitionIn 1s;
 } 

 .update_form1{
     margin: 10px;    
              
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
     right:25%;
     color:white;
     
 }
 
  #btnBack{
    
     width: 50%;
     height: 50px;
     background-color: #03bafc;
     border-radius: 40px;
     border: none;
     position: relative; 
     left:25%;
     right:25%;
     color:white;
     float:left;
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

h3{
    text-align: center;
    color:  #fc4a03;
    font-family: 'Noto Sans TC', sans-serif;       
} 

h4{
	padding-top:20px;

}

h5{
	margin:10px;
	padding-bottom:10px;
	font-size:16px;

}

.inner{
	margin:50px;

}

.orderInfoBtn{
	float:right;
	border-radius:10px;

}


	@keyframes transitionIn{
		from{		
			opacity:0;
			transform:rotateX(-10deg);
		}		
		
		to{
			opacity:1;
			transform:rotateX(0);
		}
	}

</style>

<body class="flat-blue sidebar-collapse">


	<jsp:include page="/WEB-INF/views/backstage/fragment/sidebar.jsp" />

	<jsp:include page="/WEB-INF/views/backstage/fragment/navi.jsp" />

	<script>
 		$("#adminOrders").addClass("active");
	</script>

	<!-- 	 page content  -->
	<div class="content-container wrap">

		<div class="container-fluid">
			<div class="row">
				<div class="col-xs-12">
					<span class="page-title red"><h2>訂單</h2></span>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-12">

					<ol class="breadcrumb">
						<li><a href="admin">Home</a></li>
						<li><a href="orders">訂單查詢</a></li>
						<li><a>修改訂單</a></li>
					</ol>
				</div>
			</div>
			
		<div id="form_wrapper1" class="form_wrapper">    	
        <div class="form_content" >
<!--             <span id="closeBtn" class="close">&times;</span><p>  -->				
                <h2 style="text-align: center;">修改訂單</h2> 
                <form:form  modelAttribute="order" id="update_form1" class="update_form1" method="POST" accept-charset="UTF-8" enctype="multipart/form-data">                            
                <div class="inner">     
                <h4 style="display:inline-block;">訂單編號: ${order.oId}</h4> <a href="<spring:url value='/orderItemByOidBackStage?oId=${order.oId}' />" class="btn btn-info orderInfoBtn"> <span class="glyphicon-info-sigh glyphicon"></span>詳細資料 </a>
                <h4>會員: ${order.memberBean.name}</h4>
                <h4>日期: ${order.odate}</h4>
                <h4>金額: <fmt:formatNumber value="${order.price}" pattern="#,###,###" />元</h4>
                <h4>連絡電話: ${order.tel}</h4>
                <h4>取貨人: ${order.consignee}</h4>
                <h4>地址: ${order.addr}</h4>
                <c:choose>              
                	<c:when test="${order.status != '已出貨'}">
	                	<h4 style="padding-bottom:0;width:500px;">運送狀態: 
	                		<select  id="status" name="status">   	 						
	    						<option>未出貨</option>
	    						<option>已出貨</option>    						
	  						</select>
	  						</h4>               
	                </c:when>
	                <c:otherwise>
	                	<h4>運送狀態: 已出貨</h4>
	                	<form:input id="status" path="status" type="hidden"/>
	                </c:otherwise>
	             </c:choose>   
                	<h4 style="padding-top:20px;">貨單號碼: </h4>
                		<form:input  id="shippingNo" path="shippingNo" class="form-control" type="text" />                	
                </div> 
                
                			<form:input id="oid" path="oId"  type="hidden"/>
							<form:input id="addr" path="addr"  type="hidden"/>
							<form:input id="consignee" path="consignee"  type="hidden"/>
							<form:input id="mId" path="mId" type="hidden"/>
							<form:input id="odate" path="odate"  type="hidden"/>
							<form:input id="price" path="price"  type="hidden"/>
							<form:input id="tel" path="tel"  type="hidden"/>
						          
                	<div >			
                	<input class="btn btn-secondary btnOK" id="btn" type="submit" value="確定"/>
                	</div>
                	
            </form:form>
        </div>  
    </div>
			
			
			
		</div>
	</div>

	<footer class="footer">
		<span>Copyright by KarpyShopping</span>
	</footer>
	
<script>

	$(".btnOK").click(function(e){
		var oId = ${order.oId};		
		if(confirm("即將修改訂單")){			
			$("#update_form1").submit();			
		}else{
			return false;
		}		
	});
	
</script>
	
</body>

</html>
