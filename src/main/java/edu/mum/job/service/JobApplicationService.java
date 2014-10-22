package edu.mum.job.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.mum.job.domain.JobApplication;


@Service
@Transactional
public interface JobApplicationService {
	void addJobApplication(JobApplication jobApplication);
	List<JobApplication> getAllJobApplications();
	JobApplication getJobApplicationById(String id);
	
}
