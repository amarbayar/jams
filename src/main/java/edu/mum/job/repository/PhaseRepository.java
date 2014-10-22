package edu.mum.job.repository;


import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;



import edu.mum.job.domain.Phase;

@Repository
public interface PhaseRepository extends CrudRepository<Phase, String> {
	
	
	@Query("SELECT p FROM PHASE p WHERE p.phase_id = :phase_id")
	public Phase getPhase(@Param("phase_id") Integer phaseID);
	
	@Query("SELECT p FROM PHASE p")
	public List<Phase> getAllPhase();
	

}
