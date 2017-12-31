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
        	$("#myModalhv").hide();
        	 $.get("DangKiOnline_THVP", function(responseJson) { 
        		 if (responseJson.check == "fail") {
		        	alert("Loaddata failed!");
	                return;       		                  	
 		        } 
        		//  act_HocVien là một servlet       
 		        var $table = document.getElementById("row");
 		        $.each(responseJson, function(index, product) {  
 		        	var ngayKG = new Date(product.ngayKG); 
 		            $("<tr>").appendTo($table)                     
 		                .append($("<td>").text(product.maDangKi))
 		                .append($("<td>").text(product.tenDangKi))  
 		                .append($("<td>").text(product.sDT))  
 		                 .append($("<td>").text(product.maLop)) 
 		                  .append($("<td>").text(product.tenLop)) 
 		                  .append($("<td>").text(product.thoiGian))
 		                 .append($("<td>").text(ngayKG.getDate() + "/" + (ngayKG.getMonth() + 1) + "/" + ngayKG.getFullYear()))
 		                .append($("<td>").text(product.ghiChu)) 
 		               
 		                .append($("<td>")
 		               		.append($("<a>")
 		                		.append($("<i>").addClass("fa fa-check-square"))
 		                			   )
 		                				.click(function(){
 		                		           	 $.post("DangKiOnline_THVP",{action: '3',maDangKi : product.maDangKi}, 
 		                		           		function(responseJson) {   
 		                		     		        	$("#madangki1").val(responseJson.maDangKi);
 		                		     		        	$("#tendk1").val(responseJson.tenDangKi);
 		                		     		        	$("#sdt1").val(responseJson.sDT);
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
 		                		     		        	
 		                		     		        	
 		                		     		        
 		                		     		    }
 		                		           	 );
 		                		           	 event.preventDefault();
 		                		        	
 		                		           	 
  		                					$("#myModalhv").show();

 		                				})
 		                )
 		                .append($("<td>")
 		               		.append($("<a>")
 		                		.append($("<i>").addClass("fa fa-trash-o"))
 		                			   )
 		                				.click(function(){
      		                					var retVal = confirm("Do you really want to delete this?");          	
    	 		           	                    if( retVal == true ){
    	 		           	                    $.post("DangKiOnline_THVP",{action: '4',maDangKi : product.maDangKi}, 
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
        	 function reload2(){
        		 $.get("DangKiOnline_THVP", function(responseJson) {         
      		        var $table = document.getElementById("row");
      		      	$.each(responseJson, function(index, product) { 
             			$("#productTable> tbody > tr").remove();
             		 });
      		        $.each(responseJson, function(index, product) { 
      		        	var ngayKG = new Date(product.ngayKG); 
      		            $("<tr>").appendTo($table)                     
      		             .append($("<td>").text(product.maDangKi)) 
      		             .append($("<td>").text(product.tenDangKi))
 		                .append($("<td>").text(product.sDT))
 		                .append($("<td>").text(product.maLop))
 		                .append($("<td>").text(product.tenLop))
 		                .append($("<td>").text(product.thoiGian))
 		                .append($("<td>").text(ngayKG.getDate() + "/" + (ngayKG.getMonth() + 1) + "/" + ngayKG.getFullYear()))
 		                .append($("<td>").text(product.ghiChu))    
   		               .append($("<td>")
 		               		.append($("<a>")
 		                		.append($("<i>").addClass("fa fa-check-square"))
 		                			   )
 		                				.click(function(){
 		                		           	 $.post("DangKiOnline_THVP",{action: '3',maDangKi : product.maDangKi}, 
 		                		           		function(responseJson) {  
 		                		           		$("#malop").val(responseJson.maDangKi);
	                		     		        	$("#tenlop").val(responseJson.tenDangKi);
	                		     		        	$("#thoigian").val(responseJson.sDT);
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
 		                		     		        	$("#tenlop").val(responseJson.ghiChu);
 		                		     		        	
 		                		     		        	
 		                		     		        
 		                		     		    }
 		                		           	 );
 		                		           	 event.preventDefault();
 		                		        	
 		                		           	 
  		                					$("#myModalhv").show();

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
        	 
        	 $("#duyet").click(function(){
        		
            	 $.post("act_HocVien",{action: '1',tenHocVien : $('#tendk1').val(),ngaySinh : $('#ngaysinh1').val(),gioiTinh : $('#gioitinh1').val(),sDT : $('#sdt1').val(),diaChi : $('#diachi1').val()},
             	function(responseJson) {
            		 
            	
            	  	alert("Thêm học viên vào danh sách thành công !");
            	 }
            	 );
            	 
            	 event.preventDefault(); 
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
#abc label{


margin-top:20px;
font-size:20px;
font-family:raleway
}
#abc  input[type=date] {
width:100%;
padding:7px;
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
						class="fa fa-user-circle-o"></span>&nbsp;ADMIN</a>
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
					</ul></li>
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
							
					</div>
				</div>
				<!--  Kết thúc form sửa học viên -->
				<div class="row" id="formnoi">
					<div class="col-md-12" style="background-image: url(bg.jpg)">
						<h3>DANH SÁCH ĐĂNG KÍ ONLINE</h3>
						<div class="table-responsive" style="z-index: 0;">
							<table class="table" id="productTable">
								<thead>
									<tr class="text-center">
										<th class="text-center">Mã đăng kí</th>
										<th class="text-center">Họ tên</th>
										<th class="text-center">SDT</th>
										<th class="text-center">Mã lớp</th>
										<th class="text-center">Tên lớp</th>
										<th class="text-center">Thời gian</th>
										<th class="text-center">Ngày KG</th>
										<th class="text-center">Ghi chú</th>
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

	<div id="myModalhv">
		<div id="abc">
			<!-- Popup Div Starts Here -->
			<div id="popupContact">
				<!-- Contact Us Form -->
				<form action="#" id="form" method="post" name="form">
					<h2>Thông tin học viên</h2>
					<hr>
					<label style="margin: 15px 0px 0px"> Mã đăng kí:</label>
						<input id="madangki1" name="maDangKi" placeholder="ID" type="text" disabled> 
						<label style="margin: 15px 0px 0px"> Tên đăng kí:</label>
						<input id="tendk1" name="tenDangKi" placeholder="Name" type="text"> 
						<label style="margin: 15px 0px 0px"> Số điện thoại:</label>
						<input id="sdt1" name="sDT" placeholder="Date" type="text">
						<label style="margin: 15px 0px 0px"> Mã lớp:</label> 
						<input id="malop1" name="maLop" placeholder="Sex" type="text">
						<label style="margin: 15px 0px 0px"> Tên lớp:</label>
						<input id="tenlop1" name="tenLop" placeholder="Phone" type="text">
						<label style="margin: 15px 0px 0px"> Thời gian:</label>
						<input id="thoigian1" name="thoiGian" placeholder="Address" type="text">
						<label style="margin: 15px 0px 0px"> Ngày khai giảng:</label>
						<input id="ngaykg1" name="ngayKG" placeholder="Address" type="date">
						<label style="margin: 15px 0px 0px"> Ngày sinh:</label>
						<input id="ngaysinh1" name="ngaySinh" placeholder="Ngày sinh" type="date">
						<label style="margin: 15px 0px 0px"> Giới tính:</label>
						<input id="gioitinh1" name="gioiTinh" placeholder="Sex" type="text">
						<label style="margin: 15px 0px 0px"> Địa chỉ:</label>
						<input id="diachi1" name="ngayKG" placeholder="Address" type="text">
						
						
						
						<div class="modal-footer">
						<button type="submit" id="duyet" class="btn btn-default btn-sm"> Duyệt</button>
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
                   $("#myModalhv").hide(); 
                   };                
                   document.getElementById("duyet").onclick = function abc3() {
                   $("#myModalhv").hide(); 
                   }; 
            </script>
		</div>
	</div>
	
	<!-- /. PAGE WRAPPER  -->
	


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
