$(function() {
	$("#name_error_message").hide();
    $("#phone_error_message").hide();
  
	var error_name = false;
    var error_phone = false;

	$("#tendk").focusout(function() {
		check_name();
	});
    $("#sdt").focusout(function() {
    	check_phone();
	});
    
    
    function check_name() {
		var name_length = $("#tendk").val().length;
        if(name_length==0)
            {
                $("#name_error_message").html("This is a required field!")
                $("#name_error_message").show();      
			     error_name = false;
            }
        else if(name_length < 5 || name_length > 30) {
			$("#name_error_message").html("Must be between 5-30 characters");
			$("#name_error_message").show();      
			error_name = false;
		}
		else
		{
			$("#name_error_message").hide();
			error_name = true;
		}
			
	}
    
	function check_phone() {

		var phone_length = $("#sdt").val().length;
		if(phone_length==10 || phone_length==11 || phone_length==13)
            {
                $("#phone_error_message").hide();
                error_phone=true;
            }
        else if(phone_length==0)
            {
              $("#phone_error_message").html("This is a required field!");
			$("#phone_error_message").show();
			error_phone = false;  
            }
        else
		{
			$("#phone_error_message").html("Wrong phone number!");
			$("#phone_error_message").show();
			error_phone = false;
            }

	}
    
    
    
	$("#form").submit(function() {

		error_name = false;
        error_phone=false;
        

		check_name(error_name);
        check_phone(error_phone);
		if(error_name == true && error_phone == true  ) {
            alert("You have successfully registered !");
		}
		else {
                 
			alert("You have failed to register !");
            return false;
		}
         
	});
   
});