package edu.mum.job.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.mum.job.domain.Recruiter;
import edu.mum.job.repository.RecruiterRepository;
import edu.mum.job.service.RecruiterService;


@Component
public class RecruiterServiceImpl implements RecruiterService {
	
	@Autowired
	private RecruiterRepository recruiterRepository;
	
	public void addRecruiter(Recruiter recruiter){
		recruiterRepository.save(recruiter);
		
	}

	@Override
	public List<Recruiter> getAllRecruiter(){
		return recruiterRepository.getAllRecruiters();
	}
	
	@Override
	public Recruiter getRecruiter(Integer recruiterID){
		
		return recruiterRepository.getRecruiter(recruiterID);
	}
	
	
}
