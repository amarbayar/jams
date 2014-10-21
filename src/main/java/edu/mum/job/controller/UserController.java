package edu.mum.job.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import edu.mum.job.service.UserService;

@Controller
@RequestMapping("/users")

public class UserController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping()
	public String list(Model model){		
		//model.addAttribute("users",userService.getAllUsers());		
		return "users";
	}
	

	/*
	@RequestMapping(value="/login", method = RequestMethod.POST)
	public String processAddNewCustomerForm(@ModelAttribute("loginForm") User loginForm){
		//userService.checkLogin(loginForm.getEmail());	
		//userService.findByEmailAddress(loginForm.getEmail());
		
		return "redirect:/users/add";
	}
	
	
	
	
	
	@RequestMapping(value="/add", method = RequestMethod.GET)
	public String getAddNewUserForm(@ModelAttribute("newUser") User newUser){
		return "addUser";
	}

	@RequestMapping(value="/add", method = RequestMethod.POST)
	public String processAddNewUserForm(@ModelAttribute("newUser") User newUser){
		//userService.addUser(newUser);
		return "redirect:/users";
	}
	
	*/
	

}
