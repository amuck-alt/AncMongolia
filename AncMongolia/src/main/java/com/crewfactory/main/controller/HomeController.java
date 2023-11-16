package com.crewfactory.main.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


import com.crewfactory.main.service.AnnounceService;
import com.crewfactory.main.service.BlogService;
import com.crewfactory.main.service.CKRecruitService;
import com.crewfactory.main.service.ProfessorService;

@Controller
public class HomeController {
	
	@Autowired
	CKRecruitService recruit;
	
	@Autowired
	AnnounceService announce;
	
	@Autowired
	ProfessorService professor;
	
	@Autowired
	BlogService blog;
    
	@GetMapping("/")
	String init(HttpServletRequest request, HttpServletResponse response, HttpSession session, Model model) throws Exception {

		model.addAttribute("recruit", recruit.selectMain());
		model.addAttribute("announce", announce.selectNew());
		model.addAttribute("professor", professor.selectByWebHome());
		model.addAttribute("moment", blog.selectMomentByHome());
		model.addAttribute("blog", blog.selectBlogByHome());
		
		return "index";		
	}
	
}
