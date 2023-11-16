package com.crewfactory.main.controller.home;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.crewfactory.main.service.AnnounceService;
import com.crewfactory.main.service.CKRecruitService;

@Controller
public class HomeController {
		
	@Autowired
	CKRecruitService recruit;
	
	@Autowired
	AnnounceService announce;
    
	@GetMapping(value="/")
	String init(HttpServletRequest request, HttpServletResponse response, HttpSession session, Model model) throws Exception {
		model.addAttribute("recruit", recruit.selectMain());
		model.addAttribute("announce", announce.selectNew());
		
		return "index";		
	}
	
	@GetMapping(value="/introduce/intro.do")
	String introduce (HttpServletRequest request, HttpServletResponse response, HttpSession session, Model model) throws Exception {
		return "intro/intro";		
	}
}
