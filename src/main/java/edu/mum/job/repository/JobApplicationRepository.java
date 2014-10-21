package edu.mum.job.repository;




import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import edu.mum.job.domain.JobApplication;

@Repository
public interface JobApplicationRepository extends CrudRepository<JobApplication, String>{
	
	

}
