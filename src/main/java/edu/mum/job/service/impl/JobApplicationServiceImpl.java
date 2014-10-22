package edu.mum.job.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.mum.job.domain.JobApplication;
import edu.mum.job.repository.JobApplicationRepository;
import edu.mum.job.service.JobApplicationService;

@Component
public class JobApplicationServiceImpl implements JobApplicationService{
	
	@Resource
    private JobApplicationRepository personRepository;
	
	@Autowired
	private JobApplicationRepository jobApplicationRepository;

	@Override
	public JobApplication addJobApplication(JobApplication jobApplication) {
		return jobApplicationRepository.save(jobApplication);				
	}
	


	@Override
	public List<JobApplication> getAllJobApplications() {
		return jobApplicationRepository.getAllApplication();
	}

	@Override
	public JobApplication getJobApplicationById(String id) {			
		return jobApplicationRepository.getJobApplicationById(Integer.parseInt(id));
	}

	
	@Transactional()
    @Override
    public JobApplication update(JobApplication updated) {
		
		System.out.println(updated.toString());
		JobApplication person = personRepository.getJobApplicationById(updated.getId());
		
		//person = personRepository.update(updated);
		personRepository.save(updated);
		
        return person;
    }

	@Override
	public JobApplication delete(JobApplication delete) {		
		jobApplicationRepository.delete(delete);
		return delete;
	}
	
}
