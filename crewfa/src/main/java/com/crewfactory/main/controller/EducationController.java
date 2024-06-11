package com.crewfactory.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EducationController {
	
	@RequestMapping(value="/education/class1.do")
	String class1(Model model) {
		model.addAttribute("message", "Hellow World");		
		return "education/class1";
	}
	
	@RequestMapping(value="/education/class2.do")
	String class2(Model model) {
		model.addAttribute("message", "Hellow World");		
		return "education/class2";
	}
	
	@RequestMapping(value="/education/class3.do")
	String class3(Model model) {
		model.addAttribute("message", "Hellow World");		
		return "education/class3";
	}
	
	@RequestMapping(value="/education/class4.do")
	String class4(Model model) {
		model.addAttribute("message", "Hellow World");		
		return "education/class4";
	}
}