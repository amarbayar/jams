package edu.mum.job.controller;


import javax.servlet.http.HttpServletRequest;
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
	public String getHomePage(@ModelAttribute("loginForm") User loginForm, HttpServletRequest request){
		if(request.getSession().getAttribute("loggedUser") == null)
			return "login";
		else
			return "home";
	}

	
	/** For Processing Login Info
	 * @param model			Model Object
	 * @param model			User Object
	 * @param model			BindingResult Object
	 * @return				Login Page
	 */

	
	@RequestMapping(value="/login", method = RequestMethod.POST)
	public String processLoginForm(Model model,@ModelAttribute("loginForm") @Valid User loginForm, 
			BindingResult result, HttpServletRequest request){
		//10-22-14 by Amarbayar. A
		//Adding state management to keep track of user's logged in status
		
		if(result.hasErrors()){
			System.out.println("Error...");
			return "/login";
		}
		
		
		/*Login Success*/
		if(userService.checkLogin(loginForm.getEmail(),loginForm.getPassword()) != null){
			System.out.println("Successful login " + userService.getUserDetailsByEmail(loginForm.getEmail()).getFirstName());
			model.addAttribute("messageNotification","Login Successfull");
			request.getSession().setAttribute("loggedUser", userService.getUserDetailsByEmail(loginForm.getEmail()));
		}
		else{
			System.out.println("Failed login");
			model.addAttribute("messageNotification","Sorry!!! Login Failed");
			request.getSession().removeAttribute("loggedUser");
		}
		return "home";
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
		
		return "forward:/users/login";
	}
	
	//10-22-14 by Amarbayar. A
	//Adding logic to log user out
	@RequestMapping(value="/logout")
	public String logoutUser(Model model, HttpServletRequest request){
		System.out.println("Logged user out");
		request.getSession().removeAttribute("loggedUser");
		return "forward:/";
	}
}
