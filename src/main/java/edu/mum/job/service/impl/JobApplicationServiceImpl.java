package edu.mum.job.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.mum.job.domain.JobApplication;
import edu.mum.job.repository.JobApplicationRepository;
import edu.mum.job.service.JobApplicationService;

@Component
public class JobApplicationServiceImpl implements JobApplicationService{
	
	@Autowired
	private JobApplicationRepository jobApplicationRepository;

	@Override
	public void addJobApplication(JobApplication jobApplication) {
		jobApplicationRepository.save(jobApplication);
	}

	@Override
	public List<JobApplication> getAllJobApplications() {
		return jobApplicationRepository.getAllApplication();
	}

	@Override
	public JobApplication getJobApplicationById(String id) {		
		return jobApplicationRepository.getJobApplicationById(Integer.parseInt(id));
	}
	
}
