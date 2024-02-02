package com.mvc.controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import com.mvc.controller.register2;
import com.mvc.controller.dbconnection;

public class register1 { 
    private String fullname;
	 public String registerUser(register2 register2)
	 {
		 String fullName = register2.getFullName();
		 String email = register2.getEmail();
		 String password = register2.getPassword();
		 
		 Connection con = null;
		 PreparedStatement preparedStatement = null;		 
		 try
		 {
			 con = dbconnection.createconnection();
			 String query = "insert into users(SlNo,fullName,Email,userName,password) values (NULL,?,?,?,?)"; //Insert user details into the table 'USERS'
			 preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
			 preparedStatement.setString(1, fullname);
			 preparedStatement.setString(2, email);
			
			 preparedStatement.setString(3, password);
			 
			 int i= preparedStatement.executeUpdate();
			 
			 if (i!=0)  //Just to ensure data has been inserted into the database
			 return "SUCCESS"; 
		 }
		 catch(SQLException e)
		 {
			e.printStackTrace();
		 }		 
		 return "Oops.. Something went wrong there..!";  // On failure, send a message from here.
	 }
}