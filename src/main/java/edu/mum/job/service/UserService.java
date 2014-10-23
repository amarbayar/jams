/**
 * @author Sadakul
 */

package edu.mum.job.service;

import java.util.List;

import edu.mum.job.domain.User;

public interface UserService {
	void addUser(User user);
	List<User> getAllUsers();
	User checkLogin(String email, String password);
	User getUserDetailsByEmail(String email);
}
