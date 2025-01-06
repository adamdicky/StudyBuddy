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
		public String addhomework(@RequestParam("hw") String homework, @RequestParam("dl") String deadline, @RequestParam("dt") String details, @RequestParam("cl") String classname, @RequestParam("tt") String title, HttpSession session) {
			String hw = homework;
			String dl = deadline;
			String dt = details;
			String cl = classname;
			String tt = title;
			
			HomeworkModel homeworkobject = new HomeworkModel(hw, dl, dt, cl, tt);
			
			@SuppressWarnings("unchecked") //suppress warning of cannot guarantee the cast is safe
			List<HomeworkModel> homeworkList = (List<HomeworkModel>) session.getAttribute("homeworkList"); //retrieve cart attb from user session
			if (homeworkList == null) {
				homeworkList = new ArrayList<>(); //initialize empty arraylist to start a new shopping cart session
			}
			
			homeworkList.add(homeworkobject); //adds all the instances from object book (title, bla bla bla) to current session
			session.setAttribute("homeworkList", homeworkList); //update session attb with modified cart (the new session)
			
			return "redirect:/TeacherDashboard.jsp";
		}
		
		@RequestMapping("/TeacherDashboard")
		public String TeacherDashboard(HttpSession session, Model model) {
			@SuppressWarnings("unchecked") //suppress warning of cannot guarantee the cast is safe
			List<HomeworkModel> homeworkList = (List<HomeworkModel>) session.getAttribute("homeworkList"); //retrieve cart attb from user session
			model.addAttribute("homeworkList", homeworkList);
			return "TeacherDashboard";
		}
		
		
		@RequestMapping("/deletehomework")
		public String deletehomework(@RequestParam("del") int index, HttpSession session) {
			@SuppressWarnings("unchecked")
			List<HomeworkModel> homeworkList = (List<HomeworkModel>) session.getAttribute("homeworkList");
			if (homeworkList != null && index < homeworkList.size()) {
				homeworkList.remove(index);
			}
			
			return "redirect:/TeacherDashboard.jsp";
		}
		
		@RequestMapping("/edithomework")
		public String edithomework(@RequestParam("index") int index, Model model, HttpSession session) {
		    @SuppressWarnings("unchecked")
		    List<HomeworkModel> homeworkList = (List<HomeworkModel>) session.getAttribute("homeworkList");
		    
		    if(homeworkList != null && index < homeworkList.size()) {
		        model.addAttribute("homework", homeworkList.get(index));
		        model.addAttribute("index", index);
		    }
		    
		    return "TeacherDashboardADD";
		}
		
		@RequestMapping("/updatehomework")
		public String updateHomework(@RequestParam("index") int index, @RequestParam("hw") String homework, 
		    @RequestParam("dl") String deadline, @RequestParam("dt") String details, 
		    @RequestParam("cl") String classname,@RequestParam("tt") String title, HttpSession session) {
			// Your existing edit logic here
			
			@SuppressWarnings("unchecked")
			List<HomeworkModel> homeworkList = (List<HomeworkModel>) session.getAttribute("homeworkList");
			
			if(homeworkList != null && index < homeworkList.size()) {
				HomeworkModel updateHomework = homeworkList.get(index);
				updateHomework.setHomework(homework);
				updateHomework.setDeadline(deadline);
				updateHomework.setDetails(details);
				updateHomework.setClassname(classname);
				updateHomework.setTitle(title);
			}
			
		    return "redirect:/TeacherDashboard.jsp";
		}
		
		@RequestMapping("/opensubmission")
		public String opensubmission() {
			return "ViewSubmission";
		}
		/*
		@RequestMapping("/edithomework")
		public String edithomework(@RequestParam("index") int index, @RequestParam("hw") String homework, @RequestParam("dl") String deadline, @RequestParam("dt") String details, @RequestParam("cl") String classname, HttpSession session) {
			@SuppressWarnings("unchecked")
			List<HomeworkModel> homeworkList = (List<HomeworkModel>) session.getAttribute("homeworkList");
			
			if(homeworkList != null && index < homeworkList.size()) {
				HomeworkModel updateHomework = homeworkList.get(index);
				updateHomework.setHomework(homework);
				updateHomework.setDeadline(deadline);
				updateHomework.setDetails(details);
				updateHomework.setClassname(classname);
			}
			
			return "redirect:/TeacherDashboard.jsp";
		}
		*/
		
		
		
		
}
