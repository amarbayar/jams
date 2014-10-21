package edu.mum.job.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.mum.job.domain.JobApplication;
import edu.mum.job.repository.JobApplicationRepository;
import edu.mum.job.service.Application;
import edu.mum.job.service.JobApplicationService;


@Service
@Transactional 
public class JobApplicationServiceImpl implements JobApplicationService{
	
 	@Autowired
	private JobApplicationRepository applicationRepository;



	@Override
	public List<Application> getAllJobApplications() {
		
		return null;
	}

	@Override
	public void addJobApplication(JobApplication jobApplication) {
		applicationRepository.save(jobApplication);
		
	}
 		
}