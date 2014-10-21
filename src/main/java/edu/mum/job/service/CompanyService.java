package edu.mum.job.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.mum.job.domain.Company;

@Service
@Transactional
public interface CompanyService 
{
	/*
	 * @param new company object pass from controller
	 * @return no return. Will add company into DB
	 * @see new company added into list
	 * */
	void addCompany(Company company);
	
	/*
	 * @param No Parameter required
	 * @return A list of Company 
	 * @see show company list
	 * */
	List<Company>getAllCompany();
	
	/*
	 * @param Update company object with update data
	 * @return No retrun. Effect only DB based on Companny ID
	 * @see show new Data after update complete
	 * */
	void updateCompany(Company updateCompany);

	void deleteCompany(int id);


}

