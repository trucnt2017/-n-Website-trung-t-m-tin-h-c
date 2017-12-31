$(function() {
	$("#name_error_message").hide();
	$("#ngaysinh1_error_message").hide();
    $("#ngaysinh2_error_message").hide();
    $("#makhoahoc_error_message").hide();
    $("#timkiem1_error_message").hide();

    

	var error_ngaysinh1= false, error_ngaysinh2=false;
    var error_makhoahoc = false,error_timkiem=false, error_name=false;

	$("#name").focusout(function() {
		check_name();
	});
    $("#ngaysinh1").focusout(function() {
		check_ngaysinh1();
	});
     $("#ngaysinh2").focusout(function() {
		check_ngaysinh2();
	});
    $("#makhoahoc").focusout(function() {
		check_makhoahoc();
	});

    $("#timkiem1").focusout(function() {
		check_timkiem();
	});
  
 
    function check_timkiem() {
		var timkiem_length = $("#timkiem1").val().length;
        if(timkiem_length==0)
            {  
			     error_timkiem = false;
            }
		else
		{
			error_timkiem = true;
		}
			
	}
    
    function check_name() {
		var name_length = $("#name").val().length;
        if(name_length==0)
            {
                $("#name_error_message").html("Vui lòng nhập tên!")
                $("#name_error_message").show();      
			     error_name = false;
            }
        else if(name_length < 5 || name_length > 10) {
			$("#name_error_message").html("Tên nằm trong khoảng 5-10 kí tự");
			$("#name_error_message").show();      
			error_name = false;
		}
		else
		{
			$("#name_error_message").hide();
			error_name = true;
		}
			
	}
    function check_makhoahoc() {
		var makhoahoc_length = $("#makhoahoc").val().length;
        if(makhoahoc_length==0)
            {
                $("#makhoahoc_error_message").html("Vui lòng nhập lại!")
                $("#makhoahoc_error_message").show();      
			     error_makhoahoc= false;
            }
        else if(makhoahoc_length < 5 ||makhoahoc_length > 10) {
			$("#makhoahoc_error_message").html("Mã phải đủ 5 kí tự");
			$("#makhoahoc_error_message").show();      
			error_makhoahoc = false;
		}
		else
		{
			$("#makhoahoc_error_message").hide();
			error_makhoahoc = true;
		}
			
	}
    
       function check_ngaysinh1() {
        var pattern = new RegExp (/(0[1-9]|[12][0-9]|3[01])[- /.](0[1-9]|1[012])[- /.](19|20)\d\d/);
	   var ngaysinh1_length = $("#ngaysinh1").val().length;
		if(pattern.test($("#ngaysinh1").val())) {
			$("#ngaysinh1_error_message").hide();
            error_ngaysinh1 = true;
		} 
        else if(ngaysinh1_length==0)
            {
              $("#ngaysinh1_error_message").html("Vui lòng nhập ngày bắt đầu!");
			$("#ngaysinh1_error_message").show();
			error_ngaysinh1 = false;  
            }
        else {
			$("#ngaysinh1_error_message").html("Ngày không hợp lệ");
			$("#ngaysinh1_error_message").show();
			error_ngaysinh1 = false;
		}
	
	}
        function check_ngaysinh2() {
        var pattern = new RegExp (/(0[1-9]|[12][0-9]|3[01])[- /.](0[1-9]|1[012])[- /.](19|20)\d\d/);
	   var ngaysinh2_length = $("#ngaysinh2").val().length;
		if(pattern.test($("#ngaysinh2").val())) {
			$("#ngaysinh2_error_message").hide();
            error_ngaysinh2 = true;
		} 
        else if(ngaysinh2_length==0)
            {
              $("#ngaysinh2_error_message").html("Vui lòng nhập ngày kết thúc!");
			$("#ngaysinh2_error_message").show();
			error_ngaysinh2 = false;  
            }
        else {
			$("#ngaysinh2_error_message").html("Ngày không hợp lệ");
			$("#ngaysinh2_error_message").show(); 
			error_ngaysinh2 = false;
		}
	
	}

	$("#search").submit(function() {

		error_timkiem = false;
        check_phone(error_timkiem);
		if(error_timkiem == true ) {
            return true;
		}
		else {
                 
            return false;
		}
         
	});
    
	$("#form").submit(function() {

		error_name = false;
		error_mahocvien = false;
        error_phone=false;
        error_email=false;
       
        
		check_name(error_name);
		check_mahocvien(error_mahocvien);
        check_phone(error_phone);
        check_email(error_email);
		if(error_name == true && error_phone == true && error_mahocvien==true &&error_email==true ) {
            alert("Luu thành công !");
		}
		else {
                 
			alert("Lưu thất bại !");
            return false;
		}
         
	});
   
});