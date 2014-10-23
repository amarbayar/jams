package edu.mum.job.repository;

import java.util.List;

import edu.mum.job.domain.Company;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface CompanyRepository extends CrudRepository<Company, String> {
	
	@Query("SELECT c FROM COMPANY c")
	public List<Company> getAllCompany();
	
	@Query("DELETE FROM COMPANY c WHERE c.name = 'ssss'")
	public void deleteCompany(int id);
	
//	@Query("SELECT c FROM COMPANY c WHERE c.company_id = ?1")
//	public Company getCompanyById(Integer id);

}
