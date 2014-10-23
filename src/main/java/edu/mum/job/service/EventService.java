/**
 * @author Amar
 */

package edu.mum.job.service;

import java.util.List;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.mum.job.domain.Event;


public interface EventService {
	/**
	 * 
	 * @param newEvent Function to schedule new event.
	 */
	public void scheduleEvent(Event newEvent);
	
	/**
	 * 
	 * @param newEvent Function to remove an existing event by its ID
	 */
	public void removeEvent(Event newEvent);
	
	
	/**
	 * 
	 * @param updatedEvent Function to update an existing event with updated information
	 */
	public void updateEvent(Event updatedEvent);
	
	
	/**
	 * 
	 * @return Function to retrieve all the events
	 */
	public List<Event> getEvents();
	
	/**
	 * 
	 * @param eventID
	 * @return Function to retrieve a specific event
	 */
	public Event getEvent(long eventID);
}
