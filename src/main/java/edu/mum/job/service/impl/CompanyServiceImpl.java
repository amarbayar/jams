package edu.mum.job.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import antlr.Parser;
import edu.mum.job.domain.Company;
import edu.mum.job.repository.CompanyRepository;
import edu.mum.job.service.CompanyService;

@Component
public class CompanyServiceImpl implements CompanyService {
	
	@Autowired
	private CompanyRepository companyRepository;
	
	@Override
	public void addCompany(Company company) {		
		companyRepository.save(company);
	}

	@Override
	public List<Company> getAllCompany() {		
		return companyRepository.getAllCompany();
	}

	@Override
	public void updateCompany(Company updateCompany) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteCompany(int id) {
		// TODO Auto-generated method stub
		companyRepository.deleteCompany(id);
		
	}

	
	

}
