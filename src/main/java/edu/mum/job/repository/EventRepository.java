package edu.mum.job.repository;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import edu.mum.job.domain.Event;

/*
 * Repository which extends the "CrudRepository" and handles all the DB calls here. 
 * The "EventServiceImpl" class has functions that call the methods in this Repository interface.
 * By Amarbayar. A
 * */

@Repository
public interface EventRepository extends CrudRepository<Event, String> {	
	
	@Query("SELECT e FROM EVENT e WHERE e.event_id = :event_id")
	public Event getEvent(@Param("event_id") long event_id);
	
	@Query("SELECT e FROM EVENT e")
	public List<Event> getEvents();
}
