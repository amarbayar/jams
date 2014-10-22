package edu.mum.job.repository;




import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import edu.mum.job.domain.JobApplication;
import edu.mum.job.domain.User;

@Repository
//public interface JobApplicationRepository extends CrudRepository<JobApplication, String>{
public interface JobApplicationRepository extends JpaRepository<JobApplication, String>{
	
	@Query("SELECT c FROM JOBAPPLICATION c")
	public List<JobApplication> getAllApplication();
	
	
	@Query("SELECT a FROM JOBAPPLICATION a where a.id = ?1")
	JobApplication getJobApplicationById(Integer id);


	//public JobApplication update(JobApplication updated);


	//public JobApplication update(JobApplication updated);

}
