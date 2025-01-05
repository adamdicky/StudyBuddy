package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class TeacherDashboardController {

		@RequestMapping("/addhomework")
		//correspond to addhomework in TeacherDashboardADD.jsp
		public String addhomework(@RequestParam("hw") String homework, @RequestParam("dl") String deadline, @RequestParam("dt") String details, @RequestParam("cl") String classname) {
			String hw = homework;
			String dl = deadline;
			String dt = details;
			String cl = classname;
			
			HomeworkModel homeworkobject = new HomeworkModel(homework, deadline, details, classname);
			
			return "redirect:/"
		}
}
