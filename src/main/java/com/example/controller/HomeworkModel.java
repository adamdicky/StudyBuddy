package com.example.controller;


public class HomeworkModel {
	private String homework;
	private String deadline;
	private String details;
	private String classname;
	private String grade;
	
	public HomeworkModel(String hw, String dl, String dt, String cl) {
		this.homework=hw;
		this.deadline=dl;
		this.details=dt;
		this.classname=cl;
	}
	
	public String getHomework() {
		return homework;
	}

	public String getDeadline() {
		return deadline;
	}

	public String getDetails() {
		return details;
	}

	public String getClassname() {
		return classname;
	}

	//getters

	public void setHomework(String homework) {
		this.homework = homework;
	}

	public void setDeadline(String deadline) {
		this.deadline = deadline;
	}

	public void setDetails(String details) {
		this.details = details;
	}

	public void setClassname(String classname) {
		this.classname = classname;
	}

	//setters
}
