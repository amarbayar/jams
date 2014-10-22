package edu.mum.job.controller;


import java.util.Date;
import java.util.List;

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
import org.springframework.web.bind.annotation.ResponseBody;

import edu.mum.job.domain.History;
import edu.mum.job.domain.JobApplication;
import edu.mum.job.domain.Recruiter;
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
	
	String recentAppDate;
	
	
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
		model.addAttribute("phases",phaseService.getAllPhase());
		model.addAttribute("recruiters",recruiterService.getAllRecruiter());				
		return "newApplication";
	}
	
	
	
	@RequestMapping(value="/edit/{id}", method = RequestMethod.GET)
	public String editApplication(Model model,@PathVariable("id") String applicationId,
			HttpServletRequest request){				
		model.addAttribute("companies",companyService.getAllCompany());
		model.addAttribute("phases",phaseService.getAllPhase());
		List<Recruiter> recruiters =   recruiterService.
				getAllRecruiterByCompanyId(""+jobApplicationService.getJobApplicationById(applicationId).getCompanyId());
		model.addAttribute("recruiters",recruiters);
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
		
		java.util.Date dt = new java.util.Date();
		java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String currentDateTime = sdf.format(dt);
		newJobApplication.setApplicationDate(newJobApplication.getApplicationDate());
		System.out.println("newJobApplication.getApplicationDate(): "+newJobApplication.getApplicationDate());


		
		JobApplication jobHis = jobApplicationService.addJobApplication(newJobApplication);
		History history = new History();
		history.setApp_id(jobHis.getId());	
		history.setPhase_changed_date(currentDateTime);
		history.setPhase_id(jobHis.getPhaseId());
		
		historyService.addHistoryApplication(history);

		
		
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
		//model.addAttribute("histories",historyService.getHistoryByAppId(applicationId));		
		return "appliationDetails";
	}
	
	
	
	@RequestMapping(value="/add", method = RequestMethod.POST)
	public String processAddNewUserForm(Model model,@ModelAttribute("newJobApplication") @Valid JobApplication newJobApplication,
			
			BindingResult result){
		
		if(result.hasErrors()){
			return "addApplication";
		}
		
		java.util.Date dt = new java.util.Date();
		java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String currentDateTime = sdf.format(dt);
		newJobApplication.setApplicationDate(currentDateTime);


		
		JobApplication jobHis = jobApplicationService.addJobApplication(newJobApplication);
		History history = new History();
		history.setApp_id(jobHis.getId());	
		history.setPhase_changed_date(currentDateTime);
		history.setPhase_id(jobHis.getPhaseId());
		
		historyService.addHistoryApplication(history);
		
		return "forward:/jobApplication";
	}
	
	@RequestMapping("/ajaxRequest")
	public @ResponseBody String hello(HttpServletRequest request) {
		String companyId = request.getParameter("companyId");
		StringBuffer sb = new StringBuffer("");
		
		if(companyId == null || companyId.equals(""))
			return "<option value=''>------None------</opton>";
		
		List<Recruiter> recruiters =   recruiterService.getAllRecruiterByCompanyId(companyId);

		if(recruiters != null){			
			String str = new String("");
			for(Recruiter rec : recruiters){
				str += "<option value="+rec.getId()+">"+rec.getFirstName()+"</option>";
			}			
			System.out.println(str);
			return str;
		}
			
				
		
		
		return "<option value=''>------None------</opton>";

	}

	

}
