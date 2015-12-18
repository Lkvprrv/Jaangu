<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <title>
        Kupon - Deals and Coupons bootstrap template
    </title>
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
<%     
         session.removeAttribute("email");
         session.removeAttribute("password");
         session.invalidate();
		%>
<form action="LoginServlet" method="post">
		

    <div class="site-wrapper animsition" data-animsition-in="fade-in" data-animsition-out="fade-out">
      <%@ include file='head.jsp' %>
	  <%@ include file='location.jsp' %>
        <!-- /.search form -->
        <section id="page" class="container mTop-30 mBtm-50">
            <div class="row">
                <div class="col-md-6 col-md-offset-3">
                    <div class="panel-body frameLR bg-white shadow space-sm">

                        <div class="col-md-12">
                            <h3 class="dark-grey">
                    Log In
                  		</h3>
						
                            <div class="form-group">
                                <label>
                                    Email Address
                                </label>
                                <input type="text" name="customer_email" class="form-control"  id="customer_email" value="">
                            </div>

                            <div class="form-group">
                                <label>
                                    Password
                                </label>
                                <input type="password" name="customer_password" class="form-control" id="customer_password" value="">
                            </div>

                            <div class="col-sm-6">
                            <input class="btn btn-primary btn-raised ripple-effect" type="submit" name="Login" value="Sign In">
                              
                        
                            </div>

                             <div class="col-sm-6">
                                <a href="registration.jsp"> Not a user? Click here to Register</a>
                            </div>
                            
					



                        </div>

                        <div class="mBtm-20 visible-xs">
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
</html>