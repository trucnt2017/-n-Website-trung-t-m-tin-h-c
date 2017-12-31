<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
     <title>Tin tức</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/icon" href="img/wpf-favicon.png"/>
    <!-- CSS
    ================================================== -->       
    <!-- Bootstrap css file-->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Font awesome css file-->
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <!-- Superslide css file-->
    <link rel="stylesheet" href="css/superslides.css">
    <!-- Slick slider css file -->
    <link href="css/slick.css" rel="stylesheet"> 
    <!-- Circle counter cdn css file -->
    <link rel='stylesheet prefetch' href='https://cdn.rawgit.com/pguso/jquery-plugin-circliful/master/css/jquery.circliful.css'>  
    <!-- smooth animate css file -->
    <link rel="stylesheet" href="css/animate.css"> 
    <!-- preloader -->
    <link rel="stylesheet" href="css/queryLoader.css" type="text/css" />
    <!-- gallery slider css -->
    <link type="text/css" media="all" rel="stylesheet" href="css/jquery.tosrus.all.css" />    
    <!-- Default Theme css file -->
   <link id="switcher" href="css/themes/default-theme.css" rel="stylesheet">
    <!-- Main structure css file -->
    <link href="css/style.css" rel="stylesheet">
   
    <!-- Google fonts -->
    <link href="https://fonts.googleapis.com/css?family=Arimo" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">   

   
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
      <link href="css/elementdk.css" rel="stylesheet" />
      <script src="js/glm-ajax.js"></script>
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
     <script src="//cdnjs.cloudflare.com/ajax/libs/validate.js/0.12.0/validate.min.js"></script>
   <script src="js/dangki.js"></script>
    <!-- ============================================ -->
    <script type="text/javascript">
        $(document).ready(function(){
        	$("#myModalRegister").hide();
        	 $.get("act_Tinhocvanphong", function(responseJson) { 
        		 if (responseJson.check == "fail") {
		        	alert("Loaddata failed!");
	                return;       		                  	
 		        } 
        		//  act_HocVien là một servlet       
 		        var $table = document.getElementById("row");
 		        $.each(responseJson, function(index, product) {  
 		        	var ngayKG = new Date(product.ngayKG); 
 		            $("<tr>").appendTo($table)  
 		              .append($("<td>").text(product.maKhoaHoc))
 		                .append($("<td>").text(product.maLop))
 		                .append($("<td>").text(product.tenLop))  
 		                .append($("<td>").text(product.thoiGian))   
 		                 .append($("<td>").text(ngayKG.getDate() + "/" + (ngayKG.getMonth() + 1) + "/" + ngayKG.getFullYear()))
 		                .append($("<td>").text(product.soTiet)) 
 		                .append($("<td>").text(product.hocPhi)) 
 		               
 		                .append($("<td>")
 		               		.append($("<a>")
 		                		.append($("<i>").addClass("fa fa-pencil-square-o"))
 		                			   )
 		                				.click(function(){
 		                		           	 $.post("act_Tinhocvanphong",{action: '3',maLop : product.maLop}, 
 		                		           		function(responseJson) {   
 		                		           		$("#makhoahoc").val(responseJson.maKhoaHoc);
 		                		     		        	$("#malop").val(responseJson.maLop);
 		                		     		        	$("#tenlop").val(responseJson.tenLop);
 		                		     		        	$("#thoigian").val(responseJson.thoiGian);
 		                		     		        	
 		                		     		        	var ngayKG2 = new Date(responseJson.ngayKG); 
 		                		     		        	if(ngayKG2.getDate()<10 && (ngayKG2.getMonth()+1)<10){
 		   	                		     		        	$("#ngaykg").val(ngayKG2.getFullYear()+ "-0" +(ngayKG2.getMonth()+1)+ "-0" +ngayKG2.getDate());
 		                		     		        	}
 		                		     		        	else if(ngayKG2.getDate()<10 && (ngayKG2.getMonth()+1)>=10){ 	
 		   	                		     		        	$("#ngaykg").val(ngayKG2.getFullYear()+ "-" +(ngayKG2.getMonth()+1)+ "-0" +ngayKG2.getDate());
 		                		     		        	}
 		                		     		        	else if((ngayKG2.getMonth()+1)<10 && ngayKG2.getDate()>=10){
 		                		     		        		$("#ngaykg").val(ngayKG2.getFullYear()+ "-0" +(ngayKG2.getMonth()+1)+ "-" +ngayKG2.getDate());
 		                		     		        	}
 		                		     		        	else{
 		   	                		     		        	$("#ngaykg").val(ngayKG2.getFullYear()+ "-" +(ngayKG2.getMonth()+1)+ "-" +ngayKG2.getDate());
 		                		     		        	}
 		                		     		        	
 		                		     		        
 		                		     		    }
 		                		           	 );
 		                		           	 event.preventDefault();
 		                		        	$('span').hide();
		                					$('#tendk').val('');
		                					$('#sdt').val('');
		                					$('#ghichu').val('');
 		                		           	 
  		                					$("#myModalRegister").show();

 		                				})
 		                )
 		               
 		        });
 		    });
        	 function reload2(){
        		 $.get("act_DangKiOnline", function(responseJson) {         
      		        var $table = document.getElementById("row1");
      		      	$.each(responseJson, function(index, product) { 
             			$("#productTable1> tbody > tr").remove();
             		 });
      		        $.each(responseJson, function(index, product) { 
      		        	var ngayKG = new Date(product.ngayKG); 
      		            $("<tr>").appendTo($table)                     
      		             .append($("<td>").text(product.maDangKi)) 
      		              .append($("<td>").text(product.maKhoaHoc))
 		                .append($("<td>").text(product.maLop))
 		                .append($("<td>").text(product.tenLop))
 		                .append($("<td>").text(product.thoiGian))
 		                .append($("<td>").text(ngayKG.getDate() + "/" + (ngayKG.getMonth() + 1) + "/" + ngayKG.getFullYear()))
 		                
 		                .append($("<td>").text(product.tenDangKi))
 		                .append($("<td>").text(product.sDT))
 		                .append($("<td>").text(product.ghiChu))    
   		                .append($("<td>")
   		                		.append($("<a>")
   		                				.append($("<i>").addClass("fa fa-pencil edit"))
   		                			   )
   		                				.click(function(){
   		                		           	 $.post("act_DanKiOnline",{action: '3',maDangKi : product.maDangKi}, 
   		                		           		function(responseJson) {   
   		                		           	$("#madangki1").val(responseJson.maDangKi);
   		                		         $("#makhoahoc1").val(responseJson.maKhoaHoc);
             		     		        	$("#malop1").val(responseJson.maLop);
             		     		        	$("#tenlop1").val(responseJson.tenLop);
             		     		        	$("#thoigian1").val(responseJson.thoiGian);
             		     		        	var ngayKG2 = new Date(responseJson.ngayKG); 
             		     		        	if(ngayKG2.getDate()<10 && (ngayKG2.getMonth()+1)<10){
	                		     		        	$("#ngaykg1").val(ngayKG2.getFullYear()+ "-0" +(ngayKG2.getMonth()+1)+ "-0" +ngayKG2.getDate());
             		     		        	}
             		     		        	else if(ngayKG2.getDate()<10 && (ngayKG2.getMonth()+1)>=10){ 	
	                		     		        	$("#ngaykg1").val(ngayKG2.getFullYear()+ "-" +(ngayKG2.getMonth()+1)+ "-0" +ngayKG2.getDate());
             		     		        	}
             		     		        	else if((ngayKG2.getMonth()+1)<10 && ngayKG2.getDate()>=10){
             		     		        		$("#ngaykg1").val(ngayKG2.getFullYear()+ "-0" +(ngayKG2.getMonth()+1)+ "-" +ngayKG2.getDate());
             		     		        	}
             		     		        	else{
	                		     		        	$("#ngaykg1").val(ngayKG2.getFullYear()+ "-" +(ngayKG2.getMonth()+1)+ "-" +ngayKG2.getDate());
             		     		        	}
             		     		        	
             		     		        	
             		     		        	$("#tendangki1").val(responseJson.tenDangKi);
             		     		        	$("#sdt1").val(responseJson.sDT);
             		     		        	$("#ghichu1").val(responseJson.ghiChu);
   		                		     		        	
   		                		     		 }
   		                		           	 );
   		                		           	 event.preventDefault();
    		                					$("#myModalInsertClass2").show();

   		                				})
   		                )
   		                .append($("<td>")
   		                		.append($("<a>")
   		                				.append($("<i>").addClass("fa fa-trash-o"))
   		                				)
   		                				.click(function(){
   		                					var retVal = confirm("Do you really want to delete this?");          	
	 		           	                    if( retVal == true ){
	 		           	                    $.post("act_DangKiOnline",{action: '4',maDangKi : product.maDangKi},
	   		                						function(responseJson) {  
		   		                						if (responseJson.check == "fail") {
			 		               		                  	alert("Deleting failed!");
			 		               		                    return;
		 		               		       				 }
	   		                							reload2();
		                		     		    	}
		                		           	 	);
		                		           	 	event.preventDefault();
	 		           	                       return true;
	 		           	                    }
	 		           	                    else{
	 		           	                       return false;
	 		           	                    }	
     		                				
     		                				})
   		                		)
      		                		
      		        });
      		    });
        	 }
        	 
        	 $('#register').click(function(){
        		 
         		var authorityName=$('#contentGrName').val();
         		
            	 $.post("act_DangKiOnline",{action: '1',tenDangKi : $('#tendk').val(),sDT : $('#sdt').val(),maKhoaHoc:$('#makhoahoc').val(),maLop : $('#malop').val()
            		,tenLop : $('#tenlop').val(),thoiGian : $('#thoigian').val(),ngayKG : $('#ngaykg').val()
            		,ghiChu : $('#ghichu').val() }, function(responseJson) 
            		{
            			alert("Đăng kí thành công !")
            		 //xóa table cũ đi
            		 $.each(responseJson, function(index, product) { 
            			
            			$("#productTable1> tbody > tr").remove();
            		 });
            	 	//Load lại toàn bộ dữ liệu mới sau khi insert
            		 $.each(responseJson, function(index, product) {
            			var ngayKG = new Date(product.ngayKG); 
      		        	$("#productTable1 > tbody").append(
      		        	$("<tr>")                    
    		                .append($("<td>").text(product.maDangKi))    
    		                 .append($("<td>").text(product.maKhoaHoc))
    		                .append($("<td>").text(product.maLop))
    		                .append($("<td>").text(product.tenLop)) 
    		                .append($("<td>").text(product.thoiGian)) 
    		               	.append($("<td>").text(ngayKG.getDate() + "/" + (ngayKG.getMonth() + 1) + "/" + ngayKG.getFullYear()))
    		                .append($("<td>").text(product.tenDangKi)) 
    		                .append($("<td>").text(product.sDT)) 
    		                .append($("<td>").text(product.ghiChu)) 
 		               		 .append($("<td>")
 		                		.append($("<a>")
 		                				.append($("<i>").addClass("fa fa-pencil edit"))
 		                			   )
 		                				.click(function(){
 		                		           	 $.post("act_DangKiOnline",{action: '3',maDangKi : product.maDangKi}, 
 		                		           		function(responseJson) {  
 		                		           				$("#madangki").val(responseJson.maDangKi);
 		                		           				$("#makhoahoc").val(responseJson.maKhoaHoc);
 		                		     		        	$("#malop").val(responseJson.maLop);
 		                		     		        	$("#tenlop").val(responseJson.tenLop);
 		                		     		        	$("#thoigian").val(responseJson.thoiGian);
 		                		     		        	var ngayKG2 = new Date(responseJson.ngayKG); 
 		                 		     		        	if(ngayKG2.getDate()<10 && (ngayKG2.getMonth()+1)<10){
 		    	                		     		        	$("#ngaykg").val(ngayKG2.getFullYear()+ "-0" +(ngayKG2.getMonth()+1)+ "-0" +ngayKG2.getDate());
 		                 		     		        	}
 		                 		     		        	else if(ngayKG2.getDate()<10 && (ngayKG2.getMonth()+1)>=10){ 	
 		    	                		     		        	$("#ngaykg").val(ngayKG2.getFullYear()+ "-" +(ngayKG2.getMonth()+1)+ "-0" +ngayKG2.getDate());
 		                 		     		        	}
 		                 		     		        	else if((ngayKG2.getMonth()+1)<10 && ngayKG2.getDate()>=10){
 		                 		     		        		$("#ngaykg").val(ngayKG2.getFullYear()+ "-0" +(ngayKG2.getMonth()+1)+ "-" +ngayKG2.getDate());
 		                 		     		        	}
 		                 		     		        	else{
 		    	                		     		        	$("#ngaykg").val(ngayKG2.getFullYear()+ "-" +(ngayKG2.getMonth()+1)+ "-" +ngayKG2.getDate());
 		                 		     		        	}
 		                		     		        	$("#tenDangKi").val(responseJson.tenDangKi);
 		                		     		        	$("#sdt").val(responseJson.sDT);
 		                		     		        	$("#ghichu").val(responseJson.ghiChu);
 		                		     		        	
 		                		     		        	
 		                		     		    }
 		                		           	 );
 		                		           	 event.preventDefault();
 		                					$("#myModalInsertClass2").show();

 		                				})
 		               		 )
 		                	.append($("<td>")
 		                		.append($("<a>")
 		                				.append($("<i>").addClass("fa fa-trash-o"))
 		                				)
 		                				.click(function(){
 		                					var retVal = confirm("Do you really want to delete this?");          	
 	 		           	                    if( retVal == true ){
 	 		           	                    $.post("act_DangKiOnline",{action: '4',maDangKi : product.maDangKi},
 	   		                						function(responseJson) {  
 		   		                						if (responseJson.check == "fail") {
 			 		               		                  	alert("Deleting failed!");
 			 		               		                    return;
 		 		               		       				 }
 	   		                							reload2();
 		                		     		    	}
 		                		           	 	);
 		                		           	 	event.preventDefault();
 	 		           	                       return true;
 	 		           	                    }
 	 		           	                    else{
 	 		           	                       return false;
 	 		           	                    }	
 		                				})
 		                		)
    		                );
      		        });
      		    });
            	 event.preventDefault(); // Important! Prevents submitting the form
         		
             });  
        	
      
        });
        
       </script>
    <!--===============================================-->
    <style>
    #imgBanner {
  background-image: url("img/3.jpg");
  }
  
    table {
            width: 99%;
            height: auto;
            margin: 5px;
            border-collapse: collapse;
           
     }
   
     
     #abc {
width:100%;
height:100%;
top:0;
left:0;

position:fixed;
overflow:auto
}

div#popupContact {
position:absolute;
left:45%;
top:17%;
margin-left:-202px;
font-family:'Raleway',sans-serif
}
#abc form {
max-width:500px;
min-width:500px;
padding:10px 50px;
border:2px solid gray;
border-radius:10px;
font-family:raleway;
background-color:#fff
}
#abc p {
margin-top:30px
}
#abc h2 {
background-color:#0a984e;
padding:20px 35px;
margin:-10px -50px;
text-align:center;
border-radius:10px 10px 0 0
}
#abc hr {
margin:10px -50px;
border:0;
border-top:1px solid #ccc
}
#abc  input[type=text] {
width:100%;
padding:7px;
margin-top:5px;
border:1px solid #ccc;
padding-left:20px;

font-size:20px;
font-family:raleway
}
#abc  input[type=date] {
width:100%;
padding:5px;
margin-top:5px;
border:1px solid #ccc;
padding-left:20px;

font-size:20px;
font-family:raleway
}

#name {
background-image:url(../images/name.jpg);
background-repeat:no-repeat;
background-position:5px 7px
}
#email {
background-image:url(../images/email.png);
background-repeat:no-repeat;
background-position:5px 7px
}
#abc textarea {
background-image:url(../images/msg.png);
background-repeat:no-repeat;
background-position:5px 7px;
width:82%;
height:95px;
padding:10px;
resize:none;
margin-top:30px;
border:1px solid #ccc;
padding-left:40px;
font-size:16px;
font-family:raleway;
margin-bottom:30px
}
#submit {
text-decoration:none;
width:100%;
text-align:center;
display:block;
background-color:#FFBC00;
color:#fff;
border:1px solid #FFCB00;
padding:10px 0;
font-size:20px;
cursor:pointer;
border-radius:5px
}
#abc span {
color:red;

}

#abc button {
width:25%;
height:45px;
border-radius:3px;
background-color:#0a984e;
color:#fff;
font-family:'Raleway',sans-serif;
font-size:18px;
cursor:pointer
     
       
    </style>
  </head>
  <body>

    <!-- SCROLL TOP BUTTON -->
    <a class="scrollToTop" href="#"></a>
    <!-- END SCROLL TOP BUTTON -->

    <!--=========== BEGIN HEADER SECTION ================-->
    <header id="header">
      <!-- BEGIN MENU -->
      <div class="menu_area">
        <nav class="navbar navbar-default navbar-fixed-top" role="navigation">  <div class="container">
            <div class="navbar-header">
              <!-- FOR MOBILE VIEW COLLAPSED BUTTON -->
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <!-- LOGO -->
              <!-- TEXT BASED LOGO -->
              <a class="navbar-brand" href="index.html">TTTH <span>ANGLE</span></a>              
              <!-- IMG BASED LOGO  -->
               <!-- <a class="navbar-brand" href="index.html"><img src="img/logo.png" alt="logo"></a>  -->            
                     
            </div>
            <div id="navbar" class="navbar-collapse collapse">
              <ul id="top-menu" class="nav navbar-nav navbar-right main-nav">
              <li class="nav-item active">
                <a class="nav-link" href="index.jsp"><i class="fa fa-home" aria-hidden="true" style="font-size:22px"></i></a>
                </li>
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Tin học văn phòng<span class="caret"></span></a>
                  <ul class="dropdown-menu" role="menu">
                    <li><a href="404.html"><i class="fa fa-arrow-circle-right" aria-hidden="true" style="font-size:20px"></i>  Tin học cơ bản</a></li>
                    <li><a href="#"><i class="fa fa-arrow-circle-right" aria-hidden="true" style="font-size:20px"></i>   Quản lý Access</a></li>
                    <li><a href="#"><i class="fa fa-arrow-circle-right" aria-hidden="true" style="font-size:20px"></i>   Excel cho kế toán</a></li>  
                    <li><a href="#"><i class="fa fa-arrow-circle-right" aria-hidden="true" style="font-size:20px"></i>   Lập trình trên Excel</a></li>   
                                    
                  </ul>
                </li> 
               <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Lịch khai giảng<span class="caret"></span></a>
                  <ul class="dropdown-menu" role="menu">
                     <li><a href="404.html"><i class="fa fa-arrow-circle-right" aria-hidden="true" style="font-size:20px"></i>  Tin học cơ bản</a></li>
                    <li><a href="#"><i class="fa fa-arrow-circle-right" aria-hidden="true" style="font-size:20px"></i>   Quản lý Access</a></li>
                    <li><a href="#"><i class="fa fa-arrow-circle-right" aria-hidden="true" style="font-size:20px"></i>   Excel cho kế toán</a></li>  
                    <li><a href="#"><i class="fa fa-arrow-circle-right" aria-hidden="true" style="font-size:20px"></i>   Lập trình trên Excel</a></li>   
                  </ul>
                </li> 
                <li><a href="events-archive.html">Góc học viên</a></li>
               
              </ul>           
            </div><!--/.nav-collapse -->
          </div>     
        </nav>  
      </div>
      <!-- END MENU -->    
    </header>
 
   

    <!--=========== BEGIN COURSE BANNER SECTION ================-->
    <section id="imgBanner">
    </section>
    <!--=========== END COURSE BANNER SECTION ================-->
  
         <div class="container">
       <!-- Our courses titile -->
            <div class="title_area">
              <h2 class="title_two" style=" color: #3030d3; margin-top:30px">LỊCH KHAI GIẢNG</h2>
               <i class="fa fa-2x fa-angle-down"></i>
            </div>
        </div>
        <div id="myModalRegister"> 
		<div id="abc">
			<!-- Popup Div Starts Here -->
			<div id="popupContact">
				<!-- Contact Us Form -->
				<form  id="form" action="#" method="post" name="form">
					<h2>Thông tin đăng kí</h2>
					<hr>
					<lablel>Mã khóa học:</lablel>
					<input id="makhoahoc" name="maKhoaHoc"  type="text" disabled>
					<lablel>Mã lớp:</lablel>
						<input id="malop" name="maLop"  type="text" disabled>
						<lablel>Tên lớp:</lablel>
						<input id="tenlop" name="tenLop" placeholder="" type="text" disabled>
						<lablel>Thời gian:</lablel>
						<input id="thoigian" name="thoiGian" placeholder="" type="text" disabled>
						<lablel>Ngày khai giảng:</lablel>
						<input id="ngaykg" name="ngayKG" placeholder="" type="date" disabled>
						<lablel>Họ tên:</lablel>
						<input id="tendk" name="tenDangKi" placeholder="Họ tên" type="text" required>
						<span id="name_error_message"> </span>
						<lablel>Số điện thoại:</lablel>
						
						<input id="sdt" name="sDT" placeholder=" Số điện thoại" type="text" required>
						<span id="phone_error_message"> </span>
						<lablel>Ghi chú:</lablel>
						<input id="ghichu" name="ghiChu" placeholder="Ghi chú" type="text" required>
						
						<div class="modal-footer">
						<button type="submit" id="register" class="btn btn-default btn-sm"> Submit</button>
						<button type="button" class="btn btn-default" id="closebtn_form1" style="width:100px">
						<i class="fa fa-close" aria-hidden="true" style="font-size: 20px; color: red;"></i> Cancle
						</button>
						</div>
				</form>
			</div>
			<script> 
                   //btn cancel của edit form -->
                   document.getElementById("closebtn_form1").onclick = function abc3() {
                   $("#myModalRegister").hide(); 
                   };                
                   document.getElementById("register").onclick = function abc3() {
                   $("#myModalRegister").hide(); 
                   }; 
            </script>
			
		</div>
		</div>
      
<!--         <div id="myModalInsertClass"> -->
<!-- 		<div id="abc"> -->
<!-- 			<!-- Popup Div Starts Here --> 
<!-- 			<div id="popupContact"> -->
<!-- 				Contact Us Form -->
<!-- 				<form  id="form" action="" method="post"> -->
<!-- 					<h2>Thông tin đăng kí</h2> -->
<!-- 					<hr> -->
<!-- 						<input id="maLop" name="maLop"  type="text" > -->
<!-- 						<input id="tenlop" name="tenLop" placeholder="" type="text"> -->
<!-- 						<input id="tendk" name="tenDangKi" placeholder="Họ tên" type="text"> -->
<!-- 						<input id="sdt" name="sDT" placeholder=" Số điện thoại" type="text"> -->
<!-- 						<input id="ghichu" name="ghiChu" placeholder="Ghi chú" type="text"> -->
<!-- 						<div class="modal-footer"> -->
<!-- 						<button type="submit"  class="btn btn-default btn-sm" class="animated"> Login</button > -->
<!-- 						<button type="submit" class="btn btn-default"  style="width:100px" class="animated md-close"> -->
<!-- 						<i class="fa fa-close" aria-hidden="true" style="font-size: 20px; color: red"></i> Cancel -->
<!-- 						</button> -->
<!-- 						</div> -->
<!-- 				</form> -->
<!-- 			</div> -->
			
<!-- 		</div> -->
<!-- 	</div> -->
       <div class="container">
      
     <div id="inner" style="border: 1px solid gray; background-color: #007f3f; color: white;">
         <div class="row">
            
                    <script> 
                        $(document).ready(function(){ 
                        $("#b1").click(function(){
                       $("#hide1").slideToggle("slow");
                    }); 
                    }); 
                   </script> 
            	<div class="col-sm-11">
                
                <h3 style="margin-left:20px">TIN HỌC CƠ BẢN   </h3>
                </div>
             
             <div class="col-sm-1"><div id="b1" >
                 <i class="fa fa-chevron-down" aria-hidden="true" style="font-size:28px" ></i></div>
             </div>
     </div>
         <div id="hide1" style="background-color: white;color:black;">
                <div id="inner1" style="background-color: #efeff7;padding: 5px;">
                <b>KHÓA HỌC TIN HỌC CƠ BẢN- 60 Tiết</b><br>
               <b> Học phí: 1.999.000</b><br>
                Khóa học này dành cho người mới bắt đầu
                   <br></br>
                    <div class="table-responsive" style="z-index: 0;">
							<table  id="productTable" class="table table-bordered table-hover"; style="background-color: white;color:black;">
								<thead>
									<tr class="text-center" style=" background-color: #bcb8b8;">
									<th class="text-center">Mã khóa học</th>
										<th class="text-center">Mã lớp</th>
										<th class="text-center">Tên lớp</th>
										<th class="text-center">Thời gian</th>
										<th class="text-center">Ngày khai giảng</th>
										<th class="text-center">Số tiết</th>
										<th class="text-center">Học phí</th>
										
										<th class="text-center">Đăng kí</th>
									</tr>
								</thead>
								<tbody id="row" class="text-center">
								</tbody>

							</table>
						</div>
                    </div>
                    </div>
         </div>
     <br>
    </div>
    
    

     <br>
   
    <!--=========== BEGIN COURSE BANNER SECTION ================-->
   
    <!--=========== END COURSE BANNER SECTION ================-->
    
	 
	<!--=========== PHIẾU ĐĂNG KÍ ================-->
	
			
		
	<!--=========== KẾT THÚC PHIẾU ĐĂNG KÍ ================-->
 



	<!-- News -->
   
	<div id="news">
		<div class="container marketing text-center lead">
			
			<hr>
			<div class="new">
				<h3>Hãy nhanh tay đăng ký nào !</h3>
				<p>Những ưu đãi bất ngờ đang chào đón các bạn</p>

				<div id="clockdiv">
					<div>
						<span class="days"></span>
						<div class="smalltext">Days</div>
					</div>
					<div>
						<span class="hours"></span>
						<div class="smalltext">Hours</div>
					</div>
					<div>
						<span class="minutes"></span>
						<div class="smalltext">Minutes</div>
					</div>
					<div>
						<span class="seconds"></span>
						<div class="smalltext">Seconds</div>
					</div>
				</div>
				<script src="js/countdown-clock.js"></script>
			</div>
		</div>
	</div>
    <br>
    
    <hr>
    <br>

    
    <!--=========== BEGIN FOOTER SECTION ================-->
    <footer id="footer">
      <!-- Start footer top area -->
      <div class="footer_top">
        <div class="container">
          <div class="row">
            <div class="col-ld-6 col-md-6 col-sm-6">
              <div class="single_footer_widget">
                <h3>TRUNG TÂM TIN HỌC ANGLE</h3>
                <p> <i class="fa fa-map-marker" aria-hidden="true"></i>  Địa chỉ: 134 Lê Văn Việt, Hiệp Phú, Quận 9,TPHCM</p>
                <p><i  class="fa fa-phone-square" aria-hidden="true"></i>  Số điện thoại: 028 434 2323</p>
						<p ><i class="fa fa-envelope" aria-hidden="true"></i>  Email: ttthangle@edu.vn</p>
              </div>
            </div>
           
           
            <div class="col-ld-6  col-md-6 col-sm-6">
              <div class="single_footer_widget">
                <h3>Liên hệ</h3>
                <ul class="footer_social">
                  <p class="lead social-icons">
						<a href=""> <i class="fa fa-facebook-square"></i></a>
						<a href="" class="tw"> <i class="fa fa-twitter-square"></i></a>
						<a href="" class="rs"> <i class="fa fa-rss-square"></i></a>
						<a href="" class="yt"> <i class="fa fa-youtube-square"></i></a>
						<a href="" class="li"> <i class="fa fa-linkedin-square"></i></a>
						<a href="" class="gp"> <i class="fa fa-google-plus-square"></i></a>
					</p>
					
                </ul>
                 <p >&copy; 2017 Trung Tâm Tin Học Angle All Rights Reserved</p>
              </div>
            </div>
          </div>
        </div>
      </div>
     
    </footer>
    <!--=========== END FOOTER SECTION ================--> 
    <!-- Javascript Files
    ================================================== -->

    <!-- initialize jQuery Library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <!-- For smooth animatin  -->
    <script src="js/wow.min.js"></script>  
    <!-- Bootstrap js -->
    <script src="js/bootstrap.min.js"></script>
    <!-- slick slider -->
    <script src="js/slick.min.js"></script>
    <!-- superslides slider -->
    <script src="js/jquery.easing.1.3.js"></script>
    <script src="js/jquery.animate-enhanced.min.js"></script>
    <script src="js/jquery.superslides.min.js" type="text/javascript" charset="utf-8"></script>   
    <!-- for circle counter -->
    <script src='https://cdn.rawgit.com/pguso/jquery-plugin-circliful/master/js/jquery.circliful.min.js'></script>
    <!-- Gallery slider -->
    <script type="text/javascript" language="javascript" src="js/jquery.tosrus.min.all.js"></script>   
   
    <!-- Custom js-->
    <script src="js/custom.js"></script>
  <!--=============================================== 
    Template Design By WpFreeware Team.
    Author URI : http://www.wpfreeware.com/
  ====================================================-->

  </body>
</html>