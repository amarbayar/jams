package edu.mum.job.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



import edu.mum.job.domain.Recruiter;
import edu.mum.job.service.PhaseService;
import edu.mum.job.service.RecruiterService;



@Controller
@RequestMapping("/recruiters")
public class RecruiterController {
	
	@Autowired
	private RecruiterService recruiterService;
	
	@Autowired
	private PhaseService p;
	
	
	@RequestMapping()
	public String list(Model model){		
		model.addAttribute("recruiters",recruiterService.getAllRecruiter());	
		
		//System.out.println(p.getPhase(1).getPhase_type());
		//System.out.println(recruiterService.getRecruiter(1).getEmail());
		
		
		return "recruiters";
	}
	
	
	@RequestMapping(value="/add", method = RequestMethod.GET)
	public String getAddNewCustomerForm(@ModelAttribute("newRecruiter") Recruiter newRecruiter){
		System.out.println("processing");
		return "addRecruiter";
	}

	@RequestMapping(value="/add", method = RequestMethod.POST)
	public String processAddNewRecruiterForm(@ModelAttribute("newRecruiter") Recruiter newRecruiter){
		recruiterService.addRecruiter(newRecruiter);
		return "redirect:/recruiters";
	}
	

}
