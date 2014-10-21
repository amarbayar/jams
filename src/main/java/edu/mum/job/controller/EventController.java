//package edu.mum.job.controller;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.servlet.ModelAndView;
//
//import edu.mum.job.domain.Event;
//import edu.mum.job.service.EventService;
//
//@Controller
//@RequestMapping("/events")
//public class EventController {
//	@Autowired
//	EventService eventService;
//	
//	@RequestMapping
//	public String getAllEvents(Model model){
//		model.addAttribute("events", eventService.findAll());
//		return "events";
//	}
//	
//	@RequestMapping(value="/new", method=RequestMethod.GET)
//	public String initScheduleEvent(){
//		return "addEvent";
//	}
//	
//	@RequestMapping(value="/new", method=RequestMethod.POST)
//	public String scheduleEvent(@ModelAttribute("newEvent") Event newEvent){
//		eventService.scheduleEvent(newEvent);
//		return "redirect:/events";
//	}
//}
