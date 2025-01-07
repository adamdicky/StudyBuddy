package com.example.controller;

import java.sql.*;


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
	 public boolean deleteHomework(HomeworkModel homework) {
		 String query = "DELETE FROM homeworks WHERE homework = ? AND deadline = ? AND classname = ?";
		 try (Connection connection = getConnection();
			  PreparedStatement ps = connection.prepareStatement(query)) {
			 
			 ps.setString(1, homework.getHomework());
			 ps.setString(2, homework.getDeadline());
			 ps.setString(3, homework.getClassname());
			 
			 return ps.executeUpdate() > 0; //return true if delete is successful
		 }
		 
		 catch (SQLException e) {
			 e.printStackTrace();
		 }
		 
		 return false;
	 }
	 
	 //Method to update homework to database
	 public boolean updateHomework(HomeworkModel original, HomeworkModel updated) {
		 String query = "UPDATE homeworks SET homework = ?, deadline = ?, details = ?, classname? WHERE homework = ? AND deadline = ? AND classname = ?";
		 try (Connection connection = getConnection();
			  PreparedStatement ps = connection.prepareStatement(query)) {
			 
			 //new value
			 ps.setString(1, updated.getHomework());
			 ps.setString(2, updated.getDeadline());
			 ps.setString(3, updated.getDetails());
			 ps.setString(4, updated.getClassname());
			 
			 //old value
			 ps.setString(5, updated.getHomework());
			 ps.setString(6, updated.getDeadline());
			 ps.setString(7, updated.getClassname());
			 
			 return ps.executeUpdate() > 0; //return true if update successful
		 }
		 
		 catch (SQLException e) {
			 e.printStackTrace();
		 }
		 
		 return false;
	 }
}
