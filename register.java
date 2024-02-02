package com.mvc.controller;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.controller.register2;
import com.mvc.controller.register;

public class register extends HttpServlet {
    private register register;
    private register2 register1;
 
	 public register() {
	 }

	 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Copying all the input parameters in to local variables
		 String fullName = request.getParameter("fullname");
		 String email = request.getParameter("email");
		
		 String password = request.getParameter("password");
		 
		 register = new register();
		//Using Java Beans - An easiest way to play with group of related data
	register.setFullName(fullName);
		 register.setEmail(email);
		
		 register.setPassword(password); 
		 
		register1 register1;
        register1 = new register1();

		 
		
		 
		 
		 if(email.equals("SUCCESS"))   //On success, you can display a message to user on Home page
		 {
			request.getRequestDispatcher("/Home.jsp").forward(request, response);
		 }
		 else   
		 {
			request.setAttribute("errMessage", email);
			request.getRequestDispatcher("/register.jsp").forward(request, response);
		 }
	 }

    private void setFullName(String fullName) {
        throw new UnsupportedOperationException("Not supported yet."); 
    }

    private void setEmail(String email) {
        throw new UnsupportedOperationException("Not supported yet."); 
    }

    private void setPassword(String password) {
        throw new UnsupportedOperationException("Not supported yet."); 
    }
}