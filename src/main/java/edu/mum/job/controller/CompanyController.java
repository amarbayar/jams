package edu.mum.job.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import antlr.Parser;
import edu.mum.job.domain.Company;
import edu.mum.job.service.CompanyService;

@Controller
@RequestMapping("/company")
public class CompanyController {
	
	@Autowired
	private CompanyService companyService;
	
	@RequestMapping(value="/add", method = RequestMethod.GET)
	public String getNewCompanyForm(@ModelAttribute("newCompany") Company newCompany)
	{
		return "addCompany";
	}
	
	@RequestMapping(value="/add", method = RequestMethod.POST)
	public String processAddNewCompany(@ModelAttribute("newCompany") Company newCompany)
	{
		companyService.addCompany(newCompany);
		return "success";
	}
	
	@RequestMapping("/list")
	public String companyList(Model model){		
		model.addAttribute("companies",companyService.getAllCompany());		
		return "companies";
	}
	
	@RequestMapping("/delete")
	public String deleteCompany(@RequestParam("cid") String companyId)
	{
		int id = Integer.parseInt(companyId);
		try{
			companyService.deleteCompany(id);
		}
		catch(Exception ex)
		{
			System.out.print("eeeee msg"+ ex);
			return "home";
		}
		return "redirect:/company/list";
	}
	
	
//	public String getAddNewCompanyrForm(@ModelAttribute("newCompany") Company newCompany){
//		return "addCustomer";
//	}
//
//	@RequestMapping(value="/add", method = RequestMethod.POST)
//	public String processAddNewCompanyForm(@ModelAttribute("newCustomer") Customer newCustomer){
//		customerService.addCustomer(newCustomer);
//		return "redirect:/customers";
//	}

}
