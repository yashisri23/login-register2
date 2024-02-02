package com.mvc.controller;
 
import java.sql.Connection;
import java.sql.DriverManager;
 
public class dbconnection {
 public static Connection createConnection()
 {
     Connection con = null;
     String url = "jdbc:derby://localhost:1527/user [ on APP]"; //MySQL URL followed by the database name
     String username = " "; 
     String password = " "; 
     System.out.println("In dbconnection.java class ");
      
       try
         {
            Class.forName("org.apache.derby.jdbc.ClientDriver"); 
       
            
         con = DriverManager.getConnection("jdbc:derby://localhost:1527/user"," "," "); //attempting to connect to MySQL database
         System.out.println("Printing connection object "+con);
     } 
     catch (Exception e) 
     {
        e.printStackTrace();
     }   
     return con; 
 }
}