package com.example.controller;

public class User {
	 	private String name;
	    private String password;
	    private String email;
	    private String role;
	    private String classname;
	    

	    // Default Constructor
	    public User() {}

	    // Parameterized Constructor
	    public User(String name, String password, String email, String role) {
	        this.name = name;
	        this.password = password;
	        this.email = email;
	        this.role = role;
	    }
	    
	    public User(String name, String password, String email, String role, String classname) {
	        this.name = name;
	        this.password = password;
	        this.email = email;
	        this.role = role;
	        this.classname = classname;
	    }

	    // Getter and Setter methods
	    public String getName() {return name;}
	    public void setName(String name) {this.name = name;} 

	    public String getPassword() {return password;}	    
	    public void setPassword(String password) {this.password = password;}

	    public String getEmail() {return email;}
	    public void setEmail(String email) {this.email = email;}

	    public String getRole() {return role;}
	    public void setRole(String role) {this.role = role;}
	    
	    public String getClassname() {return classname;}
	    public void setClassname(String classname) {this.classname = classname;} 
	    
	  
	}