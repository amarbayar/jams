package edu.mum.job.service;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.mum.job.domain.Phase;
import edu.mum.job.domain.Recruiter;

@Service
public interface RecruiterService {
	void addRecruiter(Recruiter recruiter);
	List<Recruiter> getAllRecruiter();

	public Recruiter getRecruiter(Integer recruiterID);
	
	
}
