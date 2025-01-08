package com.example.controller;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;


public class SubmissionDAO {

    private String jdbcURL = "jdbc:mysql://localhost:3306/user_db";
    private String jdbcUsername = "root";
    private String jdbcPassword = "";

   
    static {
        // Load MySQL JDBC driver
        try {
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("MySQL JDBC Driver SubmissionDAO successfully loaded.");
        } catch (ClassNotFoundException e) {
            System.out.println("MySQL JDBC Driver SubmissionDAO not found.");
            e.printStackTrace();
        }
    }



  
    private Connection getConnection() throws SQLException {
        return DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
    }

    public boolean submitHomework(String name, String classname, String studentSubmission) {
        String query = "INSERT INTO homework_submissions (student_submission, name, class) VALUES (?, ?, ?)";
        try (Connection connection = getConnection();
             PreparedStatement ps = connection.prepareStatement(query)) {

            ps.setString(1, studentSubmission);
            ps.setString(2, name);
            ps.setString(3, classname);

            int rowsAffected = ps.executeUpdate();
            return rowsAffected > 0; // Return true if the insertion is successful
        } catch (SQLException e) {
            e.printStackTrace(); // Print the exception stack trace for debugging
        }
        return false; // Return false if an exception occurs
    }

    public boolean insertSubmission(String subject, String details) {
        String query = "INSERT INTO homework_submission (subject, details) VALUES (?, ?)";
        try (Connection connection = getConnection();
             PreparedStatement ps = connection.prepareStatement(query)) {

            ps.setString(1, subject);
            ps.setString(2, details);
            return ps.executeUpdate() > 0; // Return true if insertion was successful
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    
	}

