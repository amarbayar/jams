package edu.mum.job.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import edu.mum.job.domain.JobApplication;

@Repository
public interface JobApplicationRepository extends CrudRepository<JobApplication, String>{
	
	// findAll comes with repository
    @Query("SELECT a FROM APPLICATION u")
	public List<JobApplication> getAllApplications();

}
