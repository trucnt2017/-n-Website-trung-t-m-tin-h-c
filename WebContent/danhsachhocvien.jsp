<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Danh Sách Nhân Viên</title>
<!-- BOOTSTRAP STYLES-->
<link href="assets/css/bootstrap.css" rel="stylesheet" />
<!-- FONTAWESOME STYLES-->
<link href="assets/css/font-awesome.css" rel="stylesheet" />
<!-- CUSTOM STYLES-->
<link href="assets/css/custom.css" rel="stylesheet" />
<!-- GOOGLE FONTS-->
<link href="https://fonts.googleapis.com/css?family=Arimo"
	rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Roboto"
		rel="stylesheet">
		<link rel="stylesheet"
			href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
			<script src="js/glm-ajax.js"></script>
			<script src="assets/js/jquery-3.2.1.min.js"></script>
			<script src="assets/js/jquery.validate.min.js"></script>
			<script src="assets/js/validate_dsnhanvien.js"></script>
			<link href="css/elementdk.css" rel="stylesheet" />
			
			<!--  Hiện thị dữ liệu lên form  -->

		<script type="text/javascript">
        $(document).ready(function(){
        	$("#myModalEdit").hide(); 
        	$("#myModalAdd").hide(); 
        	 $.get("act_HocVien", function(responseJson) {   
        		//  act_HocVien là một servlet       
        	 	
 		        var $table = document.getElementById("row");
 		      
 		        $.each(responseJson, function(index, product) {
 		        	 var ngaySinh = new Date(product.ngaySinh); 
 		            $("<tr>").appendTo($table)                     
 		                .append($("<td>").text(product.maHocVien))       
 		                .append($("<td>").text(product.tenHocVien))
 		                .append($("<td>").text(ngaySinh.getDate()+ "/" + (ngaySinh.getMonth() + 1) + "/" + ngaySinh.getFullYear()))  
 		                .append($("<td>").text(product.gioiTinh))   
 		                .append($("<td>").text(product.sDT))  
 		                .append($("<td>").text(product.diaChi)) 
 		                .append($("<td>")
 		               	.append($("<a>")
 		                			.append($("<i>").addClass("fa fa-pencil edit"))
 		                			   )
 		                				.click(function(){
 		                		           	 $.post("act_HocVien",{action: '3',maHocVien : product.maHocVien}, 
 		                		           		function(responseJson) { 
 		                		           			var ngaySinh2 = new Date(responseJson.ngaySinh);
 		                		     		        	$("#mahocvien").val(responseJson.maHocVien);
 		                		     		        	$("#name").val(responseJson.tenHocVien);
 		                		     		        	$("#gioitinh").val(responseJson.gioiTinh);
 		                		     		        	//$("#ngaysinh").val(responseJson.ngaySinh);
 		                		     		        	if(ngaySinh2.getDate()<10 && (ngaySinh2.getMonth()+1)<10){
 	 		                		     		        	$("#ngaysinh").val(ngaySinh2.getFullYear()+ "-0" +(ngaySinh2.getMonth()+1)+ "-0" +ngaySinh2.getDate());
 		                		     		        	}
 		                		     		        	else if(ngaySinh2.getDate()<10 && (ngaySinh2.getMonth()+1)>=10){ 	
 	 		                		     		        	$("#ngaysinh").val(ngaySinh2.getFullYear()+ "-" +(ngaySinh2.getMonth()+1)+ "-0" +ngaySinh2.getDate());
 		                		     		        	}
 		                		     		        	else if((ngaySinh2.getMonth()+1)<10 && ngaySinh2.getDate()>=10){
 		                		     		        		$("#ngaysinh").val(ngaySinh2.getFullYear()+ "-0" +(ngaySinh2.getMonth()+1)+ "-" +ngaySinh2.getDate());
 		                		     		        	}
 		                		     		        	else{
 	 		                		     		        	$("#ngaysinh").val(ngaySinh2.getFullYear()+ "-" +(ngaySinh2.getMonth()+1)+ "-" +ngaySinh2.getDate());
 		                		     		        	}
 		                		     		        	$("#phone").val(responseJson.sDT);
 		                		     		        	$("#diachi").val(responseJson.diaChi);
 		                		     		        
 		                		     		    }
 		                		           	 );
 		                		           	 event.preventDefault();
 		                		           	 
  		                					$("#myModalEdit").show();

 		                				})
 		                )
 		                .append($("<td>")
 		                		.append($("<a>")
 		                				.append($("<i>").addClass("fa fa-trash remove"))
 		                				)
 		                				.click(function(){
 		                					var retVal = confirm("Do you really want to delete this?");          	
	 		           	                    if( retVal == true ){
	 		           	                    $.post("act_HocVien",{action: '4',maHocVien : product.maHocVien}, 
	   		                						function(responseJson) {  
		   		                						if (responseJson.check == "fail") {
			 		               		                  	alert("Deleting failed!");
			 		               		                    return;
		 		               		       				 }
	   		                							reload();
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
 		                		// Create HTML <td> element, set its text content with price of currently iterated product and append it to the <tr>.
 		        });
 		    });
        	
        
       //d lai du lieu
        function reload(){
        		 $.get("act_HocVien", function(responseJson) {          // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response JSON...
      		        //var $table = $("<table>").appendTo($("#somediv")); // Create HTML <table> element and append it to HTML DOM element with ID "somediv".
      		        var $table = document.getElementById("row");
      		      	$.each(responseJson, function(index, product) { 
             			$("#productTable > tbody > tr").remove();
             		 });
      		        $.each(responseJson, function(index, product) { 
      		        	 	var ngaySinh = new Date(product.ngaySinh); // Iterate over the JSON array.
      		            	$("<tr>").appendTo($table)                     // Create HTML <tr> element, set its text content with currently iterated item and append it to the <table>.
      		                .append($("<td>").text(product.maHocVien))        // Create HTML <td> element, set its text content with id of currently iterated product and append it to the <tr>.
      		                .append($("<td>").text(product.tenHocVien))      // Create HTML <td> element, set its text content with name of currently iterated product and append it to the <tr>.
      		              	.append($("<td>").text(ngaySinh.getDate()+ "/" + (ngaySinh.getMonth() + 1) + "/" + ngaySinh.getFullYear())) 
      		              	.append($("<td>").text(product.gioiTinh))
      		              	.append($("<td>").text(product.diaChi))
      		              	 .append($("<td>").text(product.sDT))  
      		                .append($("<td>")
      		                		.append($("<a>")
      		                				.append($("<i>").addClass("fa fa-pencil edit"))
      		                			   )
      		                				.click(function(){
      		                		           	 $.post("act_HocVien",{action: '3',maHocVien : product.maHocVien}, function(responseJson) {   
      		                		     		        	$("#mahocvien").val(responseJson.maHocVien);
      		                		     		        	$("#name").val(responseJson.tenHocVien);
      		                		     		        	var ngaySinh2 = new Date(responseJson.ngaySinh);
      		                		     		        	if(ngaySinh2.getDate()<10 && (ngaySinh2.getMonth()+1)<10){
     	 		                		     		        	$("#ngaysinh").val(ngaySinh2.getFullYear()+ "-0" +(ngaySinh2.getMonth()+1)+ "-0" +ngaySinh2.getDate());
     		                		     		        	}
     		                		     		        	else if(ngaySinh2.getDate()<10 && (ngaySinh2.getMonth()+1)>=10){ 	
     	 		                		     		        	$("#ngaysinh").val(ngaySinh2.getFullYear()+ "-" +(ngaySinh2.getMonth()+1)+ "-0" +ngaySinh2.getDate());
     		                		     		        	}
     		                		     		        	else if((ngaySinh2.getMonth()+1)<10 && ngaySinh2.getDate()>=10){
     		                		     		        		$("#ngaysinh").val(ngaySinh2.getFullYear()+ "-0" +(ngaySinh2.getMonth()+1)+ "-" +ngaySinh2.getDate());
     		                		     		        	}
     		                		     		        	else{
     	 		                		     		        	$("#ngaysinh").val(ngaySinh2.getFullYear()+ "-" +(ngaySinh2.getMonth()+1)+ "-" +ngaySinh2.getDate());
     		                		     		        	}
      		                		     		        	
      		                		     		        	$("#gioitinh").val(responseJson.gioiTinh);
      		                		     		        	$("#phone").val(responseJson.sDT);
      		                		     		        	$("#diachi").val(responseJson.diaChi);
      		                		     		    }
      		                		           	 );
      		                		           	 event.preventDefault();
       		                					$("#myModalEdit").show();

      		                				})
      		                )
      		                .append($("<td>")
      		                		.append($("<a>")
      		                				.append($("<i>").addClass("fa fa-trash remove"))
      		                				)
      		                				.click(function(){
      		                					var retVal = confirm("Do you really want to delete this?");          	
    	 		           	                    if( retVal == true ){
    	 		           	                    $.post("act_HocVien",{action: '4',maHocVien : product.maHocVien}, 
    	   		                						function(responseJson) {  
    		   		                						if (responseJson.check == "fail") {
    			 		               		                  	alert("Deleting failed!");
    			 		               		                    return;
    		 		               		       				 }
    	   		                							reload();
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
      		                		// Create HTML <td> element, set its text content with price of currently iterated product and append it to the <tr>.
      		        });
      		    });
       }
       // add hoc vien
      $("#addadd").click(function(){
         						var tenHocVien=$('#name1').val();
                        		var ngaySinh=$('#ngaysinh1').val();
                        		var gioiTinh=$('#gioitinh1').val();
                        		var sDT=$('#phone1').val();
                        		var diaChi=$('#diachi1').val();
                        		
                           	 $.post("act_HocVien",{action: '1',tenHocVien : $('#name1').val(),ngaySinh : $('#ngaysinh1').val(),gioiTinh : $('#gioitinh1').val(),sDT : $('#phone1').val(),diaChi : $('#diachi1').val()}, function(responseJson) {          // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response JSON...
                           		 //xóa table cũ đi
                           		 $.each(responseJson, function(index, product) { 
                           			$("#productTable > tbody > tr").remove();
                           		 });
                           	 //Load lại toàn bộ dữ liệu mới sau khi insert
                           		 $.each(responseJson, function(index, product) { 
                           			 var ngaySinh = new Date(product.ngaySinh);
                     		        	$("#productTable > tbody").append(
                     		        	$("<tr>")
                     		        	.append($("<td>").text(product.maHocVien))  
                   		                .append($("<td>").text(product.tenHocVien))        
                   		             	.append($("<td>").text(ngaySinh.getDate()+ "/" + (ngaySinh.getMonth() + 1) + "/" + ngaySinh.getFullYear())) 
                   		                .append($("<td>").text(product.gioiTinh))  
                   		                .append($("<td>").text(product.sDT))  
                   		                .append($("<td>").text(product.diaChi))
                   		                .append($("<td>")
                   		                		.append($("<a>")
                   		                				.append($("<i>").addClass("fa fa-pencil edit"))
                   		                			   )
                   		                				.click(function(){
                   		                					$.post("act_HocVien",{action: '3',maHocVien : product.maHocVien}, function(responseJson) {   
                	                		     		        	
                	                		     		        	$("#name1").val(responseJson.tenHocVien);
                	                		     		        	var ngaySinh2 = new Date(responseJson.ngaySinh);
              		                		     		        	if(ngaySinh2.getDate()<10 && (ngaySinh2.getMonth()+1)<10){
             	 		                		     		        	$("#ngaysinh1").val(ngaySinh2.getFullYear()+ "-0" +(ngaySinh2.getMonth()+1)+ "-0" +ngaySinh2.getDate());
             		                		     		        	}
             		                		     		        	else if(ngaySinh2.getDate()<10 && (ngaySinh2.getMonth()+1)>=10){ 	
             	 		                		     		        	$("#ngaysinh1").val(ngaySinh2.getFullYear()+ "-" +(ngaySinh2.getMonth()+1)+ "-0" +ngaySinh2.getDate());
             		                		     		        	}
             		                		     		        	else if((ngaySinh2.getMonth()+1)<10 && ngaySinh2.getDate()>=10){
             		                		     		        		$("#ngaysinh1").val(ngaySinh2.getFullYear()+ "-0" +(ngaySinh2.getMonth()+1)+ "-" +ngaySinh2.getDate());
             		                		     		        	}
             		                		     		        	else{
             	 		                		     		        	$("#ngaysinh1").val(ngaySinh2.getFullYear()+ "-" +(ngaySinh2.getMonth()+1)+ "-" +ngaySinh2.getDate());
             		                		     		        	}
                	                		     		        	$("#gioitinh1").val(responseJson.gioiTinh);
                	                		     		        	$("#phone1").val(responseJson.sDT);
                	                		     		        	$("#diachi1").val(responseJson.diaChi);
                	                		     		        	
                	                		     		    	}
                	                		           	 	);
                	                		           	 	event.preventDefault();
                	                						$("myModalEdit").show();
                   		                				})
                   		                )
                   		                .append($("<td>")
                   		                		.append($("<a>")
                   		                				.append($("<i>").addClass("fa fa-trash remove"))
                   		                				)
                   		                				.click(function(){
                   		                					var retVal = confirm("Do you really want to delete this?");          	
                	 		           	                    if( retVal == true ){
                	 		           	                    $.post("act_HocVien",{action: '4',maHocVien : product.maHocVien}, 
                	   		                						function(responseJson) {  
                		   		                						if (responseJson.check == "fail") {
                			 		               		                  	alert("Deleting failed!");
                			 		               		                    return;
                		 		               		       				 }
                	   		                							reload();
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
                           	 event.preventDefault();  // Important! Prevents submitting the form
        		
          });  
        
        // edit hoc vien
        $('#edit1').click(function(){
           	 $.post("act_HocVien",{action: '2',maHocVien : $('#mahocvien').val(),tenHocVien : $('#name').val(),ngaySinh : $('#ngaysinh').val(),gioiTinh : $('#gioitinh').val(),sDT : $('#phone').val(),diaChi : $('#diachi').val()},
           	 function(responseJson) {          // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response JSON...
           		 //xóa table cũ đi
           		 $.each(responseJson, function(index, product) { 
           			$("#productTable > tbody > tr").remove();
           		 });
           	 //Load lại toàn bộ dữ liệu mới sau khi insert
           		 $.each(responseJson, function(index, product) { 
           			 var ngaySinh = new Date(product.ngaySinh);
     		        	$("#productTable > tbody").append(
     		        	$("<tr>")                  
   		                .append($("<td>").text(product.maHocVien))      
   		                .append($("<td>").text(product.tenHocVien))    
   		            	 .append($("<td>").text(ngaySinh.getDate()+ "/" + (ngaySinh.getMonth() + 1) + "/" + ngaySinh.getFullYear())) 
   		            	.append($("<td>").text(product.gioiTinh))
   		            	.append($("<td>").text(product.sDT))
   		            	.append($("<td>").text(product.diaChi))
   		                .append($("<td>")
   		                		.append($("<a>")
   		                				.append($("<i>").addClass("fa fa-pencil edit"))
   		                			   )
   		                				.click(function(){
   		                					$.post("act_HocVien",{action: '2',maHocVien : product.maHocVien}, function(responseJson) {   
	                		     		        	$("#mahocvien").val(responseJson.maHocVien);
	                		     		        	$("#name").val(responseJson.tenHocVien);
	                		     		        	
	                		     		        	var ngaySinh2 = new Date(responseJson.ngaySinh);
		                		     		        	if(ngaySinh2.getDate()<10 && (ngaySinh2.getMonth()+1)<10){
	 		                		     		        	$("#ngaysinh").val(ngaySinh2.getFullYear()+ "-0" +(ngaySinh2.getMonth()+1)+ "-0" +ngaySinh2.getDate());
		                		     		        	}
		                		     		        	else if(ngaySinh2.getDate()<10 && (ngaySinh2.getMonth()+1)>=10){ 	
	 		                		     		        	$("#ngaysinh").val(ngaySinh2.getFullYear()+ "-" +(ngaySinh2.getMonth()+1)+ "-0" +ngaySinh2.getDate());
		                		     		        	}
		                		     		        	else if((ngaySinh2.getMonth()+1)<10 && ngaySinh2.getDate()>=10){
		                		     		        		$("#ngaysinh").val(ngaySinh2.getFullYear()+ "-0" +(ngaySinh2.getMonth()+1)+ "-" +ngaySinh2.getDate());
		                		     		        	}
		                		     		        	else{
	 		                		     		        	$("#ngaysinh").val(ngaySinh2.getFullYear()+ "-" +(ngaySinh2.getMonth()+1)+ "-" +ngaySinh2.getDate());
		                		     		        	}
	                		     		        	$("#phone").val(responseJson.sDT);
	                		     		        	$("#diachi").val(responseJson.diaChi);
	                		     		    	}
	                		           	 	);
	                		           	 	event.preventDefault();
	                						$("#myModalEdit").show();
   		                				})
   		                )
   		                .append($("<td>")
   		                		.append($("<a>")
   		                				.append($("<i>").addClass("fa fa-trash remove"))
   		                				)
   		                				.click(function(){
   		                					var retVal = confirm("Do you really want to delete this?");          	
	 		           	                    if( retVal == true ){
	 		           	                    $.post("act_HocVien",{action: '4',maHocVien : product.maHocVien}, 
	   		                						function(responseJson) {  
		   		                						if (responseJson.check == "fail") {
			 		               		                  	alert("Deleting failed!");
			 		               		                    return;
		 		               		       				 }
	   		                							reload();
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
			<!-- kết thúc  Hiện thị dữ liệu lên form  -->
</head>
<style>
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
left:50%;
top:8%;
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
#abc label{


margin-top:20px;
font-size:20px;
font-family:raleway
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
padding:7px;
margin-top:5px;
border:1px solid #ccc;
padding-left:20px;

font-size:20px;s
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
font-weight:700
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
}


<!-- -->
h3 {
	text-align: center;
	color: black;
}

table th {
	background-color: burlywood;
	color: black;
	border: 1px solid white;
	font-size: 16px;
}

table tr, td {
	border: 1px solid black;
	font-weight: 100;
	color: black;
}

table tr:hover {
	background-color: gainsboro;
}

#hide {
	display: none;
}

#in input {
	width: 400px;
}

.red {
	color: red;
}

.div123 {
	background-image: url(background.jpg);
}
</style>

<body>

	<div id="wrapper" style="background-color: #333333">
		<div class="navbar navbar-inverse navbar-fixed-top"
			style="background-color: #333333">
			<div class="adjust-nav">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".sidebar-collapse">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#" style="color: azure"><span
						class="fa fa-user-circle-o"></span>&nbsp;Nhân Viên</a>
				</div>
				<div class="navbar-collapse collapse">
					<ul class="nav navbar-nav navbar-right">
						<li><a style="color: azure"> <i class="fa fa-bell"
								aria-hidden="true" style="font-size: 20px"> Thông báo</i></a></li>
						<li><a style="color: azure"><i class="fa fa-comments"
								aria-hidden="true" style="font-size: 20px"> Tin nhắn</i></a></li>
						<li><a href="index.jsp" style="color: azure"><i
								class="fa fa-user-circle-o" aria-hidden="true"
								style="font-size: 20px"></i>Đăng xuất</a></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- /. NAV TOP  -->
		<nav class="navbar-default navbar-side" role="navigation">
		<div class="sidebar-collapse">
			<ul class="nav" id="main-menu">
				<li class="text-center user-image-back"><img
					src="assets/img/find_user.png" class="img-responsive" /></li>

				<li><a href="danhsachhocvien.jsp"
					style="background-color: #333333; color: ghostwhite"><i
						class="fa fa-graduation-cap"></i>Quản lý học viên<span class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
						<li><a href="danhsachhocvien.jsp"
							style="background-color: #333333; color: ghostwhite"><i
								class="fa fa-book "></i>Danh sách học viên</a></li>
								
				</ul>
				</li>
				<li><a href="#"
					style="background-color: #333333; color: ghostwhite"><i
						class="fa fa-edit "></i>Đăng kí online<span class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<li><a href="DangKiOnline.jsp"
							style="background-color: #333333; color: ghostwhite"><i
								class="fa fa-book "></i>Cơ sở dữ liệu</a></li>
								<li><a href="DangKiOnline_THVP.jsp"
							style="background-color: #333333; color: ghostwhite"><i
								class="fa fa-book "></i>Tin học văn phòng </a></li>
								<li><a href="DangKiOnline.jsp"
							style="background-color: #333333; color: ghostwhite"><i
								class="fa fa-book "></i>Lập trình java </a></li>
								<li><a href="DangKiOnline.jsp"
							style="background-color: #333333; color: ghostwhite"><i
								class="fa fa-book "></i>Mạng máy tính </a></li>
				</ul>
				</li>
				<li><a href="#"
					style="background-color: #333333; color: ghostwhite"><i
						class="fa fa-edit "></i>Học viên - Lớp<span class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<li><a href="HocVien_Lop.jsp"
							style="background-color: #333333; color: ghostwhite"><i
								class="fa fa-book "></i>Học viên -lớp</a></li>
								
				</ul>
				</li>
				<li><a href="#"
					style="background-color: #333333; color: ghostwhite"><i
						class="fa fa-edit "></i>Điểm <span class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						
								<li><a href="Diem.jsp"
							style="background-color: #333333; color: ghostwhite"><i
								class="fa fa-book "></i> Điểm </a></li>
				</ul>
				</li>
			</ul>
		</div>
		</nav>
		<!-- /. NAV SIDE  -->
		<div id="page-wrapper" style="background-color: #333333">
			<div id="page-inner" style="background-image: url(body.png)">
				<div class="row">
					<div class="col-md-12">
						<div class="row">
							<div class="col-sm-3"></div>
							<div class="col-sm-3"></div>
						</div>
						<br>
							<div class="row">
								<div class="col-sm-10">
									
								</div>

								<div class="col-sm-1">
									<div class="wow bounceInUp" data-wow-delay="0.2s">
										<div class="team boxed-grey">
											<div class="form-group">
											
												<div id="add">
												<a class="md-trigger btn" data-modal="myModalAdd" id="btn_left">
													<button type="submit" class="btn btn-default"
														class="btn btn-info btn-lg" 
														 style="background: #0a984e ; color:#fff; height:45px">
														<i class="fa fa-plus" style="font-size: 15px" ></i>Thêm mới
													</button></a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div> <!-- /. ROW  --> <br>
					</div>
				</div>
				<!--  Kết thúc form sửa học viên -->
				<div class="row" id="formnoi">
					<div class="col-md-12" style="background-image: url(bg.jpg)">
						<h3>DANH SÁCH HỌC VIÊN</h3>
						<div class="table-responsive" style="z-index: 0;">
							<table class="table" id="productTable">
								<thead>
									<tr class="text-center">
										<th class="text-center">Mã học viên</th>
										<th class="text-center">Tên học viên</th>
										<th class="text-center">Ngày sinh</th>
										<th class="text-center">Giới tính</th>
										<th class="text-center">Số điện thoại</th>
										<th class="text-center">Địa chỉ</th>
										<th class="text-center"></th>
										<th class="text-center"></th>

									</tr>
								</thead>
								<tbody id="row" class="text-center">
								</tbody>

							</table>
						</div>
					</div>
				</div>
			</div>

			<!-- /. ROW  -->
		</div>
		<!-- /. PAGE INNER  -->
	</div>
	<!-- javascript xử lý cái nút close -->
	<script type="text/javascript">
            //nút close của add
                document.getElementById("btn_left").onclick = function abc2() {
                        $("#name1").val("");
                        $("#ngaysinh1").val("");
                        $("#gioitinh1").val("");
                        $("#diachi1").val("");
                        $("#phone1").val("");
                        $("#myModalAdd").show();
                    };
                document.getElementById("closebtn").onclick = function abc() {
                        $("#modal-3options").hide();
                    };
            //nút close của repair với 6 cột tương đương 6 nút edit
              document.getElementById("closebtn1").onclick = function abc3() {
                        $("#modal-4options").hide();
                    };
                document.getElementById("btn_left1").onclick = function abc4() {
                        $("#modal-4options").show();
                    };
             document.getElementById("btn_left2").onclick = function abc4() {
                        $("#modal-4options").show();
                    };
            document.getElementById("btn_left3").onclick = function abc4() {
                        $("#modal-4options").show();
                    };
             document.getElementById("btn_left4").onclick = function abc4() {
                        $("#modal-4options").show();
                    };
            document.getElementById("btn_left5").onclick = function abc4() {
                        $("#modal-4options").show();
                    };
             document.getElementById("btn_left6").onclick = function abc4() {
                        $("#modal-4options").show();
                    };                     
        </script>
	<!-- /. PAGE WRAPPER  -->
	<!-- /. PAGE WRAPPER  -->

	<div id="myModalEdit">
		<div id="abc">
			<!-- Popup Div Starts Here -->
			<div id="popupContact">
				<!-- Contact Us Form -->
				<form action="#" id="form" method="post" name="form">
					<h2>Thông tin học viên</h2>
					<hr>
					<label>Mã hoc viên:</label>
						<input id="mahocvien" name="maHocVien" placeholder="ID" type="text" disabled> 
						<label>Tên học viên:</label>
						<input id="name" name="tenHocVien" placeholder="Name" type="text"> 
						<label>Ngày sinh:</label>
						<input id="ngaysinh" name="ngaySinh" placeholder="Date" type="date"> 
						<label>Giới tính:</label>
						<input id="gioitinh" name="gioiTinh" placeholder="Sex" type="text">
						<label>Số điện thoại:</label>
						<input id="phone" name="sDT" placeholder="Phone" type="text">
						<label>Địa chỉ:</label>
						<input id="diachi" name="diaChi" placeholder="Address" type="text">
						
						<div class="modal-footer">
						<button type="submit" id="edit1" class="btn btn-default btn-sm"> Save</button>
						<button type="button" class="btn btn-default" id="closebtn_form1">
						<i class="fa fa-close" aria-hidden="true" style="font-size: 20px; color: red"></i> Close
						</button>
						</div>
				</form>
			</div>
			<!-- Popup Div Ends Here -->
			<script> 
                   //btn cancel của edit form -->
                   document.getElementById("closebtn_form1").onclick = function abc3() {
                   $("#myModalEdit").hide(); 
                   };                
                   document.getElementById("edit1").onclick = function abc3() {
                   $("#myModalEdit").hide(); 
                   }; 
            </script>
		</div>
	</div>
	
	<!-- /. PAGE WRAPPER  -->
	<!-- Them hoc vien -->
	<div id="myModalAdd">
		<div id="abc">
			<!-- Popup Div Starts Here -->
			<div id="popupContact">
				<!-- Contact Us Form -->
				<form action="" id="form" method="" name="form">
					<h2>Thông tin học viên</h2>
					<hr>
					<label>Tên hoc viên:</label>
						<input id="name1" name="tenHocVien" placeholder="Name" type="text"> 
						<label>Ngày sinh:</label>
						<input id="ngaysinh1" name="ngaySinh" placeholder="Date" type="date"> 
						<label>Giới tính:</label>
						<input id="gioitinh1" name="gioiTinh" placeholder="Sex" type="text">
						<label>Số điện thoại:</label>
						<input id="phone1" name="sDT" placeholder="Phone" type="text">
						<label>Địa chỉ:</label>
						<input id="diachi1" name="diaChi" placeholder="Address" type="text">
						<div class="modal-footer">
						<button type="submit" class="btn btn-default btn-sm" id="addadd"> Save</button>
						<button type="button" class="btn btn-default" id="closebtn_form2">
						<i class="fa fa-close" aria-hidden="true" style="font-size: 20px; color: red"></i> Close
						</button>
						</div>
				</form>
			</div>
			<!-- Popup Div Ends Here -->
			<script> 
                   //btn cancel của edit form -->
                   document.getElementById("closebtn_form2").onclick = function abc3() {
                   $("#myModalAdd").hide(); 
                   }; 
                   document.getElementById("addadd").onclick = function abc3() { 
                   $("#myModalAdd").hide(); 
                   }; 
            </script>
		</div>
	</div>
	
	<!-- Display Popup Button -->



</body>
<!-- /. WRAPPER  -->
<!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
<!-- JQUERY SCRIPTS -->
<script src="assets/js/jquery-1.10.2.js"></script>
<!-- BOOTSTRAP SCRIPTS -->
<script src="assets/js/bootstrap.min.js"></script>
<!-- METISMENU SCRIPTS -->
<script src="assets/js/jquery.metisMenu.js"></script>
<!-- CUSTOM SCRIPTS -->
<script src="assets/js/custom.js"></script>
</body>
</html>
