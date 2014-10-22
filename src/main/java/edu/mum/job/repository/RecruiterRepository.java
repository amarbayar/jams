package edu.mum.job.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;


import edu.mum.job.domain.Recruiter;


@Repository
public interface RecruiterRepository extends CrudRepository<Recruiter, String> {
    @Query("SELECT c FROM RECRUITER c")
	public List<Recruiter> getAllRecruiters();

	
	@Query("SELECT c FROM RECRUITER c WHERE c.id = :id")
	public Recruiter getRecruiter(@Param("id") Integer recruiterID);
	
	

}
