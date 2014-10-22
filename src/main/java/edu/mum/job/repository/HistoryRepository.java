package edu.mum.job.repository;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;


import edu.mum.job.domain.History;

@Repository
public interface HistoryRepository extends JpaRepository<History, String>{
	
	
	//@Query("SELECT p FROM HISTORY p WHERE p.phase_changed_date = :phaseID")
	@Query("SELECT a FROM HISTORY a where a.phase_changed_date = ?1")
	public History getHistoryByAppId(Integer id);
	
	
	
	@Query("SELECT p FROM HISTORY p")
	public List<History> getAllHistory();
	

}
