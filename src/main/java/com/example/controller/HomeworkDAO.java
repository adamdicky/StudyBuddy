package com.example.controller;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class HomeworkDAO {
	
	 private String jdbcURL = "jdbc:mysql://localhost:3306/user_db"; // Update DB name if needed
	 private String jdbcUsername = "root";
	 private String jdbcPassword = "";
	 
	 static {
		 // Load MySQL JDBC driver
		 try {
			 Class.forName("com.mysql.jdbc.Driver");
			 System.out.println("MySQL JDBC Driver successfully loaded.");
	     } 
		 
		 catch (ClassNotFoundException e) {
	            System.out.println("MySQL JDBC Driver not found.");
	            e.printStackTrace();
		 }
	 }
	 
	 private Connection getConnection() throws SQLException {
	        return DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
	 }
}
