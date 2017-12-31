$(function() {
	$("#name_error_message").hide();
	$("#ngaysinh1_error_message").hide();
    $("#phone1_error_message").hide();
    $("#mahocvien1_error_message").hide();
    $("#timkiem1_error_message").hide();
    

	var error_name = false,  error_ngaysinh= false;
    var error_phone = false,error_mahocvien = false,error_timkiem=false;

	$("#name").focusout(function() {
		check_name();
	});
    $("#ngaysinh1").focusout(function() {
		check_ngaysinh();
	});
    $("#mahocvien1").focusout(function() {
		check_mahocvien();
	});
	$("#phone1").focusout(function() {
		check_phone();
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
        else if(name_length < 5 || name_length > 30) {
			$("#name_error_message").html("Tên nằm trong khoảng 5-30 kí tự");
			$("#name_error_message").show();      
			error_name = false;
		}
		else
		{
			$("#name_error_message").hide();
			error_name = true;
		}
			
	}
    function check_mahocvien() {
		var mahocvien_length = $("#mahocvien1").val().length;
        if(mahocvien_length==0)
            {
                $("#mahocvien1_error_message").html("Vui lòng nhập mã học viên!")
                $("#mahocvien1_error_message").show();      
			     error_mahocvien= false;
            }
        else if(mahocvien_length < 5 ||mahocvien_length > 30) {
			$("#mahocvien1_error_message").html("Mã học viên phải đủ 5 kí tự");
			$("#mahocvien1_error_message").show();      
			error_mahocvien = false;
		}
		else
		{
			$("#mahocvien1_error_message").hide();
			error_mahocvien = true;
		}
			
	}
    
	function check_phone() {

		var phone_length = $("#phone1").val().length;
		if(phone_length==10 || phone_length==11 || phone_length==13)
            {
                $("#phone1_error_message").hide();
                error_phone=true;
            }
        else if(phone_length==0)
            {
              $("#phone1_error_message").html("Vui lòng nhập số điện thoại!");
			$("#phone1_error_message").show();
			error_phone = false;  
            }
        else
		{
			$("#phone1_error_message").html("Số điện thoại không hợp lệ!");
			$("#phone1_error_message").show();
			error_phone = false;
            }

	}
    
    function check_ngaysinh() {
        var pattern = new RegExp (/(0[1-9]|[12][0-9]|3[01])[- /.](0[1-9]|1[012])[- /.](19|20)\d\d/);
	   var ngaysinh_length = $("#ngaysinh1").val().length;
		if(pattern.test($("#ngaysinh1").val())) {
			$("#ngaysinh1_error_message").hide();
            error_ngaysinh = true;
		} 
        else if(ngaysinh_length==0)
            {
              $("#ngaysinh1_error_message").html("Vui lòng nhập ngày sinh!");
			$("#ngaysinh1_error_message").show();
			error_ngaysinh = false;  
            }
        else {
			$("#ngaysinh1_error_message").html("Ngay sinh không hợp lệ");
			$("#ngaysinh1_error_message").show();
			error_ngaysinh = false;
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
       
        
		check_name(error_name);
		check_mahocvien(error_mahocvien);
        check_phone(error_phone);
		if(error_name == true && error_phone == true && error_mahocvien==true ) {
            alert("Luu thành công !");
		}
		else {
                 
			alert("Lưu thất bại !");
            return false;
		}
         
	});
   
});