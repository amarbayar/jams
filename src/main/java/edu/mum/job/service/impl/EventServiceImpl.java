//package edu.mum.job.service.impl;
//
//import java.util.List;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//import org.springframework.transaction.annotation.Transactional;
//
//import edu.mum.job.domain.Event;
//import edu.mum.job.repository.EventRepository;
//import edu.mum.job.service.EventService;
//
///*
// * This class implements the EventService interface 
// * The implementation logic relies on calling the EventRepository (which extends CrudRepository) functions
// * By Amarbayar. A
// * */
//@Service
//@Transactional
//public class EventServiceImpl implements EventService{
//
//	@Autowired
//	EventRepository eventRepository;
//	
//	//SCHEDULE EVENT
//	@Override
//	public void scheduleEvent(Event newEvent) {
//		eventRepository.save(newEvent);
//	}
//	
//	//REMOVE EVENT
//	@Override
//	public void removeEvent(Event eventToDelete) {
//		eventRepository.delete(eventToDelete);
//	}
//
//	//UPDATE EVENT
////	@Override
////	public void updateEvent(Event updatedEvent) {
////		eventRepository.updateEvent(updatedEvent.getEvent_date(), 
////							 		updatedEvent.getEvent_time(), 
////							 		updatedEvent.getEvent_title(), 
////							 		updatedEvent.getEvent_desc(), 
////							 		updatedEvent.getEvent_appid(), 
////							 		updatedEvent.getEvent_appid());
////	}
//
//	//GET ALL EVENTS
//	@Override
//	public List<Event> findAll() {
//		return (List<Event>)eventRepository.findAll();
//	}
//
//	//GET A SPECIFIC EVENT
//	@Override
//	public Event findOne(String eventID) {
//		return (Event)eventRepository.findOne(eventID);
//	}
//
//	@Override
//	public void updateEvent(Event updatedEvent) {
//		// TODO Auto-generated method stub
//		
//	}
//
//}
