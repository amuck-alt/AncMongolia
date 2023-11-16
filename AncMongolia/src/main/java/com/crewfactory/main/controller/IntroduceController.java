package com.crewfactory.main.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import com.crewfactory.main.service.ProfessorService;

@Controller
public class IntroduceController {
	
	@Autowired
	ProfessorService service;
	
	@GetMapping("/introduce/intro.do")
	String init(Model model) {	
		return "introduce/intro";
	}
	
	@GetMapping("/introduce/edu.do")
	String edu(Model model) {
		model.addAttribute("message", "Hellow World");		
		return "introduce/edu";
	}
	
	@GetMapping("/introduce/wis.do")
	String wis(Model model) {
		return "introduce/wis";
	}
	
	@GetMapping("/introduce/wid.do")
	String wid(Model model) {
		return "introduce/wid";
	}
	
	@GetMapping("/introduce/pro.do")
	String pro(Model model) throws Exception {
		model.addAttribute("pro", service.selectByWebHome());
		model.addAttribute("prolist", service.selectByWeb());
		return "introduce/pro"; 
	}
	
	@GetMapping("/introduce/facil.do")
	String facil(Model model) {
		return "introduce/facil";
	}
	
	@GetMapping("/introduce/corw.do")
	String corw (Model model) {
		return "introduce/corw";
	}
	
	@GetMapping("/introduce/map.do")
	String map (Model model) {
		return "introduce/map";
	}
}
