package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


/* This controller handle requests for Home, Index, Profile, About & Contact Pages */

@Controller
public class HomeController {

	// Mapping for About Page
	@RequestMapping("/about")
	public ModelAndView about() {
	ModelAndView mav = new ModelAndView("about"); //using prebuild model of ModelAndView
	mav.addObject("message", "Learn more about us on this page.");
	return mav;
	}
	
	// Mapping for Contact Page
	//allow us to have various subcontrollers inside a controller
	//the @ is annotation, to simplify the controller 
	@RequestMapping("/contact")
	public ModelAndView contact() {
	ModelAndView mav = new ModelAndView("contact");
	mav.addObject("message", "Get in touch with us through this page.");
	return mav;
	}
	
	// Mapping for Index Page to display the form
	@RequestMapping("/index")
	public ModelAndView index() {
	return new ModelAndView("index");
	}
	
	// Mapping for Profile Page to display customer info
	@RequestMapping("/profile")
	public ModelAndView profile(@RequestParam("name") String name, @RequestParam("customerId") String customerId) {
		ModelAndView mav = new ModelAndView("profile");
		mav.addObject("name", name);
		mav.addObject("customerId", customerId);
		return mav;
	}
	
	//@RequestMapping("/checkMALAY") -- SpringMVC allows us to have many controller inside 
	
	//ModelAndView : any simple attributes or view page
	
	/*
	 * 
	 *  @Controller - tells the system that our controller is here
	 *  @RequestMapping - tells the system that this is the URL of the specific controller :: Handles both Get and Post
	 *  @PostMapping - 
	 *  @GetMapping
	 *  @ResponseBody
	 *  @RequestParam - simplified version of request.getParameter
	 *  @ModelAttribute - set the model that u do
	 *  */
	 
	 
}

