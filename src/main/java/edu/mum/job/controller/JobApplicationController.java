package edu.mum.job.controller;


import java.util.Date;

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

import edu.mum.job.domain.History;
import edu.mum.job.domain.JobApplication;
import edu.mum.job.service.CompanyService;
import edu.mum.job.service.HistoryService;
import edu.mum.job.service.JobApplicationService;
import edu.mum.job.service.PhaseService;
import edu.mum.job.service.RecruiterService;



@Controller
@RequestMapping("/jobApplication")

public class JobApplicationController {
	
	@Autowired
	private JobApplicationService jobApplicationService;
	@Autowired
	private CompanyService companyService;

	@Autowired
	private PhaseService phaseService;

	@Autowired
	private RecruiterService recruiterService;
	
	@Autowired
	private HistoryService historyService;
	
	
	@RequestMapping()
	public String list(Model model){		
		model.addAttribute("applications",jobApplicationService.getAllJobApplications());		
		model.addAttribute("companies",companyService.getAllCompany());
		model.addAttribute("phases",phaseService.getAllPhase());
		model.addAttribute("recruiters",recruiterService.getAllRecruiter());
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
		model.addAttribute("phases",phaseService.getAllPhase());
		model.addAttribute("recruiters",recruiterService.getAllRecruiter());
		model.addAttribute("newJobApplication",jobApplicationService.getJobApplicationById(applicationId));
		return "editApplication";
	}

	@RequestMapping(value="/update/{id}")
	public String updateApplication(Model model,
			@ModelAttribute("newJobApplication") JobApplication newJobApplication,
			@PathVariable("id") String applicationId,
			HttpServletRequest request){				
		//System.out.println("I came here");
		
		//System.out.println(newJobApplication.toString());
		
		jobApplicationService.update(newJobApplication);
		return "redirect:/jobApplication";
	}
	
	@RequestMapping(value="/delete/{id}", method = RequestMethod.GET)
	public String deleteApplication(Model model,@PathVariable("id") String applicationId,
			HttpServletRequest request){			
		
		JobApplication ja = jobApplicationService.getJobApplicationById(applicationId);
		jobApplicationService.delete(ja);
		String referer = request.getHeader("Referer");
		return "redirect:"+ referer;
	}
	
	
	@RequestMapping(value="/details/{id}", method = RequestMethod.GET)
	public String getApplicationDetails(Model model,@PathVariable("id") String applicationId){				
		model.addAttribute("applicationDetails",jobApplicationService.getJobApplicationById(applicationId));
		return "appliationDetails";
	}
	
	
	
	@RequestMapping(value="/add", method = RequestMethod.POST)
	public String processAddNewUserForm(Model model,@ModelAttribute("newJobApplication") @Valid JobApplication newJobApplication,
			@ModelAttribute("his") History history,
			BindingResult result){
		
		if(result.hasErrors()){
			return "addApplication";
		}
		
		JobApplication jobHis = jobApplicationService.addJobApplication(newJobApplication);
		history.setApp_id(jobHis.getId());	
		history.setPhase_changed_date(new Date("22/05/2014"));
		history.setPhase_id(jobHis.getPhaseId());
		
		historyService.addHistoryApplication(history);
		
		return "forward:/";
	}
	

	

}
