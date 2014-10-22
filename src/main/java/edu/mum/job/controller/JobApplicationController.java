package edu.mum.job.controller;


import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.mum.job.domain.JobApplication;
import edu.mum.job.service.CompanyService;
import edu.mum.job.service.JobApplicationService;



@Controller
@RequestMapping("/jobApplication")

public class JobApplicationController {
	
	@Autowired
	private JobApplicationService jobApplicationService;
	@Autowired
	private CompanyService companyService;

	
	
	@RequestMapping()
	public String list(Model model){		
		model.addAttribute("applications",jobApplicationService.getAllJobApplications());		
		return "applications";
	}
	

	
	
	@RequestMapping(value="/add", method = RequestMethod.GET)
	public String getAddNewApplicationForm(Model model,@ModelAttribute("newJobApplication") JobApplication newJobApplication){
		model.addAttribute("companies",companyService.getAllCompany());
		return "newApplication";
	}
	
	
	
	@RequestMapping(value="/edit/{id}", method = RequestMethod.GET)
	public String editApplication(Model model,@PathVariable("id") String applicationId,
			HttpServletRequest request){				
		model.addAttribute("companies",companyService.getAllCompany());
		model.addAttribute("newJobApplication",jobApplicationService.getJobApplicationById(applicationId));
		return "editApplication";
	}

	
	
	
	@RequestMapping(value="/details/{id}", method = RequestMethod.GET)
	public String getApplicationDetails(Model model,@PathVariable("id") String applicationId){				
		model.addAttribute("applicationDetails",jobApplicationService.getJobApplicationById(applicationId));
		return "appliationDetails";
	}
	
	
	
	@RequestMapping(value="/add", method = RequestMethod.POST)
	public String processAddNewUserForm(Model model,@ModelAttribute("newJobApplication") @Valid JobApplication newJobApplication,
			BindingResult result){
		
		if(result.hasErrors()){
			return "addApplication";
		}
		
		jobApplicationService.addJobApplication(newJobApplication);
		
		return "forward:/";
	}
	

	

}
