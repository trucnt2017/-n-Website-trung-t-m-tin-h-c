<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Danh Sách Khóa Học</title>
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

			<script src="assets/js/jquery-3.2.1.min.js"></script>
			<script src="assets/js/jquery.validate.min.js"></script>
			<script src="assets/js/validate_dsnhanvien.js"></script>
			<link href="css/elementdk.css" rel="stylesheet" />
			<!-- - -->
			<!--  Hiện thị dữ liệu lên form  -->
			<script type="text/javascript">
        	$(document).ready(function(){
        	$("#myModalEditKH").hide();
        	$("#myModalInsertClass").hide();
        	$("#myModalAdd_KH").hide();
        	$.get("act_KhoaHoc", function(responseJson) {         
 		        var $table = document.getElementById("row");
 		        $.each(responseJson, function(index, product) {   
 		            $("<tr>").appendTo($table)                     
 		                .append($("<td>").text(product.maKhoaHoc))      
 		                .append($("<td>").text(product.tenKhoaHoc))
 		               	.append($("<td>")
		                .append($("<a>")
		                				.append($("<i>").addClass("fa fa-chevron-circle-right"))
		                			   )
		                				.click(function(){
		                		           	 $.post("act_KhoaHoc",{action: '0',maKhoaHoc : product.maKhoaHoc}, 
		                		           		function(responseJson) {   
		                		     		        	$("#makhoahoc").val(responseJson.maKhoaHoc);
		                		     		        	$("#tenkhoahoc").val(responseJson.tenKhoaHoc);
		                		     		    }
		                		           	 );
		                		           	 event.preventDefault();
 		                					$("#").show();

		                				})
		                )
		                .append($("<td>")
 		                		.append($("<a>")
 		                				.append($("<i>").addClass("fa fa-plus-circle"))
 		                			   )
 		                				.click(function(){
 		                		           	 $.post("act_KhoaHoc",{action: '3',maKhoaHoc : product.maKhoaHoc}, 
 		                		           		function(responseJson) {   
 		                		     		        	$("#makhoahoclop").val(responseJson.maKhoaHoc);
 		                		     		        	$("#tenkhoahoclop").val(responseJson.tenKhoaHoc);
 		                		     		    }
 		                		           	 );
 		                		           	 event.preventDefault();
 		                		           	$('#malop').val('');
		                					$('#tenlop').val('');
		                					$('#ngaykg').val('');
		                					$('#thoigian').val('');
		                					$('#sotiet').val('');
		                					$('#hocphi').val('');
		                					$('#phong').val('');
  		                					$("#myModalInsertClass").show();

 		                				})
 		                )
 		                .append($("<td>")
 		                		.append($("<a>")
 		                				.append($("<i>").addClass("fa fa-pencil edit"))
 		                			   )
 		                				.click(function(){
 		                		           	 $.post("act_KhoaHoc",{action: '3',maKhoaHoc : product.maKhoaHoc}, 
 		                		           		function(responseJson) {   
 		                		     		        	$("#makhoahoc").val(responseJson.maKhoaHoc);
 		                		     		        	$("#tenkhoahoc").val(responseJson.tenKhoaHoc);
 		                		     		    }
 		                		           	 );
 		                		           	 event.preventDefault();
  		                					$("#myModalEditKH").show();

 		                				})
 		                )
 		                .append($("<td>")
 		                		.append($("<a>")
 		                				.append($("<i>").addClass("fa fa-trash remove"))
 		                				)
 		                				.click(function(){
 		                					var retVal = confirm("Do you really want to delete this?");          	
	 		           	                    if( retVal == true ){
	 		           	                    $.post("act_KhoaHoc",{action: '4',maKhoaHoc : product.maKhoaHoc},
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
 		        });
 		    });
        	function reload(){
        		 $.get("act_KhoaHoc", function(responseJson) {         
      		       
      		        var $table = document.getElementById("row");
      		      	$.each(responseJson, function(index, product) { 
             			$("#productTable > tbody > tr").remove();
             		 });
      		        $.each(responseJson, function(index, product) {    
      		            $("<tr>").appendTo($table)                     
      		                .append($("<td>").text(product.maKhoaHoc))     
      		                .append($("<td>").text(product.tenKhoaHoc))     
      		              .append($("<td>")
  		                		.append($("<a>")
  		                				.append($("<i>").addClass("fa fa-chevron-circle-right"))
  		                			   )
  		                				.click(function(){
  		                		           	 $.post("act_KhoaHoc",{action: '0',maKhoaHoc : product.maKhoaHoc}, 
  		                		           		function(responseJson) {   
  		                		     		        	$("#makhoahoc").val(responseJson.maKhoaHoc);
  		                		     		        	$("#tenkhoahoc").val(responseJson.tenKhoaHoc);
  		                		     		    }
  		                		           	 );
  		                		           	 event.preventDefault();
   		                					$("#").show();

  		                				})
  		                )
  		                .append($("<td>")
   		                		.append($("<a>")
   		                				.append($("<i>").addClass("fa fa-plus-circle"))
   		                			   )
   		                				.click(function(){
   		                		           	 $.post("act_KhoaHoc",{action: '0',maKhoaHoc : product.maKhoaHoc}, 
   		                		           		function(responseJson) {   
   		                		     		        	$("#makhoahoclop").val(responseJson.maKhoaHoc);
   		                		     		        	$("#tenkhoahoclop").val(responseJson.tenKhoaHoc);
   		                		     		    }
   		                		           	 );
   		                		           	 event.preventDefault();
   		                		          	$('#malop').val('');
		                					$('#tenlop').val('');
		                					$('#ngaykg').val('');
		                					$('#thoigian').val('');
		                					$('#sotiet').val('');
		                					$('#hocphi').val('');
		                					$('#phong').val('');
 		                					
    		                				$("#myModalInsertClass").show();
    		                					

   		                				})
   		                )
   		                .append($("<td>")
   		                		.append($("<a>")
   		                				.append($("<i>").addClass("fa fa-pencil edit"))
   		                			   )
   		                				.click(function(){
   		                		           	 $.post("act_KhoaHoc",{action: '3',maKhoaHoc : product.maKhoaHoc}, 
   		                		           		function(responseJson) {   
   		                		     		        	$("#makhoahoc").val(responseJson.maKhoaHoc);
   		                		     		        	$("#tenkhoahoc").val(responseJson.tenKhoaHoc);
   		                		     		    }
   		                		           	 );
   		                		           	 event.preventDefault();
    		                					$("#myModalEditKH").show();

   		                				})
   		                )
   		                .append($("<td>")
   		                		.append($("<a>")
   		                				.append($("<i>").addClass("fa fa-trash remove"))
   		                				)
   		                				.click(function(){
   		                					var retVal = confirm("Do you really want to delete this?");          	
	 		           	                    if( retVal == true ){
	 		           	                    $.post("act_KhoaHoc",{action: '4',maKhoaHoc : product.maKhoaHoc},
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
      		                		
      		        });
      		    });
        	 }
        	 $('#add_kh').click(function(){
         		var authorityName=$('#contentGrName').val();
            	 $.post("act_KhoaHoc",{action: '1',maKhoaHoc : $('#makhoahoc1').val(),tenKhoaHoc : $('#tenkhoahoc1').val()}, function(responseJson) 
            	{       
            		 alert("Đã thêm khóa học thành công !");
            		 //xóa table cũ đi
            		 $.each(responseJson, function(index, product) { 
            			
            		$("#productTable> tbody > tr").remove();
            		 });
            	 //Load lại toàn bộ dữ liệu mới sau khi insert
            		 $.each(responseJson, function(index, product) {
      		        	$("#productTable > tbody").append(
      		        	$("<tr>")                    
    		                .append($("<td>").text(product.maKhoaHoc))      
    		                .append($("<td>").text(product.tenKhoaHoc))
    		               	.append($("<td>")
  		                		.append($("<a>")
  		                				.append($("<i>").addClass("fa fa-chevron-circle-right"))
  		                			   )
  		                				.click(function(){
  		                		           	 $.post("act_KhoaHoc",{action: '0',maKhoaHoc : product.maKhoaHoc}, 
  		                		           		function(responseJson) {   
  		                		     		        	$("#makhoahoc").val(responseJson.maKhoaHoc);
  		                		     		        	$("#tenkhoahoc").val(responseJson.tenKhoaHoc);
  		                		     		    }
  		                		           	 );
  		                		           	 event.preventDefault();
   		                					$("#").show();
  		                				})
  		                )
  		                .append($("<td>")
   		                		.append($("<a>")
   		                				.append($("<i>").addClass("fa fa-plus-circle"))
   		                			   )
   		                				.click(function(){
   		                		           	 $.post("act_KhoaHoc",{action: '0',maKhoaHoc : product.maKhoaHoc}, 
   		                		           		function(responseJson) {   
   		                		     		        	$("#makhoahoclop").val(responseJson.maKhoaHoc);
   		                		     		        	$("#tenkhoahoclop").val(responseJson.tenKhoaHoc);
   		                		     		    }
   		                		           	 );
   		                		           	 event.preventDefault();
   		                		          	$('#malop').val('');
		                					$('#tenlop').val('');
		                					$('#ngaykg').val('');
		                					$('#thoigian').val('');
		                					$('#sotiet').val('');
		                					$('#hocphi').val('');
		                					$('#phong').val('');
    		                				$("#myModalInsertClass").show();
    		                					

   		                				})
   		                )
   		                .append($("<td>")
   		                		.append($("<a>")
   		                				.append($("<i>").addClass("fa fa-pencil edit"))
   		                			   )
   		                				.click(function(){
   		                		           	 $.post("act_KhoaHoc",{action: '3',maKhoaHoc : product.maKhoaHoc}, 
   		                		           		function(responseJson) {   
   		                		     		        	$("#makhoahoc").val(responseJson.maKhoaHoc);
   		                		     		        	$("#tenkhoahoc").val(responseJson.tenKhoaHoc);
   		                		     		    }
   		                		           	 );
   		                		           	 event.preventDefault();
    		                					$("#myModalEditKH").show();

   		                				})
   		                )
   		                .append($("<td>")
   		                		.append($("<a>")
   		                				.append($("<i>").addClass("fa fa-trash remove"))
   		                				)
   		                				.click(function(){
   		                					var retVal = confirm("Do you really want to delete this?");          	
	 		           	                    if( retVal == true ){
	 		           	                    $.post("act_KhoaHoc",{action: '4',maKhoaHoc : product.maKhoaHoc},
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
            	 event.preventDefault(); 
         		
             });  
        	
        	$('#add1').click(function(){
        		var authorityName=$('#contentGrName').val();
           	 $.post("act_KhoaHoc",{action: '1',maKhoaHoc : $('#contentGrName').val(),tenKhoaHoc : $('#contentGrName').val()}, function(responseJson) {          // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response JSON...
           		 //xóa table cũ đi
           		 $.each(responseJson, function(index, product) { 
           			$("#productTable > tbody > tr").remove();
           		 });
           	 //Load lại toàn bộ dữ liệu mới sau khi insert
           		 $.each(responseJson, function(index, product) {    // Iterate over the JSON array.
     		        	$("#productTable > tbody").append(
     		        	$("<tr>")                     // Create HTML <tr> element, set its text content with currently iterated item and append it to the <table>.
   		                .append($("<td>").text(product.maKhoaHoc))        // Create HTML <td> element, set its text content with id of currently iterated product and append it to the <tr>.
   		                .append($("<td>").text(product.tenKhoaHoc))      // Create HTML <td> element, set its text content with name of currently iterated product and append it to the <tr>.
   		             .append($("<td>")
		                		.append($("<a>")
		                				.append($("<i>").addClass("fa fa-chevron-circle-right"))
		                			   )
		                				.click(function(){
		                		           	 $.post("act_KhoaHoc",{action: '0',maKhoaHoc : product.maKhoaHoc}, 
		                		           		function(responseJson) {   
		                		     		        	$("#makhoahoc2").val(responseJson.maKhoaHoc);
		                		     		        	$("#tenkhoahoc2").val(responseJson.tenKhoaHoc);
		                		     		    }
		                		           	 );
		                		           	 event.preventDefault();
		                					$("#").show();

		                				})
		                )
		                .append($("<td>")
		                		.append($("<a>")
		                				.append($("<i>").addClass("fa fa-plus-circle"))
		                			   )
		                				.click(function(){
		                		           	 $.post("act_KhoaHoc",{action: '0',maKhoaHoc : product.maKhoaHoc}, 
		                		           		function(responseJson) {   
		                		     		        	$("#makhoahoc2").val(responseJson.maKhoaHoc);
		                		     		        	$("#tenkhoahoc2").val(responseJson.tenKhoaHoc);
		                		     		    }
		                		           	 );
		                		           	 event.preventDefault();
		                		           	$('#malop').val('');
		                					$('#tenlop').val('');
		                					$('#ngaykg').val('');
		                					$('#thoigian').val('');
		                					$('#sotiet').val('');
		                					$('#hocphi').val('');
		                					$('#phong').val('');
		                					$("#myModalInsertClass").show();

		                				})
		                )
		                .append($("<td>")
		                		.append($("<a>")
		                				.append($("<i>").addClass("fa fa-pencil edit"))
		                			   )
		                				.click(function(){
		                		           	 $.post("act_KhoaHoc",{action: '3',maKhoaHoc : product.maKhoaHoc}, 
		                		           		function(responseJson) {   
		                		     		        	$("#makhoahoc2").val(responseJson.maKhoaHoc);
		                		     		        	$("#tenkhoahoc2").val(responseJson.tenKhoaHoc);
		                		     		    }
		                		           	 );
		                		           	 event.preventDefault();
		                					$("#myModalEditKH1").show();

		                				})
		                )
		                .append($("<td>")
		                		.append($("<a>")
		                				.append($("<i>").addClass("fa fa-trash remove"))
		                				)
		                				.click(function(){
		                					$.post("act_KhoaHoc",{action: '4',maKhoaHoc : product.maKhoaHoc}, function(responseJson) {   
		                						reload();
	                		     		    	}
	                		           	 	);
	                		           	 	event.preventDefault();
		                				})
		                		)
   		                );
     		        });
     		    });
           	 event.preventDefault(); // Important! Prevents submitting the form
        		
            });  
        	
        	
        	$('#edit1').click(function(){
           	 $.post("act_KhoaHoc",{action: '2',maKhoaHoc : $('#makhoahoc').val(),tenKhoaHoc : $('#tenkhoahoc').val()},
           	 function(responseJson) {          // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response JSON...
           		 //xóa table cũ đi
           		 $.each(responseJson, function(index, product) { 
           			$("#productTable > tbody > tr").remove();
           		 });
           	 //Load lại toàn bộ dữ liệu mới sau khi insert
           		 $.each(responseJson, function(index, product) {    // Iterate over the JSON array.
     		        	$("#productTable > tbody").append(
     		        	$("<tr>")                     // Create HTML <tr> element, set its text content with currently iterated item and append it to the <table>.
   		                .append($("<td>").text(product.maKhoaHoc))        // Create HTML <td> element, set its text content with id of currently iterated product and append it to the <tr>.
   		                .append($("<td>").text(product.tenKhoaHoc))      // Create HTML <td> element, set its text content with name of currently iterated product and append it to the <tr>.
   		             .append($("<td>")
		                		.append($("<a>")
		                				.append($("<i>").addClass("fa fa-chevron-circle-right"))
		                			   )
		                				.click(function(){
		                		           	 $.post("act_KhoaHoc",{action: '3',maKhoaHoc : product.maKhoaHoc}, 
		                		           		function(responseJson) {   
		                		     		        	$("#makhoahoclop").val(responseJson.maKhoaHoc);
		                		     		        	$("#tenkhoahoclop").val(responseJson.tenKhoaHoc);
		                		     		    }
		                		           	 );
		                		           	 event.preventDefault();
		                					$("#").show();

		                				})
		                )
		                .append($("<td>")
		                		.append($("<a>")
		                				.append($("<i>").addClass("fa fa-plus-circle"))
		                			   )
		                				.click(function(){
		                		           	 $.post("act_KhoaHoc",{action: '3',maKhoaHoc : product.maKhoaHoc}, 
		                		           		function(responseJson) {   
		                		     		        	$("#makhoaholop").val(responseJson.maKhoaHoc);
		                		     		        	$("#tenkhoahoclop").val(responseJson.tenKhoaHoc);
		                		     		    }
		                		           	 );
		                		           	 event.preventDefault();
		                		           	$('#malop').val('');
		                					$('#tenlop').val('');
		                					$('#ngaykg').val('');
		                					$('#thoigian').val('');
		                					$('#sotiet').val('');
		                					$('#hocphi').val('');
		                					$('#phong').val('');
		                					$("#myModalInsertClass").show();

		                				})
		                )
		                .append($("<td>")
		                		.append($("<a>")
		                				.append($("<i>").addClass("fa fa-pencil edit"))
		                			   )
		                				.click(function(){
		                		           	 $.post("act_KhoaHoc",{action: '3',maKhoaHoc : product.maKhoaHoc}, 
		                		           		function(responseJson) {   
		                		     		        	$("#makhoahoc").val(responseJson.maKhoaHoc);
		                		     		        	$("#tenkhoahoc").val(responseJson.tenKhoaHoc);
		                		     		    }
		                		           	 );
		                		           	 event.preventDefault();
		                		           	 
		                					$("#myModalEditKH").show();

		                				})
		                )
		                .append($("<td>")
		                		.append($("<a>")
		                				.append($("<i>").addClass("fa fa-trash remove"))
		                				)
		                				.click(function(){
		                					var retVal = confirm("Do you really want to delete this?");          	
	 		           	                    if( retVal == true ){
	 		           	                    $.post("act_KhoaHoc",{action: '4',maKhoaHoc : product.maKhoaHoc},
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
	
	<!-- AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA -->	
	<script type="text/javascript">
        	$(document).ready(function(){
        	$("#myModalInsertClass1").hide();
        	 $.get("act_LopHoc", function(responseJson) {         
 		        var $table = document.getElementById("row1");
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
 		                .append($("<td>").text(product.phong))
 		                .append($("<td>")
 		                		.append($("<a>")
 		                				.append($("<i>").addClass("fa fa-pencil-square-o"))
 		                			   )
 		                				.click(function(){
 		                					
 		                		           	 $.post("act_LopHoc",{action: '3',maLop : product.maLop}, 
 		                		           		function(responseJson) {   
 		                		     		        	$("#makhoahoclop1").val(responseJson.maKhoaHoc);
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
 		                		     		        	
 		                		     		        	$("#sotiet1").val(responseJson.soTiet);
 		                		     		        	$("#hocphi1").val(responseJson.hocPhi);
 		                		     		        	$("#phong1").val(responseJson.phong);
 		                		     		        	
 		                		     		    }
 		                		           	 );
 		                		           	 event.preventDefault();
 		                		           	$("#myModalInsertClass1").show();

 		                				})
 		                )
 		                .append($("<td>")
 		                		.append($("<a>")
 		                				.append($("<i>").addClass("fa fa-trash"))
 		                				)
 		                				.click(function(){
   		                					$.post("act_LopHoc",{action: '4',maKhoaHoc : product.maKhoaHoc}, function(responseJson) {   
   		                						reload2();
	                		     		    	}
	                		           	 	);
	                		           	 	event.preventDefault();
   		                				})
 		                		)
 		        });
 		    });
        	 function reload2(){
        		 $.get("act_LopHoc", function(responseJson) {         
      		        var $table = document.getElementById("row1");
      		      	$.each(responseJson, function(index, product) { 
             			$("#productTable1> tbody > tr").remove();
             		 });
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
 		                .append($("<td>").text(product.phong))    
   		                .append($("<td>")
   		                		.append($("<a>")
   		                				.append($("<i>").addClass("fa fa-pencil edit"))
   		                			   )
   		                				.click(function(){
   		                		           	 $.post("act_LopHoc",{action: '3',maLop : product.maLop}, 
   		                		           		function(responseJson) {   
   		                		           	$("#makhoahoclop1").val(responseJson.maKhoaHoc);
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
             		     		        	
             		     		        	
             		     		        	$("#sotiet1").val(responseJson.soTiet);
             		     		        	$("#hocphi1").val(responseJson.hocPhi);
             		     		        	$("#phong1").val(responseJson.phong);
   		                		     		        	
   		                		     		 }
   		                		           	 );
   		                		           	 event.preventDefault();
    		                					$("#myModalInsertClass1").show();

   		                				})
   		                )
   		                .append($("<td>")
   		                		.append($("<a>")
   		                				.append($("<i>").addClass("fa fa-trash-o"))
   		                				)
   		                				.click(function(){
   		                					var retVal = confirm("Do you really want to delete this?");          	
	 		           	                    if( retVal == true ){
	 		           	                    $.post("act_LopHoc",{action: '4',maLop : product.maLop},
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
      		                		// Create HTML <td> element, set its text content with price of currently iterated product and append it to the <tr>.
      		        });
      		    });
        	 }
        	
        	
        	$('#addclass').click(function(){
        		var authorityName=$('#contentGrName').val();
           	 $.post("act_LopHoc",{action: '1',maKhoaHoc : $('#makhoahoclop').val(),maLop : $('#malop').val()
           		,tenLop : $('#tenlop').val(),thoiGian : $('#thoigian').val(),ngayKG : $('#ngaykg').val()
           		,soTiet : $('#sotiet').val(),hocPhi : $('#hocphi').val(),phong : $('#phong').val()
           		 }, function(responseJson) 
           	{       
           		 //xóa table cũ đi
           		 $.each(responseJson, function(index, product) { 
           			
           			$("#productTable1> tbody > tr").remove();
           		 });
           	 //Load lại toàn bộ dữ liệu mới sau khi insert
           		 $.each(responseJson, function(index, product) {
           			var ngayKG = new Date(product.ngayKG); 
     		        	$("#productTable1 > tbody").append(
     		        	$("<tr>")                    
   		                .append($("<td>").text(product.maKhoaHoc))      
   		                .append($("<td>").text(product.maLop))
   		                .append($("<td>").text(product.tenLop)) 
   		                .append($("<td>").text(product.thoiGian)) 
   		               .append($("<td>").text(ngayKG.getDate() + "/" + (ngayKG.getMonth() + 1) + "/" + ngayKG.getFullYear()))
   		                .append($("<td>").text(product.soTiet)) 
   		                .append($("<td>").text(product.hocPhi)) 
   		                .append($("<td>").text(product.phong)) 
   		              
		                
		                .append($("<td>")
		                		.append($("<a>")
		                				.append($("<i>").addClass("fa fa-pencil edit"))
		                			   )
		                				.click(function(){
		                		           	 $.post("act_LopHoc",{action: '3',maLop : product.maLop}, 
		                		           		function(responseJson) {  
		                		           				$("#makhoahoclop").val(responseJson.maKhoaHoc);
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
		                		     		        	$("#sotiet").val(responseJson.soTiet);
		                		     		        	$("#hocphi").val(responseJson.hocPhi);
		                		     		        	$("#phong").val(responseJson.phong);
		                		     		        	
		                		     		        	
		                		     		    }
		                		           	 );
		                		           	 event.preventDefault();
		                					$("#myModalInsertClass1").show();

		                				})
		               		 )
		                	.append($("<td>")
		                		.append($("<a>")
		                				.append($("<i>").addClass("fa fa-trash-o"))
		                				)
		                				.click(function(){
		                					var retVal = confirm("Do you really want to delete this?");          	
	 		           	                    if( retVal == true ){
	 		           	                    $.post("act_LopHoc",{action: '4',maLop : product.maLop},
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
        	
        	$('#editclass').click(function(){
           	 $.post("act_LopHoc",{action: '2',maKhoaHoc : $('#makhoahoclop1').val(),maLop : $('#malop1').val(),tenLop : $('#tenlop1').val(),thoiGian : $('#thoigian1').val(),ngayKG : $('#ngaykg1').val(),phong: $('#phong1').val(),hocPhi : $('#hocphi1').val(),soTiet: $('#sotiet1').val()},
           	 function(responseJson) {        
           		 //xóa table cũ đi
           		 $.each(responseJson, function(index, product) { 
           			$("#productTable1> tbody > tr").remove();
           		 });
           	 //Load lại toàn bộ dữ liệu mới sau khi insert
           		 $.each(responseJson, function(index, product) {  
           			var ngayKG = new Date(product.ngayKG);       			
     		        	$("#productTable1> tbody").append(
     		        	$("<tr>")                  
     		        	.append($("<td>").text(product.maKhoaHoc))      
   		                .append($("<td>").text(product.maLop))
   		                .append($("<td>").text(product.tenLop)) 
   		                .append($("<td>").text(product.thoiGian)) 
   		             	.append($("<td>").text(ngayKG.getDate() + "/" + (ngayKG.getMonth() + 1) + "/" + ngayKG.getFullYear()))
						.append($("<td>").text(product.soTiet)) 
						.append($("<td>").text(product.hocPhi)) 
   		                .append($("<td>").text(product.phong))      

		                .append($("<td>")
		                		.append($("<a>")
		                				.append($("<i>").addClass("fa fa-pencil edit"))
		                			   )
		                				.click(function(){
		   
		                		           	 $.post("act_LopHoc",{action: '3',maLop : product.maLop}, 
		                		           		function(responseJson) {   
		                		           		$("#makhoahoclop1").val(responseJson.maKhoaHoc);
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
                		     		        	$("#sotiet1").val(responseJson.soTiet);
                		     		        	$("#hocphi1").val(responseJson.hocPhi);
                		     		        	$("#phong1").val(responseJson.phong);
		                		     		    }
		                		           	 );
		                		           	 event.preventDefault();
		                					$("#myModalInsertClass1").show();

		                				})
		                )
		                .append($("<td>")
		                		.append($("<a>")
		                				.append($("<i>").addClass("fa fa-trash-o"))
		                				)
		                				.click(function(){
		                					var retVal = confirm("Do you really want to delete this?");          	
	 		           	                    if( retVal == true ){
	 		           	                    $.post("act_LopHoc",{action: '4',maLop : product.maLop},
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
	
	<!-- AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA -->
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
padding:5px;
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
						<li><a href="#" style="color: azure"><i
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
					<div class="row" id="formnoi">
					<div class="col-md-12" style="background-image: url(bg.jpg)">
						<h3>CÁC KHÓA HỌC</h3>
						<div class="table-responsive" style="z-index: 0;">
							<table class="table" id="productTable">
								<thead>
									<tr class="text-center">
										<th class="text-center">Mã khóa học</th>
										<th class="text-center">Tên khóa học</th>
										<th class="text-center">Xem các lớp</th>
										<th class="text-center"> Thêm lớp</th>
										<th class="text-center">Sửa</th>
										<th class="text-center">Xóa</th>

									</tr>
								</thead>
								<tbody id="row" class="text-center">
								</tbody>

							</table>
						</div>
					</div>
				</div>
						<!--  hiện thị các lớp của khóa học -->
						<br> <br>
								<h3>CÁC LỚP HỌC</h3>
						<div class="table-responsive" style="z-index: 0;">
							<table class="table" id="productTable1">
								<thead>
									<tr class="text-center">
										<th class="text-center">Mã khóa học</th>
										<th class="text-center">Mã lớpc</th>
										<th class="text-center">Tên lớp</th>
										<th class="text-center">Thời gian</th>
										<th class="text-center">Ngày khai giảng</th>
										
										<th class="text-center">Số tiết</th>
										<th class="text-center">Học phí</th>
										<th class="text-center">Phòng học</th>
										<th class="text-center">Sửa</th>
										<th class="text-center">Xóa</th>
										

									</tr>
								</thead>
								<tbody id="row1" class="text-center">
								</tbody>

							</table>
						</div>
					</div>
				</div>
				
			</div>
		</div>
	</div>
	
	<!--  HIỆN THỊ FORM Thêm lớp học theo khóa KHOA HOC -->
	
	<div id="myModalInsertClass">
		<div id="abc">
			<!-- Popup Div Starts Here -->
			<div id="popupContact">
				<!-- Contact Us Form -->
				<form action="#" id="form" method="post" name="form">
					<h2>Thông tin lớp học</h2>
					<hr>
					<label>Mã khóa học:</label>
						<input id="makhoahoclop" name="maKhoaHoc" placeholder="Mã khóa học" type="text" disabled>
						<label>Tên khóa học:</label>
					     <input id="tenkhoahoclop" name="tenKhoaHoc" placeholder="Tên khóa học" type="text" disabled>
					     <label>Mã lớp học:</label>
						<input id="malop" name="maLop" placeholder="Mã lớp" type="text" >
						<label>Tên lớp:</label>
						<input id="tenlop" name="tenLop" placeholder="Tên lớp" type="text" >
						<label>Thời gian:</label>
						<input id="thoigian" name="thoiGian" placeholder="Thời gian" type="text">
						<label>Ngày khai giảng:</label>
						<input id="ngaykg" name="ngayKG" placeholder="Ngay khai giang" type="date">
						<label>Số tiết:</label>
						<input id="sotiet" name="soTiet" placeholder="Số tiết " type="text">
						<label>Học phí:</label>
						<input id="hocphi" name="hocPhi" placeholder="Học phí" type="text">
						<label>Phòng :</label>
						<input id="phong" name="phong" placeholder="Phòng" type="text">
						<div class="modal-footer">
						<button type="submit" id="addclass" class="btn btn-default btn-sm"> Save</button>
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
                   $("#myModalInsertClass").hide(); 
                   };                
                   document.getElementById("addclass").onclick = function abc3() {
                   $("#myModalInsertClass").hide(); 
                   }; 
            </script>
		</div>
	</div>
	<!--  KẾT THÚC FORM ÂN THEM KHOA HOC -->
	<div id="myModalInsertClass1">
		<div id="abc">
			<!-- Popup Div Starts Here -->
			<div id="popupContact">
				<!-- Contact Us Form -->
				<form action="#" id="form" method="post" name="form">
					<h2>Thông tin lớp học</h2>
					<hr>
					<label>Mã khóa học:</label>
						<input id="makhoahoclop1" name="maKhoaHoc" placeholder="Mã khóa học" type="text" disabled>
						<label>Mã lớp:</label>
						<input id="malop1" name="maLop" placeholder="Mã lớp" type="text" disabled >
						<label>Tên lớp:</label>
						<input id="tenlop1" name="tenLop" placeholder="Tên lớp" type="text" >
						<label>Thời gian:</label>
						<input id="thoigian1" name="thoiGian" placeholder="Thời gian" type="text">
						<label>Ngày khai giảng:</label>
						<input id="ngaykg1" name="ngayKG" placeholder="Ngay khai giang" type="date">
						<label>Số tiết:</label>
						<input id="sotiet1" name="soTiet" placeholder="Số tiết " type="text">
						<label>Học phí:</label>
						<input id="hocphi1" name="hocPhi" placeholder="Học phí" type="text">
						<label>Phòng:</label>
						<input id="phong1" name="phong" placeholder="Phòng" type="text">
						<div class="modal-footer">
						<button type="submit" id="editclass" class="btn btn-default btn-sm"> Save</button>
						<button type="button" class="btn btn-default" id="closebtn_form3">
						<i class="fa fa-close" aria-hidden="true" style="font-size: 20px; color: red"></i> Close
						</button>
						</div>
				</form>
			</div>
			<!-- Popup Div Ends Here -->
			<script> 
                   //btn cancel của edit form -->
                   document.getElementById("closebtn_form3").onclick = function abc3() {
                   $("#myModalInsertClass1").hide(); 
                   };                
                   document.getElementById("editclass").onclick = function abc3() {
                   $("#myModalInsertClass1").hide(); 
                   }; 
            </script>
		</div>
	</div>
	<!--  HIỆN THỊ FORM SỬA KHOA HOC -->
	
	<div id="myModalEditKH">
		<div id="abc">
			<!-- Popup Div Starts Here -->
			<div id="popupContact">
				<!-- Contact Us Form -->
				<form action="#" id="form" method="post" name="form">
					<h2>Thông tin khóa học</h2>
					<hr>
					<label> Mã khóa học:</label>
						<input id="makhoahoc" name="maKhoaHoc" placeholder="Mã khóa học" type="text" disabled>
						<label> Tên khóa học:</label>
						<input id="tenkhoahoc" name="tenKhoaHoc" placeholder="Tên khóa học" type="text">
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
                   $("#myModalEditKH").hide(); 
                   };                
                   document.getElementById("edit1").onclick = function abc3() {
                   $("#myModalEditKH").hide(); 
                   }; 
            </script>
		</div>
	</div>
	<!-- ===================== ADD KHÓA HỌC -->
	<div id="myModalAdd_KH">
		<div id="abc">
			<!-- Popup Div Starts Here -->
			<div id="popupContact">
				<!-- Contact Us Form -->
				<form action="#" id="form" method="post" name="form">
					<h2>Thông tin khóa học</h2>
					<hr>
					<label> Mã khóa học:</label>
						<input id="makhoahoc1" name="maKhoaHoc" placeholder="Mã khóa học" type="text" >
						<label> Tên khóa học:</label>
						<input id="tenkhoahoc1" name="tenKhoaHoc" placeholder="Tên khóa học" type="text">
						<div class="modal-footer">
						<button type="submit" id="add_kh" class="btn btn-default btn-sm"> Save</button>
						<button type="button" class="btn btn-default" id="closebtn_form4">
						<i class="fa fa-close" aria-hidden="true" style="font-size: 20px; color: red"></i> Close
						</button>
						</div>
				</form>
			</div>
			<!-- Popup Div Ends Here -->
			<script> 
                   //btn cancel của edit form -->
                   document.getElementById("closebtn_form4").onclick = function abc3() {
                   $("#myModalAdd_KH").hide(); 
                   };                
                   document.getElementById("add_kh").onclick = function abc3() {
                   $("#myModalAdd_KH").hide(); 
                   }; 
            </script>
		</div>
	</div>
	<!-- ----============================ -->
	<script type="text/javascript">
            //nút close của add
                document.getElementById("btn_left").onclick = function abc2() {
                        $("#makhoahoc1").val("");
                        $("#tenkhoahoc1").val("");
                      ;
                        $("#myModalAdd_KH").show();
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
	<!--  KẾT THÚC FORM ÂN THEM KHOA HOC -->
	
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
