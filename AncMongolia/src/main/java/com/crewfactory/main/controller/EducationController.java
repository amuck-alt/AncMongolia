package com.crewfactory.main.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class EducationController {
	
	@GetMapping("/education/domestic.do")
	String domestic (HttpServletRequest request, HttpServletResponse response, HttpSession session, Model model) throws Exception {
		return "/education/domestic";		
	}
	
	@GetMapping("/education/overseas.do")
	String overseas (HttpServletRequest request, HttpServletResponse response, HttpSession session, Model model) throws Exception {
		return "/education/overseas";		
	}
	
	@GetMapping("/education/groundcrew.do")
	String groundcrew (HttpServletRequest request, HttpServletResponse response, HttpSession session, Model model) throws Exception {
		return "/education/groundcrew";		
	}
	
	@GetMapping("/education/personal.do")
	String personal (HttpServletRequest request, HttpServletResponse response, HttpSession session, Model model) throws Exception {
		return "/education/personal";		
	}

}
