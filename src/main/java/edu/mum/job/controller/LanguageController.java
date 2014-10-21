package edu.mum.job.controller;



import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.support.RequestContextUtils;


/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/languages")

public class LanguageController {
	
	private static final Logger logger = LoggerFactory.getLogger(LanguageController.class);
	
	

	
	
	@RequestMapping(value = "/{lang}")
	public String setLanguage(
			HttpServletRequest request,
			HttpServletResponse response,
			@PathVariable("lang") String lang){
		System.out.println("I came here..."+lang);
		
			
			if(lang.equals("fr"))
				RequestContextUtils.getLocaleResolver(request).setLocale(request, response, Locale.FRANCE);
			else
				RequestContextUtils.getLocaleResolver(request).setLocale(request, response, Locale.ENGLISH);
		
		
		
		String referer = request.getHeader("Referer");
	    //return "forward:/"+ referer;
		return "redirect:"+ referer;
	}
	
}
