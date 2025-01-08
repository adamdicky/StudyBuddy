package com.example.controller;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeworkFilterController {

    private HomeworkDAO homeworkDAO = new HomeworkDAO();

    // Method to filter homework based on the subject passed in the URL
    @RequestMapping(value = "/filterBySubject", method = RequestMethod.GET)
    public String filterBySubject(@RequestParam("subject") String subject, Model model) {
        try {
            // Retrieve all homework records from the database
            List<HomeworkModel> homeworkList = homeworkDAO.getAllHomework();

            // Filter the homework list where the subject matches the passed parameter
            List<HomeworkModel> filteredHomeworks = homeworkList.stream()
                    .filter(homework -> homework.getHomework().equalsIgnoreCase(subject))
                    .collect(Collectors.toList());

            // Add the filtered homework list to the model
            model.addAttribute("homeworks", filteredHomeworks);

            // Dynamically generate the JSP name based on the subject
            String jspPage = "homework-" + subject.toLowerCase().replace(" ", "-");
            return jspPage; // This will dynamically return the JSP page (e.g., homework-chemistry.jsp)

        } catch (Exception e) {
            e.printStackTrace();
            model.addAttribute("errorMessage", "Error fetching filtered homework data.");
        }

        // Return a default page in case of error
        return "HomeworkSubmissionError"; // Can be a generic error page
    }
}

