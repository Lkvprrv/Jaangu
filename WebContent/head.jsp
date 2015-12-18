
<%@page import="com.jaangu.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page language="java" session="true" %>


<header>

  				

        <div class="top-bar bg-light hdden-xs">
          <div class="container">
            <div class="row">
              <div class="col-sm-6 list-inline list-unstyled no-margin hidden-xs">
                <p class="no-margin">
                  Have any questions?
                  <strong>
                    +080 124 880
                              </strong>
                              or mail@xyz.com
                          </p>
                      </div>
                      <div class="pull-right col-sm-6">
                        <ul class="list-inline list-unstyled pull-right">
                          <li class="active">
                            <a href="contact.jsp">
                              <i class="ti-cart">
                              </i>
                              Contact us
                            </a>
                          </li>
                          <li class="active">
                            <a href="faq.jsp">
                              <i class="ti-cart">
                              </i>
                              Faq
                            </a>
                          </li>
                          <li>
                            <a href="login.jsp">
                               <i class="ti-cart">
                              </i>
                             Sign In
                            </a>
                          </li>
                          <li>
                            <a href="registration.jsp">
                              Sign Up
                            </a>
                          </li>
                          <li>
                            <a href="cart.jsp">
                              <i class="ti-shopping-cart">
                              </i>
                              Cart
                            </a>
                          </li>
                        </ul>
                      </div>
                  </div>
              </div>
          </div>
          <div id="nav-wrap">
            <div class="nav-wrap-holder">
              <div class="container" id="nav_wrapper">
                <nav class="navbar navbar-static-top nav-white" id="main_navbar" role="navigation">
                  <!-- Brand and toggle get grouped for better mobile display -->
                  <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#Navbar">
                      <span class="sr-only">
                        Toggle navigation
                                  </span>
                                  <span class="icon-bar">
                                  </span>
                                  <span class="icon-bar">
                                  </span>
                                  <span class="icon-bar">
                                  </span>
                              </button>
                              <a href="index.php" class="navbar-brand logo col-sm-3">
                                <img src="images/dummy_logo.png" alt="" class="img-responsive">
                              </a>
                          </div>
                          <!-- Collect the nav links, forms, and other content for toggling -->
                          <div class="collapse navbar-collapse" id="Navbar">
                            <!-- regular link -->
                            <ul class="nav navbar-nav navbar-right">
                             <li>
                                <a href="result.jsp">
                                  Category 1st
                                </a>
                              </li>
                              <li>
                                <a href="result.jsp">
                                  Category 2nd
                                </a>
                              </li>
                              <li>
                                <a href="result.jsp">
                                  Category 3rd
                                </a>
                              </li>
                              <li>
                                <a href="result.jsp">
                                  Category 4th
                                </a>
                              </li>
                              <li>
                                <a href="result.jsp">
                                  Category 5th
                                </a>
                              </li>
                              <li class="dropdown" id="user_sessions">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">                        
                                  <% 
                                  User user = (User) session.getAttribute("user");
                                  %>
                                 Hello <%= user.getEmail()%>
                                  <span class="caret">
                                  </span>
                                </a>
                                <ul class="dropdown-menu" role="menu">
                                  <li>
                                    <a href="customer_edit.jsp">
                                     Edit Profile
                                    </a>
                                  </li>
                                  <li>
                                    <a href="login.jsp">
                                     Log Out
                                    </a>
                                  </li>
                                  
                                </ul>
                              </li>
                            </ul>
                          </div>
                      </nav>
                  </div>
              </div>
              <!-- /.div nav wrap holder -->
          </div>
          <!-- /#nav wrap -->
      </header>