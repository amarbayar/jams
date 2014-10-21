package edu.mum.job.repository;

import java.util.List;

import org.jboss.logging.Param;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import edu.mum.job.domain.User;




@Repository
public interface UserRepository extends CrudRepository<User, String>{
	
	// findAll comes with repository
    @Query("SELECT u FROM USER u")
	public List<User> getAllUsers();
    
    //@Query("SELECT u FROM USER u where email = :emailId")
    //public boolean checkLogin(@Param(value = "emailId") String emailId);
    
    //@Query("SELECT u FROM USER u where email = :emailId")
    //public User checkLogin(@Param(value = "emailId") String emailId);
    //public User findByEmail(@Param(value = "email") String email);

}
