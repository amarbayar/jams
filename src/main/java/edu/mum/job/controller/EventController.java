package edu.mum.job.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import edu.mum.job.domain.Event;
import edu.mum.job.service.EventService;

@Controller
@RequestMapping("/events")
public class EventController {
	@Autowired
	EventService eventService;
	
	@RequestMapping
	public String getAllEvents(Model model){
		model.addAttribute("events", eventService.getEvents());
		List<Event> evts = eventService.getEvents();
		for(Event e: evts){
			System.out.println(e.getEvent_id() + " " + e.getEvent_desc() + " " + e.getEvent_date() + " " + e.getEvent_appid());
		}
		return "events";
	}
	
	@RequestMapping(value="/new", method=RequestMethod.GET)
	public String initScheduleEvent(@ModelAttribute("newEvent") Event newEvent){
		return "addEvent";
	}
	
	@RequestMapping(value="/new", method=RequestMethod.POST)
	public String scheduleEvent(@ModelAttribute("newEvent") Event newEvent){
		System.out.println("inside POST!");
		eventService.scheduleEvent(newEvent);
		return "redirect:/events";
	}
}
