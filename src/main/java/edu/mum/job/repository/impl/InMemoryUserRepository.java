package edu.mum.job.repository.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import edu.mum.job.domain.User;
import edu.mum.job.repository.UserRepository;

@Repository
public class InMemoryUserRepository{


	public <S extends User> S save(S entity) {
		// TODO Auto-generated method stub
		return null;
	}


	public <S extends User> Iterable<S> save(Iterable<S> entities) {
		// TODO Auto-generated method stub
		return null;
	}


	public User findOne(String id) {
		// TODO Auto-generated method stub
		return null;
	}


	public boolean exists(String id) {
		// TODO Auto-generated method stub
		return false;
	}


	public Iterable<User> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	public Iterable<User> findAll(Iterable<String> ids) {
		// TODO Auto-generated method stub
		return null;
	}

	public long count() {
		// TODO Auto-generated method stub
		return 0;
	}


	public void delete(String id) {
		// TODO Auto-generated method stub
		
	}


	public void delete(User entity) {
		// TODO Auto-generated method stub
		
	}


	public void delete(Iterable<? extends User> entities) {
		// TODO Auto-generated method stub
		
	}

	public void deleteAll() {
		// TODO Auto-generated method stub
		
	}


	public List<User> getAllUsers() {
		// TODO Auto-generated method stub
		return null;
	}


	public boolean checkLogin(String emailId) {
		// TODO Auto-generated method stub
		System.out.println("iiiiiiiiiiiiiiiiiiiiiiiiiiii");
		return false;
	}


}
