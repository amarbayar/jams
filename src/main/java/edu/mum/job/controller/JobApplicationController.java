package edu.mum.job.controller;


import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.mum.job.domain.JobApplication;
import edu.mum.job.service.JobApplicationService;



@Controller
@RequestMapping("/application")

public class JobApplicationController {
	
	@Autowired
	private JobApplicationService applicationService;
	
	
	@RequestMapping()
	public String list(Model model){		
		model.addAttribute("applications",applicationService.getAllJobApplications());		
		return "applications";
	}
	

	
	
	@RequestMapping(value="/add", method = RequestMethod.GET)
	public String getAddNewApplicationForm(@ModelAttribute("newJobApplication") JobApplication newJobApplication){
		return "addApplication";
	}

	
	@RequestMapping(value="/add", method = RequestMethod.POST)
	public String processAddNewUserForm(Model model,@ModelAttribute("newJobApplication") @Valid JobApplication newJobApplication,
			BindingResult result){
		
		if(result.hasErrors()){
			return "addApplication";
		}
		
		//User user = userService.getUserDetailsByEmail(newUser.getEmail());
		
		
		applicationService.addJobApplication(newJobApplication);
		
		return "forward:/";
	}
	

	

}
