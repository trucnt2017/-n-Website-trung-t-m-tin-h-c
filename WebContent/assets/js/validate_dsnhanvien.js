$(function() {
	$("#name_error_message").hide();
	$("#ngaysinh1_error_message").hide();
    $("#phone1_error_message").hide();
    $("#mahocvien1_error_message").hide();
    $("#timkiem1_error_message").hide();
    $("#email1_error_message").hide();
    $("#malop_error_message").hide();
    $("#name2_error_message").hide();
    $("#name3_error_message").hide();
    $("#mamon_error_message").hide();
    $("#ngaykhaigiang_error_message").hide();
    $("#ngayketthuc_error_message").hide();
    

	var error_name = false,  error_ngaysinh= false , error_malop= false,error_ngayketthuc= false;
    var error_phone = false,error_mahocvien = false,error_timkiem=false,error_email= false;
    var error_name2 = false , error_name3 = false , error_mamon = false,  error_ngaykhaigiang = false;
    
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
     $("#email1").focusout(function() {
		check_email();
	});
    $("#malop").focusout(function() {
		check_malop();
	});
    
    $("#name2").focusout(function() {
		check_name2();
	});
    $("#name3").focusout(function() {
		check_name3();
	});
    
   $("#mamon").focusout(function() {
		check_mamon();
	});
    $("#ngaykhaigiang").focusout(function() {
		check_ngaykhaigiang();
	});
    $("#ngayketthuc").focusout(function() {
		check_ngayketthuc();
	});
    
    
    function check_ngayketthuc() {
        var pattern = new RegExp (/(0[1-9]|[12][0-9]|3[01])[- /.](0[1-9]|1[012])[- /.](19|20)\d\d/);
	   var ngayketthuc_length = $("#ngayketthuc").val().length;
		if(pattern.test($("#ngayketthuc").val())) {
			$("#ngayketthuc_error_message").hide();
            error_ngayketthuc = true;
		} 
        else if(ngayketthuc_length==0)
            {
              $("#ngayketthuc_error_message").html("Vui lòng nhập ngày kết thúc!");
			$("#ngayketthuc_error_message").show();
			error_ngayketthuc = false;  
            }
        else {
			$("#ngayketthuc_error_message").html("Ngày kết thúc không hợp lệ");
			$("#ngayketthuc_error_message").show();
			error_ngayketthuc = false;
		}
	
	}
    
    
    function check_ngaykhaigiang() {
        var pattern = new RegExp (/(0[1-9]|[12][0-9]|3[01])[- /.](0[1-9]|1[012])[- /.](19|20)\d\d/);
	   var ngaykhaigiang_length = $("#ngaykhaigiang").val().length;
		if(pattern.test($("#ngaykhaigiang").val())) {
			$("#ngaykhaigiang_error_message").hide();
            error_ngaykhaigiang = true;
		} 
        else if(ngaykhaigiang_length==0)
            {
              $("#ngaykhaigiang_error_message").html("Vui lòng nhập ngày khai giảng!");
			$("#ngaykhaigiang_error_message").show();
			error_ngaykhaigiang = false;  
            }
        else {
			$("#ngaykhaigiang_error_message").html("Ngày khai giảng không hợp lệ");
			$("#ngaykhaigiang_error_message").show();
			error_ngaykhaigiang = false;
		}
	
	}
    
    
    function check_mamon() {
		var mamon_length = $("#mamon").val().length;
        if(mamon_length==0)
            {
                $("#mamon_error_message").html("Vui lòng nhập lại!")
                $("#mamon_error_message").show();      
			     error_malop= false;
            }
        else if(malop_length < 5 ||malop_length > 30) {
			$("#mamon_error_message").html("Mã phải đủ 5 kí tự");
			$("#mamon_error_message").show();      
			error_mamon = false;
		}
		else
		{
			$("#mamon_error_message").hide();
			error_mamon = true;
		}
			
	}
    
    
    function check_name3() {
		var name3_length = $("#name3").val().length;
        if(name3_length==0)
            {
                $("#name3_error_message").html("Vui lòng nhập tên!")
                $("#name3_error_message").show();      
			     error_name3 = false;
            }
        else if(name_length < 5 || name_length > 30) {
			$("#name3_error_message").html("Tên nằm trong khoảng 5-30 kí tự");
			$("#name3_error_message").show();      
			error_name3 = false;
		}
		else
		{
			$("#name3_error_message").hide();
			error_name3 = true;
		}
			
	}
    
    
    function check_name2() {
		var name2_length = $("#name2").val().length;
        if(name2_length==0)
            {
                $("#name2_error_message").html("Vui lòng nhập tên!")
                $("#name2_error_message").show();      
			     error_name2 = false;
            }
        else if(name_length < 5 || name_length > 30) {
			$("#name2_error_message").html("Tên nằm trong khoảng 5-30 kí tự");
			$("#name2_error_message").show();      
			error_name2 = false;
		}
		else
		{
			$("#name2_error_message").hide();
			error_name2 = true;
		}
			
	}
 
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
    
    function check_malop() {
		var malop_length = $("#malop").val().length;
        if(malop_length==0)
            {
                $("#malop_error_message").html("Vui lòng nhập lại!")
                $("#malop_error_message").show();      
			     error_malop= false;
            }
        else if(malop_length < 5 ||malop_length > 30) {
			$("#malop_error_message").html("Mã phải đủ 5 kí tự");
			$("#malop_error_message").show();      
			error_malop = false;
		}
		else
		{
			$("#malop_error_message").hide();
			error_malop = true;
		}
			
	}
    
    
    
    function check_mahocvien() {
		var mahocvien_length = $("#mahocvien1").val().length;
        if(mahocvien_length==0)
            {
                $("#mahocvien1_error_message").html("Vui lòng nhập lại!")
                $("#mahocvien1_error_message").show();      
			     error_mahocvien= false;
            }
        else if(mahocvien_length < 5 ||mahocvien_length > 30) {
			$("#mahocvien1_error_message").html("Mã phải đủ 5 kí tự");
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
			$("#ngaysinh1_error_message").html("Ngày sinh không hợp lệ");
			$("#ngaysinh1_error_message").show();
			error_ngaysinh = false;
		}
	
	}
    function check_email() {
		var pattern = new RegExp(/^[+a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/i);
	   var email_length = $("#email1").val().length;
		if(pattern.test($("#email1").val())) {
			$("#email1_error_message").hide();
            error_email = true;
		} 
        else if(email_length==0)
            {
              $("#email1_error_message").html("Vui lòng nhập email!");
			$("#email1_error_message").show();
			error_email = false;  
            }
        else {
			$("#email1_error_message").html("Email không hợp lệ");
			$("#email1_error_message").show();
			error_email = false;
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
            alert("Lưu thành công !");
		}
		else {
                 
			alert("Lưu thất bại !");
            return false;
		}
         
	});
   
});