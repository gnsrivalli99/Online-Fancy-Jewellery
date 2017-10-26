package org.onlineFancyJewellery.com;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	/*private static final Logger logger = LoggerFactory.getLogger(HomeController.class);*/
	
	
	@RequestMapping(value = {"/","/home","/index"}, method = RequestMethod.GET)
	public ModelAndView home() {
		ModelAndView mv=new ModelAndView("home");
		mv.addObject("greeting", "Welcome To spring Web MVC");
		return mv;
	}
	
	
	/*@RequestMapping(value = {"/test"})
	public ModelAndView test(@RequestParam(value="greeting",required=false) String greeting) {
		
		if(greeting==null){
			greeting="Hello welcome to spring not hibernate";
		}
		ModelAndView mv=new ModelAndView("home");
		mv.addObject("greeting",greeting);
		return mv;
	}
	
	@RequestMapping(value = {"/test/{test}"})
	public ModelAndView test(@PathVariable(value="test") String greeting) {
		
		if(greeting==null){
			greeting="Hello welcome to spring not hibernate";
		}
		ModelAndView mv=new ModelAndView("home");
		mv.addObject("greeting",greeting);
		return mv;
	}*/
	
}
