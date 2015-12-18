<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<script src="jquery.js" type="text/javascript"></script>  
 <script type="text/javascript">  
          $(registration_form).ready(function(){  
              $(".uname").change(function(){  
                  var customer_name = $(this).val();  
                  if(customer_name.length >= 3){  
                      $(".status").html("<img src='images/loading.gif'><font color=gray> Checking availability...</font>");  
                       $.ajax({  
                          type: "POST",  
                          url: "Register",  
                          data: "customer_name="+ customer_name,  
                          success: function(msg){  
  
                              $(".status").ajaxComplete(function(event, request, settings){  
                                     
                                  $(".status").html(msg);  
  
                              });  
                          }  
                      });   
                  }  
                  else{  
                         
                      $(".status").html("<font color=red>Username should be <b>3</b> character long.</font>");  
                  }  
                    
              });  
          });  
        </script>  
 <script type="text/javascript">
    	function registration_err(){
    		
    		var username=$('#customer_name').val();
    		var pass=$('#customer_password').val();
    		var repeat_pass=$('#repeat_password').val();
    		var email=$('#customer_email').val();
    		var phone=$('#customer_phone').val();
    		
    		if(username==""){
    			alert('Enter your name');
    			return false;
    		}
    			else if (username!="" && pass==""){
    				alert('Enter your password')
    				return false;
    				} else if (username!="" && pass!="" && repeat_pass==""){
    					alert('Repeat your password')
    					return false;
    					} else 
    						if (username!="" && pass!="" && repeat_pass!="" && email==""){						
    						alert('Repeat your password')
    						return false;
    						} else if (username!="" && pass!="" && repeat_pass!="" && email==""){
    							alert('Repeat your email')
    							return false;
    							} else if (username!="" && pass!="" && repeat_pass!="" && email!="" && phone==""){
        							alert('Enter your phone number')
        							return false;
    							}
			$.ajax({
    			
    	        type: 'POST',
    	        url: 'Register',
    	        data: {customer_name:username,customer_password:pass,repeat_password:repeat_pass,customer_email:email,customer_phone:phone},
    	        
    	        success: function(res){
    	       
    	        
    	        	if(res=='1')
    	        		window.location.href='log_in.jsp';
    	        },
    	        error:function(){
    	        	alert('fail');
    	        }
    	    });
 

    	}
    	</script>
 <!-- 
 Password Validation
  -->
 <script type="text/javascript">
 
 $('#repeat_password').keyup(function() {
 
	 if($(this).val() != $('#customer_password').val().substr(0,$(this).val().length))
	 {
	  alert('confirm password not match');
	 }
	});

 </script>
 
 <!-- 
 Email Validation
  -->
 <script type="text/javascript">
 
 $('#customer_email').keyup(function () {
	    var email = $(this).val();
	    if(ValidateEmail(email ) ) {
	    	alert('Invalid email');
	    }
	});

 function ValidateEmail(email) {
     var expr = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{4,6}|[0-9]{1,3})(\]?)$/;
     return expr.test(email);
 };
	
</script>

</body>
</html>