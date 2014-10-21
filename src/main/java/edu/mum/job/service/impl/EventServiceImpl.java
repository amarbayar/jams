package edu.mum.job.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import edu.mum.job.domain.Event;
import edu.mum.job.repository.EventRepository;
import edu.mum.job.service.EventService;

/*
 * This class implements the EventService interface 
 * The implementation logic relies on calling the EventRepository (which extends CrudRepository) functions
 * By Amarbayar. A
 * */
@Service
@Transactional
public class EventServiceImpl implements EventService{

	@Autowired
	EventRepository eventRepository;
	
	//SCHEDULE EVENT
	@Override
	public void scheduleEvent(Event newEvent) {
		System.out.println("inside schedule event impl! + " + newEvent.getEvent_title());
		eventRepository.save(newEvent);
	}
	
	//REMOVE EVENT
	@Override
	public void removeEvent(Event eventToDelete) {
		eventRepository.delete(eventToDelete);
	}

	//UPDATE EVENT
	@Override
	public void updateEvent(Event updatedEvent) {
		eventRepository.save(updatedEvent);
	}

	//GET ALL EVENTS
	@Override
	public List<Event> getEvents() {
		return eventRepository.getEvents();
	}

	//GET A SPECIFIC EVENT
	@Override
	public Event getEvent(long eventID) {
		return eventRepository.getEvent(eventID);
	}

}
