package com.example.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {

    private UserDAO userDAO;
    private HomeworkDAO homeworkDAO;

    public LoginController() {
        this.userDAO = new UserDAO();
        this.homeworkDAO = new HomeworkDAO(); // Instantiate HomeworkDAO
    }
    
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String processLogin(@RequestParam("name") String name, 
                               @RequestParam("password") String password, 
                               Model model, 
                               HttpSession session) {

        // Call DAO method to get the user's role
        String role = userDAO.getUserRole(name, password);

        if (role != null) {
            // Store the user's name and class in the session
            session.setAttribute("userName", name);
            String userClass = userDAO.getUserClass(name); // Fetch user's class from DAO
            session.setAttribute("userClass", userClass);

            // Fetch all homeworks and add them to the model
            List<HomeworkModel> homeworks = homeworkDAO.getAllHomework();
            model.addAttribute("homeworks", homeworks); // Add homeworks to the model

            // Direct users based on their role
            if ("teacher".equalsIgnoreCase(role)) {
                return "TeacherDashboard"; // Redirect to TeacherDashboard.jsp
            } else if ("admin".equalsIgnoreCase(role)) {
                return "Admin"; // Redirect to AdminDashboard.jsp
            } else {
                // Add static subjects for students
                model.addAttribute("subjects", new String[] {
                    "Additional Mathematics", 
                    "Chemistry", 
                    "English", 
                    "Physics"
                });

                return "StudentDashboard"; // Redirect to Homepage.jsp
            }
        } else {
            model.addAttribute("error", "Invalid name or password!");
            return "Login"; // Stay on login page if authentication fails
        }
    }
    
}
