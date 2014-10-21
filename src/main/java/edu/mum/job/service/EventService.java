//package edu.mum.job.service;
//
//import java.util.List;
//
//import org.springframework.stereotype.Service;
//import org.springframework.transaction.annotation.Transactional;
//
//import edu.mum.job.domain.Event;
//
///*
// * Service interface for the event-related methods
// * The implementing class is: EventServiceImpl
// * By Amarbayar. A
// * */
//
//public interface EventService {
//	//Function to schedule new event. 
//	public void scheduleEvent(Event newEvent);
//	
//	//Function to remove an existing event by its ID
//	public void removeEvent(Event newEvent);
//	
//	//Function to update an existing event with updated information
//	public void updateEvent(Event updatedEvent);
//	
//	//Function to retrieve all the events
//	public List<Event> findAll();
//	
//	//Function to retrieve a specific event
//	public Event findOne(String eventID);
//}
