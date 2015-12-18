package com.jaangu.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.jaangu.model.User;
import com.jaangu.service.LoginService;

//@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  response.setContentType("text/html");    
	        PrintWriter out = response.getWriter();    
	         
	        //String name = request.getParameter("customer_name");       
	        String email = request.getParameter("customer_email");    
	        String pass = request.getParameter("customer_password");   
	        
	        LoginService loginService = new LoginService();
	        boolean result = loginService.authenticateUser(email, pass);
	        User user = loginService.getUserByUserEmail(email);
	        if(result == true){
	        	out.print("Email or password is wrong");
	        	 RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
	        	 rd.include(request,response);
	        }
	        else{
	        	
	        	request.getSession().setAttribute("user", user);
	        	RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
	        	rd.include(request,response);
	        	
	        }
	  
	}

}
