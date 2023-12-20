package com.crewfactory.main.controller.home;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.crewfactory.main.service.AnnounceService;
import com.crewfactory.main.service.CKRecruitService;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	CKRecruitService recruit;
	
	@Autowired
	AnnounceService announce;
    
	@RequestMapping(value="/")
	String init(HttpServletRequest request, HttpServletResponse response, HttpSession session, Model model) throws Exception {
		logger.info("-------------------------- start --------------------------");
		model.addAttribute("recruit", recruit.selectMain());
		model.addAttribute("announce", announce.selectNew());
		
		return "index";		
	}
	
	@RequestMapping(value="/introduce/intro.do")
	String introduce (HttpServletRequest request, HttpServletResponse response, HttpSession session, Model model) throws Exception {
		return "intro/intro";		
	}
}
