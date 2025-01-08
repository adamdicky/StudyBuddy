package com.example.controller;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserDAO {

    private String jdbcURL = "jdbc:mysql://localhost:3306/user_db"; // Update DB name if needed
    private String jdbcUsername = "root";
    private String jdbcPassword = "";
    
    static {
        // Load MySQL JDBC driver
        try {
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("MySQL JDBC Driver successfully loaded.");
        } catch (ClassNotFoundException e) {
            System.out.println("MySQL JDBC Driver not found.");
            e.printStackTrace();
        }
    }

    // Get a database connection
    private Connection getConnection() throws SQLException {
        return DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
    }

    // Method to get all users
    public List<User> getAllUsers() {
        List<User> users = new ArrayList<>();
        String query = "SELECT * FROM users";
        try (Connection connection = getConnection();
             PreparedStatement ps = connection.prepareStatement(query);
             ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                User user = new User();
                user.setName(rs.getString("name"));
                user.setPassword(rs.getString("password"));
                user.setEmail(rs.getString("email"));
                user.setRole(rs.getString("role"));
                user.setClassname(rs.getString("className"));
                users.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return users;
    }

    // Method to insert a new user into the database
    public boolean addUser(User user) {
        if (user.getName() == null || user.getName().trim().isEmpty()) {
            return false;
        }

        String checkQuery = "SELECT COUNT(*) FROM users WHERE name = ?";
        String insertQuery = "INSERT INTO users (name, password, email, role, className) VALUES (?, ?, ?, ?, ?)";

        try (Connection connection = getConnection();
             PreparedStatement checkStmt = connection.prepareStatement(checkQuery)) {

            checkStmt.setString(1, user.getName());
            try (ResultSet rs = checkStmt.executeQuery()) {
                if (rs.next() && rs.getInt(1) > 0) {
                    return false;
                }
            }

            try (PreparedStatement insertStmt = connection.prepareStatement(insertQuery)) {
                insertStmt.setString(1, user.getName());
                insertStmt.setString(2, user.getPassword());
                insertStmt.setString(3, user.getEmail());
                insertStmt.setString(4, user.getRole());
                insertStmt.setString(5, user.getClassname());
                int rowsInserted = insertStmt.executeUpdate();
                return rowsInserted > 0;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    // Method to delete a user based on users name, password, email, role
    public boolean deleteUser(String name, String password, String email, String role, String className) {
        String deleteQuery = "DELETE FROM users WHERE name = ? AND password = ? AND email = ? AND role = ? AND className = ?";
        try (Connection connection = getConnection();
             PreparedStatement deleteStmt = connection.prepareStatement(deleteQuery)) {
            deleteStmt.setString(1, name);
            deleteStmt.setString(2, password);
            deleteStmt.setString(3, email);
            deleteStmt.setString(4, role);
            deleteStmt.setString(5, className);
            int rowsDeleted = deleteStmt.executeUpdate();
            return rowsDeleted > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
    
 // Method to update a user based on users name, password, email, role
    public boolean updateUser(String originalEmail, String name, String password, String email, String role, String className) {
        // Prepare the SQL query to update the user
        String updateQuery = "UPDATE users SET name = ?, password = ?, email = ?, role = ?, className = ? WHERE email = ?";

        try (Connection connection = getConnection();
             PreparedStatement stmt = connection.prepareStatement(updateQuery)) {

            // Set parameters for the query
            stmt.setString(1, name);
            stmt.setString(2, password);
            stmt.setString(3, email); // Set the new email
            stmt.setString(4, role);
            stmt.setString(5, className);
            stmt.setString(6, originalEmail); // Find the user based on originalEmail

            // Execute the update query
            int rowsUpdated = stmt.executeUpdate();
            return rowsUpdated > 0; // Return true if rows were updated
        } catch (SQLException e) {
            e.printStackTrace();
            return false; // Return false in case of an error
        }
    }
    
    /*FOR OTHER USES AKA GRADING ETC*/
    
    public List<User> getStudentsByClass(String className) {
        List<User> students = new ArrayList<>();
        String query = "SELECT * FROM users WHERE className = ? AND role = 'Student'";
        
        try (Connection connection = getConnection();
             PreparedStatement ps = connection.prepareStatement(query)) {
            
            ps.setString(1, className);
            ResultSet rs = ps.executeQuery();
            
            while (rs.next()) {
                User student = new User();
                student.setName(rs.getString("name"));
                student.setClassname(rs.getString("className"));
                student.setEmail(rs.getString("email"));
                
                students.add(student);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return students;
    }
    
    public List<StudentSubmission> getStudentSubmissionsForClass(String className) {
        List<StudentSubmission> submissions = new ArrayList<>();
        String query = "SELECT u.name, u.className, hs.student_submission, hs.grade " + "FROM users u " + "LEFT JOIN homework_submissions hs ON u.name = hs.name " + "WHERE u.className = ? AND u.role = 'Student'";
        
        try (Connection connection = getConnection();
             PreparedStatement ps = connection.prepareStatement(query)) {
            
            ps.setString(1, className);
            ResultSet rs = ps.executeQuery();
            
            while (rs.next()) {
                StudentSubmission submission = new StudentSubmission();
                submission.setName(rs.getString("name"));
                submission.setClassName(rs.getString("className"));
                submission.setSubmissionStatus(rs.getString("student_submission"));
                submission.setGrade(rs.getString("grade"));
                submissions.add(submission);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return submissions;
    }

    public boolean updateGrade(String studentName, String className, String grade) {
        String query = "UPDATE homework_submissions SET grade = ? WHERE name = ? AND class = ?";
        
        try (Connection connection = getConnection();
             PreparedStatement ps = connection.prepareStatement(query)) {
            
            ps.setString(1, grade);
            ps.setString(2, studentName);
            ps.setString(3, className);
            
            int rowsUpdated = ps.executeUpdate();
            return rowsUpdated > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
    
    //FROM HAZIQ
  //method for feching name and class homeworkSubmission.jsp
    public User getUserByName(String userName) {
        String query = "SELECT * FROM users WHERE name = ?";
        User user = null;

        try (Connection connection = getConnection();
             PreparedStatement ps = connection.prepareStatement(query)) {
            
            ps.setString(1, userName);
            System.out.println("Executing query: SELECT * FROM users WHERE name = '" + userName + "'");
            
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                user = new User();
                user.setName(rs.getString("name"));
                user.setClassname(rs.getString("className"));
                user.setEmail(rs.getString("email"));
                user.setRole(rs.getString("role"));
                
                System.out.println("User found: " + user.getName());
            } else {
                System.out.println("No user found for userName: " + userName);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return user;
    }

    
    
    	//method for fetching classname
    public String getUserClass(String name) {
        String query = "SELECT className FROM users WHERE name = ?";
        try (Connection connection = getConnection();
             PreparedStatement ps = connection.prepareStatement(query)) {
            
            ps.setString(1, name);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return rs.getString("className");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null; // Return null if not found
    }
    
 // Method to get the role of the user based on username and password
    public String getUserRole(String name, String password) {
        String sql = "SELECT role FROM users WHERE name = ? AND password = ?";
        String role = null;

        try {
            // Establish connection using DriverManager
            try (Connection connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
                 PreparedStatement statement = connection.prepareStatement(sql)) {

                // Set parameters for the SQL query
                statement.setString(1, name);
                statement.setString(2, password);

                // Execute the query and process the result
                try (ResultSet resultSet = statement.executeQuery()) {
                    if (resultSet.next()) {
                        role = resultSet.getString("role"); // Fetch the role from the result
                    }
                }

            } catch (SQLException e) {
                e.printStackTrace();
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return role;
    }
    
}
