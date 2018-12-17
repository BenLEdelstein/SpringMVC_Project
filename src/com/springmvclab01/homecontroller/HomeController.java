package com.springmvclab01.homecontroller;

import java.util.Date;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.springmvclab01.beans.User;

@Controller
public class HomeController {
	
	@RequestMapping(path="/", method=RequestMethod.GET)
	public ModelAndView displayHomePage() {
		return new ModelAndView("home");
	}
	
	@RequestMapping(path="/form", method=RequestMethod.GET)
	public ModelAndView displayForm(@ModelAttribute("user")User user) {
		return new ModelAndView("form");
	}
	
	@RequestMapping(path="/process-form", method=RequestMethod.POST)
	public ModelAndView processForm(@ModelAttribute("user") @Valid User user, BindingResult errors) {
		if(errors.hasErrors()) { 
			return new ModelAndView("form");
		}
		return new ModelAndView("submission-details");
	}
	@ModelAttribute("date")
	public Date displayDate() {
		return new Date();
	}
}
