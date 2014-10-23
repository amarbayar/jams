/**
 * 
 * @author Shohrab
 *
 */

package edu.mum.job.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.mum.job.domain.Company;

@Service
@Transactional


public interface CompanyService 
{
	/**
	 * 
	 * @param company Add new company
	 */
	void addCompany(Company company);
	
	/**
	 * 
	 * @return list of company objects
	 */
	List<Company>getAllCompany();
	
	/**
	 * 
	 * @param updateCompany update company using update Objects
	 */
	void updateCompany(Company updateCompany);
	
	/**
	 * 
	 * @param id delete a company
	 */
	void deleteCompany(int id);
}

