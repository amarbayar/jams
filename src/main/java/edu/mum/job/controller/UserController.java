package edu.mum.job.controller;


import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.mum.job.domain.User;
import edu.mum.job.service.UserService;

@Controller
@RequestMapping("/users")

public class UserController {
	
	@Autowired
	private UserService userService;
	
	/** This is default method
	 * @param model			Model Object
	 * @return				All users list
	 */
	
	@RequestMapping()
	public String list(Model model){		
		model.addAttribute("users",userService.getAllUsers());		
		return "users";
	}
	
	/** For Login URL
	 * @param model			User Object
	 * @return				Login Page
	 */

	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String getHomePage(@ModelAttribute("loginForm") User loginForm){		
		return "login";
	}

	
	/** For Processing Login Info
	 * @param model			Model Object
	 * @param model			User Object
	 * @param model			BindingResult Object
	 * @return				Login Page
	 */

	
	@RequestMapping(value="/login", method = RequestMethod.POST)
	public String processLoginForm(Model model,@ModelAttribute("loginForm") @Valid User loginForm, 
			BindingResult result){
		
		
		if(result.hasErrors()){
			System.out.println("Error...");
			return "/login";
		}
		
		
		/*Login Success*/
		if(userService.checkLogin(loginForm.getEmail(),loginForm.getPassword()) != null){
			model.addAttribute("messageNotification","Login Successfull");
		}
		else{
			model.addAttribute("messageNotification","Sorry!!! Login Failed");			
		}
		
		
		return "forward:/";
	}
	
	
	/** User Registration Page
	 * @param model			Model Object
	 * @param model			User Object
	 * @param model			BindingResult Object
	 * @return				Registration Page
	 */
	
	@RequestMapping(value="/add", method = RequestMethod.GET)
	public String getAddNewUserForm(@ModelAttribute("newUser") User newUser){
		return "addUser";
	}

	/** Processing User Registration Info
	 * @param model			Model Object
	 * @param model			User Object by validation
	 * @param model			BindingResult Object
	 * @return				Home Page
	 */
	
	
	@RequestMapping(value="/add", method = RequestMethod.POST)
	public String processAddNewUserForm(Model model,@ModelAttribute("newUser") @Valid User newUser,
			BindingResult result){
		
		if(result.hasErrors()){
			return "addUser";
		}
		
		//User user = userService.getUserDetailsByEmail(newUser.getEmail());
		
		
		userService.addUser(newUser);
		
		return "forward:/";
	}
	

	

}
