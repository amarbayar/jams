package edu.mum.job.repository;

import java.util.List;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import edu.mum.job.domain.User;




@Repository
public interface UserRepository extends CrudRepository<User, String>{
	
	// findAll comes with repository
    @Query("SELECT u FROM USER u")
	public List<User> getAllUsers();
    
    @Query("SELECT u FROM USER u where u.email = ?1 and u.password=?2")
    public User checkLogin(String email, String password);
    
    @Query("SELECT u FROM USER u where u.email = ?1")
    public User getUserDetailsByEmail(String email);


}
