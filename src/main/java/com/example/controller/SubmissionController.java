package com.example.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class SubmissionController {


	@RequestMapping("/Homepage")  
    public String Homepage() {
        return "Homepage";  
    }
	

    @RequestMapping("/homework/submission")
    public String submissionHomeworkk() {
        return "homeworkSubmission";  
    }
    private HomeworkDAO homeworkDAO = new HomeworkDAO(); // For fetching homework details
    private SubmissionDAO submissionDAO = new SubmissionDAO(); // For inserting submissions
    private UserDAO userDAO = new UserDAO();
    
    
    @RequestMapping(value = "/submitHomework", method = RequestMethod.POST)
    public String submitHomework(@RequestParam("submission") String studentSubmission, 
                                  HttpSession session, 
                                  Model model) {
        // Retrieve user's name and class from the session
        String name = (String) session.getAttribute("userName");
        String classname = (String) session.getAttribute("userClass");

        if (name == null || classname == null) {
            // If user is not logged in or session expired, redirect to login page
            model.addAttribute("error", "Session expired. Please log in again.");
            return "Login";
        }

        // Submit the homework
        boolean success = submissionDAO.submitHomework(name, classname, studentSubmission);

        if (success) {
            // If submission is successful, show success page
            model.addAttribute("message", "Homework submitted successfully!");
            return "HomeworkSubmissionSuccess"; // Redirect to submissionSuccess.jsp
        } else {
            // If submission fails, show an error page
            model.addAttribute("errorMessage", "Error submitting homework.");
            return "HomeworkSubmissionError"; // Redirect to error.jsp
        }
    }
}