package com.example.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class TeacherDashboardController {

		@RequestMapping("/addhomework")
		//correspond to addhomework in TeacherDashboardADD.jsp
		public String addhomework(@RequestParam("hw") String homework, @RequestParam("dl") String deadline, @RequestParam("dt") String details, @RequestParam("cl") String classname, HttpSession session) {
			String hw = homework;
			String dl = deadline;
			String dt = details;
			String cl = classname;
			
			HomeworkModel homeworkobject = new HomeworkModel(homework, deadline, details, classname);
			
			@SuppressWarnings("unchecked") //suppress warning of cannot guarantee the cast is safe
			List<HomeworkModel> homeworkList = (List<HomeworkModel>) session.getAttribute("homeworklist"); //retrieve cart attb from user session
			if (homeworkList == null) {
				homeworkList = new ArrayList<>(); //initialize empty arraylist to start a new shopping cart session
			}
			
			homeworkList.add(homeworkobject); //adds all the instances from object book (title, bla bla bla) to current session
			session.setAttribute("homeworkobject", homeworkobject); //update session attb with modified cart (the new session)
			
			return "redirect:/TeacherDashboard.jsp";
		}
}
