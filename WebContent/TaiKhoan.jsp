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
        	 $.get("act_TaiKhoan", function(responseJson) {   
        		//  act_TaiKhoan là một servlet       
        	 	
 		        var $table = document.getElementById("row");
 		      
 		        $.each(responseJson, function(index, product) {
 		        	
 		            $("<tr>").appendTo($table)                     
 		                .append($("<td>").text(product.tenDangNhap))       
 		                .append($("<td>").text(product.matKhau)) 
 		                .append($("<td>").text(product.phanQuyen)) 
 		                .append($("<td>")
 		               	.append($("<a>")
 		                			.append($("<i>").addClass("fa fa-pencil edit"))
 		                			   )
 		                				.click(function(){
 		                		           	 $.post("act_TaiKhoan",{action: '3',tenDangNhap : product.tenDangNhap}, 
 		                		           		function(responseJson) { 
 		                		           			
 		                		     		        	$("#tentk").val(responseJson.tenDangNhap);
 		                		     		        	$("#matkhau").val(responseJson.matKhau);
 		                		     		        	$("#quyen").val(responseJson.phanQuyen);
 		                		     		        
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
	 		           	                    $.post("act_TaiKhoan",{action: '4',tenDangNhap : product.tenDangNhap}, 
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
        		 $.get("act_TaiKhoan", function(responseJson) {         
      		     
      		        var $table = document.getElementById("row");
      		      	$.each(responseJson, function(index, product) { 
             			$("#productTable > tbody > tr").remove();
             		 });
      		        $.each(responseJson, function(index, product) { 
      		        	 
      		            	$("<tr>").appendTo($table)                    
      		                .append($("<td>").text(product.tenDangNhap))      
      		                .append($("<td>").text(product.matKhau))   
      		              	.append($("<td>").text(product.phanQuyen))  
      		                .append($("<td>")
      		                		.append($("<a>")
      		                				.append($("<i>").addClass("fa fa-pencil edit"))
      		                			   )
      		                				.click(function(){
      		                		           	 $.post("act_TaiKhoan",{action: '3',tenDangNhap : product.tenDangNhap}, function(responseJson) {   
      		                		     		        	$("#tentk").val(responseJson.tenDangNhap);
      		                		     		        	$("#matkhau").val(responseJson.matKhau);
      		                		     		        	$("#quyen").val(responseJson.phanQuyen);
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
    	 		           	                    $.post("act_TaiKhoan",{action: '4',tenDangNhap : product.tenDangNhap}, 
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
         						var tenDangNhap=$('#tentk1').val();
                        		var matKhau=$('#matkhau1').val();
                        		var phanQuyen=$('#quyen1').val();
                        		
                        		
                           	 $.post("act_TaiKhoan",{action: '1',tenDangNhap : $('#tentk1').val(),matKhau : $('#matkhau1').val(),phanQuyen : $('#quyen1').val()}, function(responseJson) {          // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response JSON...
                           		 //xóa table cũ đi
                           		 $.each(responseJson, function(index, product) { 
                           			$("#productTable > tbody > tr").remove();
                           		 });
                           	 //Load lại toàn bộ dữ liệu mới sau khi insert
                           		 $.each(responseJson, function(index, product) { 
                           			
                     		        	$("#productTable > tbody").append(
                     		        	$("<tr>")
                     		        	.append($("<td>").text(product.tenDangNhap))  
                   		                .append($("<td>").text(product.matKhau))        
                   		             	 
                   		                .append($("<td>").text(product.phanQuyen))
                   		                .append($("<td>")
                   		                		.append($("<a>")
                   		                				.append($("<i>").addClass("fa fa-pencil edit"))
                   		                			   )
                   		                				.click(function(){
                   		                					$.post("act_TaiKhoan",{action: '3',tenDangNhap : product.tenDangNhap}, function(responseJson) {   
                	                		     		        	
                	                		     		        	$("#tentk1").val(responseJson.tenDangNhap);
                	                		     		        	$("#matkhau1").val(responseJson.matKhau);
                	                		     		        	$("#quyen1").val(responseJson.phanQuyen);
                	                		     		        	
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
                	 		           	                    $.post("act_TaiKhoan",{action: '4',tenDangNhap : product.tenDangNhap}, 
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
           	 $.post("act_TaiKhoan",{action: '2',tenDangNhap : $('#tentk').val(),matKhau : $('#matkhau').val(),phanQuyen : $('#quyen').val()},
           	 function(responseJson) {          // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response JSON...
           		 //xóa table cũ đi
           		 $.each(responseJson, function(index, product) { 
           			$("#productTable > tbody > tr").remove();
           		 });
           	 //Load lại toàn bộ dữ liệu mới sau khi insert
           		 $.each(responseJson, function(index, product) { 
           			
     		        	$("#productTable > tbody").append(
     		        	$("<tr>")                  
   		                .append($("<td>").text(product.tenDangNhap))      
   		                .append($("<td>").text(product.matKhau))    
   		            	.append($("<td>").text(product.phanQuyen))
   		                .append($("<td>")
   		                		.append($("<a>")
   		                				.append($("<i>").addClass("fa fa-pencil edit"))
   		                			   )
   		                				.click(function(){
   		                					$.post("act_TaiKhoan",{action: '2',tenDangNhap : product.tenDangNhap}, function(responseJson) {   
	                		     		        	$("#tentk").val(responseJson.tenDangNhap);
	                		     		        	$("#matkhau").val(responseJson.matKhau);
	                		     		        	$("#quyen").val(responseJson.phanQuyen);
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
	 		           	                    $.post("act_TaiKhoan",{action: '4',tenDangNhap : product.tenDangNhap}, 
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
				<li><a href="#"
					style="background-color: #333333; color: ghostwhite"><i
						class="fa fa-book"></i>Quản lý khóa học<span class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<li><a href="KhoaHoc.jsp"
							style="background-color: #333333; color: ghostwhite"></i>Danh sách khóa học</a></li>
					</ul></li>
					
				<li><a href="#"
					style="background-color: #333333; color: ghostwhite"><i
						class="fa fa-male"></i>Quản lý  tài khoản<span class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<li><a href="TaiKhoan.jsp"
							style="background-color: #333333; color: ghostwhite"><i
								class="fa fa-users"></i>Danh sách tài khoản</a></li>
					</ul></li>
				
				
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
							</div> 
					</div>
				</div>
				<!--  Kết thúc form sửa học viên -->
				<div class="row" id="formnoi">
					<div class="col-md-12" style="background-image: url(bg.jpg)">
						<h3>DANH SÁCH TÀI KHOẢN</h3>
						<div class="table-responsive" style="z-index: 0;">
							<table class="table" id="productTable">
								<thead>
									<tr class="text-center">
										<th class="text-center">Tên tài khoản</th>
										<th class="text-center">Mật khẩu</th>
										<th class="text-center">Phân quyền</th>
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
                        $("#tentk1").val("");
                        $("#matkhau1").val("");
                        $("#quyen1").val("");
                       
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
					<h2>Thông tin tài khoản</h2>
					<hr>
					<label>Tên tài khoản:</label>
						<input id="tentk" name="tenDangNhap" placeholder="Tên đăng nhập" type="text" disabled> 
					
						<label>Mật khẩu:</label>
						<input id="matkhau" name="matKhau" placeholder="Mật khẩu" type="text">
						<label>Quyền:</label>
						<input id="quyen" name="phanQuyen" placeholder="Quyền" type="text">
						
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
					<h2>Thông tin tài khoản</h2>
					<hr>
					<label>Tên tài khoản:</label>
						<input id="tentk1" name="tenDangNhap" placeholder="Tên tài khoản" type="text"> 
						<label>Mật khẩu:</label>
						<input id="matkhau1" name="sDT" placeholder="Mật khẩu" type="text">
						<label>Quyền:</label>
						<input id="quyen1" name="diaChi" placeholder="Quyền" type="text">
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
