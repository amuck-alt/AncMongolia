package com.crewfactory.main.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.crewfactory.main.service.ProfessorService;

@Controller
public class IntroduceController {
	
	private static final Logger logger = LoggerFactory.getLogger(IntroduceController.class);
	
	@Autowired
	ProfessorService service;
	
	@RequestMapping(value="/introduce/intro.do")
	String init(Model model) {
		model.addAttribute("message", "Hellow World");		
		return "introduce/intro";
	}
	
	@RequestMapping(value="/introduce/edu.do")
	String edu(Model model) {
		model.addAttribute("message", "Hellow World");		
		return "introduce/edu";
	}
	
	@RequestMapping(value="/introduce/wis.do")
	String wis(Model model) {
		return "introduce/wis";
	}
	
	@RequestMapping(value="/introduce/wid.do")
	String wid(Model model) {
		return "introduce/wid";
	}
	
	@RequestMapping(value="/introduce/pro.do")
	String pro(Model model) throws Exception {
		model.addAttribute("pro", service.selectByWebHome());
		model.addAttribute("prolist", service.selectByWeb());
		return "introduce/pro"; 
	}
	
	@RequestMapping(value="/introduce/facil.do")
	String facil(Model model) {
		return "introduce/facil";
	}
	
	@RequestMapping(value="/introduce/corw.do")
	String corw (Model model) {
		return "introduce/corw";
	}
	
	@RequestMapping(value="/introduce/map.do")
	String map (Model model) {
		return "introduce/map";
	}
	
	@RequestMapping(value="/introduce/professor.do")
	String professor (Model model) throws Exception {
		model.addAttribute("pro", service.selectByWebHome());
		model.addAttribute("prolist", service.selectByWeb());
		return "introduce/professor";
	}
	
	@RequestMapping(value="/introduce/mainpro.do")
	String mainProfessor (Model model) throws Exception {
		logger.info("mainpro =============== start");
		model.addAttribute("pro", service.selectByWebHome());
		model.addAttribute("prolist", service.selectByWeb());
		return "/include/mainpro";
	}
}
