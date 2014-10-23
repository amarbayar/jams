package edu.mum.job.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.mum.job.domain.User;
import edu.mum.job.service.EventService;

@Controller
public class HomeController {	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@Autowired
	EventService eventService;
	
	@RequestMapping(value = "/")
	public String getLoginPage(@ModelAttribute("newUser") User newUser, HttpServletRequest request){
		if(request.getSession().getAttribute("loggedUser") == null)
			return "forward:/users/login";
		else
			return "home";
	}
	
	@RequestMapping(value = "/home")
	public String getHomePage(Model model){
		model.addAttribute("events", eventService.getEvents());
		return "home";
	}
}
