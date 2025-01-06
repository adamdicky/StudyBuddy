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
	 
	 //Get database connection
	 private Connection getConnection() throws SQLException {
	        return DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
	 }
	 
	 //Method to send homework
	 public boolean addHomework(HomeworkModel homework) {
		 //Validate input: homework must not be null or empty
		 if (homework.getHomework() == null) {
			 return false; //return false if homework (homework subject name) is null or empty
		 }
		 
		 //SQL Query to add
	 }
	 
	 
}
