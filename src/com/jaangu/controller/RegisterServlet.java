package com.jaangu.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;
import java.sql.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jaangu.model.User;
import com.jaangu.service.RegisterService;

//@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		 response.setContentType("text/html;charset=UTF-8");
	     PrintWriter out = response.getWriter();
	     
	     Calendar calendar = Calendar.getInstance();
	      java.sql.Date startDate = new java.sql.Date(calendar.getTime().getTime());
	     
	     
	     String name = request.getParameter("customer_name");
	     String email = request.getParameter("customer_email");
	     String password = request.getParameter("customer_password");
	     String permanent_address = "";
	     String shipping_address = "";
	     String phone_no = request.getParameter("customer_phone");
	     int location_id = 0;
	     Date registration_date = startDate;
	    
	     
	     User user = new User(name,email, password,permanent_address,shipping_address,phone_no, location_id,registration_date);
	     
	     try { 
	         RegisterService registerService = new RegisterService();
	         boolean result = registerService.register(user);
	         if(result==true){
	        	 out.print("Not Registered");
	        	 RequestDispatcher rd = request.getRequestDispatcher("registration.jsp");
	        	 rd.include(request,response);
	         }else{
	        	
	        	 RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
	        	 rd.forward(request,response);
	           
	         }
	        
	     } finally {       
	         out.close();
	     }
	}

}
