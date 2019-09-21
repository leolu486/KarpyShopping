<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!doctype html>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Product</title>

<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">



 <link rel="stylesheet" href="<c:url value="/productDetail/css/op04.css" />"
	type="text/css" />
 

<link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css" />"
	type="text/css" />
<!-- animate css -->
<link rel="stylesheet" href="<c:url value="/css/animate.css" />"
	type="text/css" />
<!-- jquery-ui.min css -->
<link rel="stylesheet" href="<c:url value="/css/jquery-ui.min.css" />"
	type="text/css" />
<!-- meanmenu css -->
<link rel="stylesheet" href="<c:url value="/css/meanmenu.min.css" />"
	type="text/css" />
<!-- nivo slider css -->
<link rel="stylesheet" href="<c:url value="/css/nivo-slider.css" />"
	type="text/css" />
<link rel="stylesheet" href="<c:url value="/css/preview.css" />"
	type="text/css" />
<!-- owl.carousel css -->
<link rel="stylesheet" href="<c:url value="/css/owl.carousel.css" />"
	type="text/css" />
<!-- font-awesome css -->
<link rel="stylesheet"
	href="<c:url value="/css/font-awesome.min.css" />" type="text/css" />
<!-- style css -->
<link rel="stylesheet" href="<c:url value="/css/style.css" />"
	type="text/css" />
<!-- responsive css -->
<link rel="stylesheet" href="<c:url value="/css/responsive.css" />"
	type="text/css" />
<!-- modernizr js -->

 <script type="text/javascript">

   let imgofon ,imgsision ,count=0, a, flag=true;

   document.addEventListener("DOMContentLoaded",function(){
   imgofon = document.querySelectorAll("img.off,img.on");
   imgsision = document.querySelectorAll("img.no_side,img.side");
   document.getElementById("idpauseplay").addEventListener("click",idpauseplay);
   document.getElementById("idback").addEventListener("click",backf);
   document.getElementById("idnext").addEventListener("click",nextf);
   });

   function gif(){

       imgofon[count].className="on";
       imgsision[count].className="no_side";
       count++;
       if(count>1)count=0;
       imgofon[count].className="off";   
       imgsision[count].className="side";
   }
   a=window.setInterval(gif,1500);

   function idpauseplay(){
       if(flag){  // flag=true
           flag=false;
           window.clearInterval(a); //clearInterval 取消  setInterval() 设置的 timeout = 時間。
           document.getElementById("idpauseplay").src="images/imagesPD/play.png";
       }else{
           flag=true;
           a=window.setInterval(gif,1500);
           document.getElementById("idpauseplay").src="images/imagesPD/pause.png";
       }    
   }

   function backf(){
       imgofon[count].className="on";
       imgsision[count].className="no_side";
       count--;
       if(count<0)count=1;
       imgofon[count].className="off";   
       imgsision[count].className="side";
       window.clearInterval(a);
   }
   function nextf(){
       imgofon[count].className="on";
       imgsision[count].className="no_side";
       count++;
       if(count>1)count=0;
       imgofon[count].className="off";   
       imgsision[count].className="side";
       window.clearInterval(a);
   }

   </script>
    
    <style type="text/css">
    
.WidthStyle01{
    width: 280PX;
    
    text-align: center;
}
    

    .off{
        width: 250PX;
		height: 250px;
        display: block; /*區塊方式呈現 inline 相反  */
        cursor: pointer; /*滑鼠 顯示手的形狀*/
        display:block; 
        margin:auto;
        
      
    }
    .on{
        display: none; /*隱藏+覆蓋*/
		
    }
    

    .side{
        margin: 3PX 2PX;
        width: 60PX;
        height: 60PX;
        border: 3px solid #ffc300;
    }
    .no_side{
        margin: 3PX 2PX;
        width: 60PX;
        height: 60PX;
        
    }

    .legend {   /*設置文字*/
        text-align: center;
        font-size: larger
    }

    .field01 {
        width: 280PX;
        height: 350PX;
        margin: 0 auto;  /*置中*/
        border-radius: 20PX; /*導角*/
        background-color: rgb(136, 136, 136);
		
    }
    .control01 {
        margin-left: 30px;
        margin-right: 30px;
        width: 30px;
        -webkit-filter: grayscale(1); /*濾鏡 色階 彩0~1灰~X*/
    }

    </style>

<script src="js/vendor/modernizr-2.8.3.min.js"></script>
<body>

	<jsp:include page="/WEB-INF/views/fragment/top.jsp" />

	<div class="shop_area">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="shop_menu shop_menu_2"></div>
				</div>
			</div>
		</div>
		<div class="elavator_area">
			<div class="container">
				<div class="row">
					<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
<!-- 						<div class="elavetor"  style="background-color: aqua" > -->
							
<!-- 							  <img	width='100' height='150' -->
<%-- 								src="data:image/jpg;base64,${productImage}" /> --%>

<!-- 							<div class="al_zoom"></div> -->
<div  style="float: left"  >


 <fieldset class="field01">
<!--      class="elavetor"       -->
            <div class="WidthStyle01"   >
           
              <a href=""><img src="data:image/jpg;base64,${productImage}" id="img01" class="off" ></a> 
                       
              <a href=""> <img src="data:image/jpg;base64,${productImage1}" id="img02" class="on"></a> 
                      
                    
            </div>
            <div class="WidthStyle01">
            
             <img	class="side" id="img_01"  src="data:image/jpg;base64,${productImage}" />
			 <img	class="no_side" id="img_02"  src="data:image/jpg;base64,${productImage1}" />					
               
               
              
            </div> 
            <div class="WidthStyle01">                
                    <img id="idback" class="control01" src="images/imagesPD/back.png">
                    <img id="idpauseplay" class="control01" src="images/imagesPD/pause.png">
                    <img id="idnext" class="control01" src="images/imagesPD/next.png">
            </div>       			
           </fieldset>


</div>
						
					</div>
					<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
						<div class="elav_titel">
							<div class="elv_heading">
								<h3>${product.pname}</h3>




							</div>
							<div class="price_rating">
								<a href="#"> <i class="fa fa-star"></i>
								</a> <a href="#"> <i class="fa fa-star"></i>
								</a> <a href="#"> <i class="fa fa-star"></i>
								</a> <a href="#"> <i class="fa fa-star"></i>
								</a> <a class="not-rated" href="#"> <i class="fa fa-star-o"></i>
								</a> <a class="review-link" href="#"> ( <span class="count">2</span>
									customer reviews)
								</a>
							</div>
						</div>

						<div class="evavet_description">
							<%-- 							<p>商品介紹:${product.detail}</p> --%>
						</div>



						<div class="elavetor_social">

							<div class="evavet_description">
								<p>供應商${product.vendorBean.vname}</P>

							</div>


							<ul class="social-link">
								<li><a class="fb" data-original-title="facebook" href="#"
									title="" data-toggle="tooltip"><i class="fa fa-facebook"></i></a></li>
								<li><a class="twit" data-original-title="twitter" href="#"
									title="" data-toggle="tooltip"><i class="fa fa-twitter"></i></a></li>
								<li><a class="pinter" data-original-title="pinterest"
									href="#" title="" data-toggle="tooltip"><i
										class="fa fa-pinterest"></i></a></li>
								<li><a class="google+" href="#" title="Google+"
									data-target="#productModal" data-toggle="tooltip"><i
										class="fa fa-google-plus"></i></a></li>
								<li><a class="lindin" href="#" title="LinkedIn"
									data-target="#productModal" data-toggle="tooltip"><i
										class="fa fa-linkedin"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
					<div class="elav_info">
						<div class="price_box price_box_acr">
							<!-- <span class="old- price old- price-2">${product.price}打折</span> -->
							<span class="spical-price spical-price-2">售價:${product.price}</span>
							<p>商品分類: ${product.category}</p>
							<p>商品編號: ${product.pId}</p>
							<p>庫存: ${product.amount}</P>
						</div>
						
						
						<form:form modelAttribute="product" class="cart-btn-area" method="POST" enctype="multipart/form-data">
                                <input type="number" name="quantity" id="quantity" value="1" />
                                <form:input name="pId" path="pId" type="hidden"/>
                                <form:input name="pname" path="pname" type="hidden"/>
                                <form:input name="price" path="price" type="hidden"/>
                                <form:input name="vId" path="vId" type="hidden"/>
                                <form:input name="category" path="category" type="hidden"/> 
                                <button class="add-tocart cart_zpf" type="submit">加入購物車</button>
                            </form:form>
						
						
						
						<div class="add_defi">
							<a href="#" data-original-title="Add to Wishlist"
								data-toggle="tooltip"> <i class="fa fa-heart another_icon"></i>
								加到最愛
							</a>
						</div>
						<div class="add_defi_2">
							<a data-original-title="Compare" title="" data-toggle="tooltip"
								rel="nofollow" data-product_id="45" href=""><i
								class="fa fa-refresh another_icon"></i> Compare</a>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="/WEB-INF/views/footer/footer.jsp" />
</body>