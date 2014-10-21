package edu.mum.job.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.mum.job.domain.User;
import edu.mum.job.repository.UserRepository;
import edu.mum.job.service.UserService;

@Service
@Transactional 
public class UserServiceImpl implements UserService{
	
 	@Autowired
	private UserRepository userRepository;
 		
	@Override
	public void addUser(User user) {
		userRepository.save(user);
	}

	@Override
	public List<User> getAllUsers() {
		return userRepository.getAllUsers();
	}

	@Override
	public User checkLogin(String email, String password) {
		User getUser = userRepository.checkLogin(email,password);
		return getUser;
	}

	@Override
	public User getUserDetailsByEmail(String email) {
		System.out.println(userRepository.getUserDetailsByEmail(email).toString());
		return userRepository.getUserDetailsByEmail(email);
	}




}
