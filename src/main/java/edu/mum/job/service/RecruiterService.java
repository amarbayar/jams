package edu.mum.job.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.mum.job.domain.JobApplication;
import edu.mum.job.domain.Recruiter;

@Service
@Transactional
public interface RecruiterService {
	void addRecruiter(Recruiter recruiter);
	List<Recruiter> getAllRecruiter();	
	List<Recruiter> getAllRecruiterByCompanyId(String companyId);
	
}
