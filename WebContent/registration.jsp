<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<!-- Mirrored from codenpixel.com/demo/kupon/registration.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 09 Dec 2015 06:59:47 GMT -->
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <title>
        Kupon - Deals and Coupons bootstrap template
    </title>
    <style type="text/css">  
	.flable {  
 	color: gray;  
	}  
  
	.status {  
 	font-family: verdana;  
 	font-size: 12px;  
	}  
  
	.uname {  
 	color: blue;  
	}  
</style>  
    <meta name="generator" content="#" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/themify-icons.css" rel="stylesheet">
    <link href="css/font-awesome.css" rel="stylesheet">
    <link href="owl.carousel/assets/owl.carousel.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/animsition.css" rel="stylesheet">
    <link href="css/plugins.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <!--[if lt IE 9]>
<script src="//html5shim.googlecode.com/svn/trunk/html5.js">
</script>
<![endif]-->
    <link rel="shortcut icon" href="#">
    <link rel="apple-touch-icon" href="#">
    <link rel="apple-touch-icon" sizes="72x72" href="#">
    <link rel="apple-touch-icon" sizes="114x114" href="#">
</head>

<body>
	<form action="RegisterServlet" method="post" id="registration_form">
    	<div class="site-wrapper animsition" data-animsition-in="fade-in" data-animsition-out="fade-out">
        	<%@ include file='head.jsp' %>
			<%@ include file='location.jsp' %>
        	<!-- /.search form -->
        	<section id="page" class="container mTop-30 mBtm-50">
            	<div class="row">
                	<div class="col-sm-12">
                   	  <div class="panel-body frameLR bg-white shadow space-sm">
                        <div class="col-md-6">
                           <h3 class="dark-grey">
                    Signup
                  </h3>
                  		
                            <div class="form-group">
                                <label>
                                    Username
                                </label>
                                <input type="text" name="customer_name" class="form-control" id="customer_name" value=""><span class="status"></span>
                            </div>

                            <div class="form-group">
                                <label>
                                    Password
                                </label>
                                <input type="password" name="customer_password" class="form-control" id="customer_password" value="">
                            </div>

                            <div class="form-group">
                                <label>
                                    Repeat Password
                                </label>
                                <input type="password" name="repeat_password" class="form-control" id="repeat_password"    value="">
                            </div>

                            <div class="form-group">
                                <label>
                                    Email Address
                                </label>
                                <input type="text" name="customer_email" class="form-control" id="customer_email" value="">
                            </div>

                            <div class="form-group">
                                <label>
                                    Phone Number
                                </label>
                                <input type="text" name="customer_phone" class="form-control" id="customer_phone" value="">
                            </div>


                            <div class="col-sm-6">
                                <input type="checkbox" class="checkbox pull-left" />Sigh up for our newsletter
                            </div>

                            <div class="col-sm-6">
                                <input type="checkbox" class="checkbox pull-left" />Send notifications to this email
                            </div>


                        </div>

                        <div class="mBtm-20 visible-xs">
                        </div>

                        <div class="col-md-6">
                            <h3 class="dark-grey">
                    Terms and Conditions
                  </h3>
                            <p>
                                By clicking on "Register" you agree to The Company's' Terms and Conditions
                            </p>
                            <p>
                                While rare, prices are subject to change based on exchange rate fluctuations - should such a fluctuation happen, we may request an additional payment. You have the option to request a full refund or to pay the new price. (Paragraph 13.5.8)
                            </p>
                            <p>
                                Should there be an error in the description or pricing of a product, we will provide you with a full refund (Paragraph 13.5.6)
                            </p>
                            <p>
                                Acceptance of an order by us is dependent on our suppliers ability to provide the product. (Paragraph 13.5.6)
                            </p>

                         
                          <input class='btn btn-primary btn-raised ripple-effect' type="submit"  value="REGISTER" />
                       
                        </div>
 					

                    </div>
                    <!-- /inner wrap -->
                </div>
            </div>

        </section>

        <!-- /#page end -->
        
        <!-- /.CTA -->
       <%@ include file='footer.jsp' %>
       
  
    </div>
    <!-- /animitsion -->
    <!-- JS files -->
    <script src="js/jquery.min.js">
    </script>
    <script src="js/kupon.js">
    </script>
    <script src="js/bootstrap.min.js">
    </script>
    <script src="js/jquery.animsition.min.js">
    </script>
    <script src="owl.carousel/owl.carousel.js">
    </script>
    <script src="js/jquery.flexslider-min.js">
    </script>
    <script src="js/plugins.js">
    </script>
  


    </form>
</body>


<!-- Mirrored from codenpixel.com/demo/kupon/registration.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 09 Dec 2015 06:59:47 GMT -->
</html>