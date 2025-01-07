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
	 
	 //Method add homework to database
	 public boolean addHomework(HomeworkModel homework) {
		 
		 String query = "INSERT INTO homeworks (homework, deadline, details, classname) VALUES (?, ?, ?, ?)";
		 try (Connection connection = getConnection(); 
			  PreparedStatement ps = connection.prepareStatement(query)) {
			 
			 ps.setString(1, homework.getHomework());
			 ps.setString(2, homework.getDeadline());
			 ps.setString(3, homework.getDetails());
			 ps.setString(4, homework.getClassname());
			 
			 int rowsInserted = ps.executeUpdate();
			 return rowsInserted > 0; //return true if the insert was successful
		 }
		 
		 catch (SQLException e) {
			 e.printStackTrace();
		 }
		 
		 return false;
	 }
	 
	 //Method to delete homework from database
	 public boolean deleteHomework(int id) {
		 String query = "DELETE FROM homeworks WHERE id = ?";
		 try (Connection connection = getConnection();
			  PreparedStatement ps = connection.prepareStatement(query)) {
			 
			 ps.setInt(1, id);
			 
			 int rowsDeleted = ps.executeUpdate();
			 return rowsDeleted > 0; //return true if delete was successful
		 }
		 
		 catch (SQLException e) {
			 e.printStackTrace();
		 }
		 
		 return false;
	 }
	 
	 //Method to update homework to database
	 public boolean updateHomework(int id, HomeworkModel homework) {
		 String query = "UPDATE homeworks SET homework = ?, deadline = ?, details = ?, classname? WHERE id = ?";
		 try (Connection connection = getConnection();
			  PreparedStatement ps = connection.prepareStatement(query)) {
			 
			 ps.setString(1, homework.getHomework());
			 ps.setString(2, homework.getDeadline());
			 ps.setString(3, homework.getDetails());
			 ps.setString(4, homework.getClassname());
			 
			 int rowsUpdated = ps.executeUpdate();
			 return rowsUpdated > 0; //return true if update successful
		 }
		 
		 catch (SQLException e) {
			 e.printStackTrace();
		 }
		 
		 return false;
	 }
}
