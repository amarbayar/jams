
/**
 * 
 * @author Sadakul, Shohrab
 *
 */

package edu.mum.job.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.mum.job.domain.JobApplication;

@Service
@Transactional
public interface JobApplicationService {
	/**
	 * 
	 * @param jobApplication
	 * @return
	 */
	JobApplication addJobApplication(JobApplication jobApplication);
	
	/**
	 * 
	 * @return
	 */
	List<JobApplication> getAllJobApplications();
	
	/**
	 * 
	 * @param id
	 * @return
	 */
	JobApplication getJobApplicationById(String id);
	
	/**
	 * 
	 * @param updated
	 * @return
	 */
	public JobApplication update(JobApplication updated);
	
	/**
	 * 
	 * @param deleted
	 * @return
	 */
	public JobApplication delete(JobApplication deleted);
	
	
}
