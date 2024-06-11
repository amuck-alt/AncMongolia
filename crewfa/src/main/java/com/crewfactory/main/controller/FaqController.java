package com.crewfactory.main.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.crewfactory.main.service.FaqService;
import com.crewfactory.main.domain.*;

@Controller
public class FaqController {
	
	@Autowired
	FaqService fs;
	
	@RequestMapping(value="/counsel/faq.do", method=RequestMethod.GET)
	String init (HttpServletRequest request, Model model) throws Exception {
		SearchDomain sd = new SearchDomain();
		sd.setSearchText(request.getParameter("search"));
		sd.setSearchSection(request.getParameter("section"));
			
		model.addAttribute("result", fs.select(sd));	
		return "counsel/faq";
	}
	
	@RequestMapping(value="/counsel/faqv.do", method=RequestMethod.GET)
	String view (@RequestParam(value="idx") int idx, Model model) throws Exception {
		model.addAttribute("result", fs.view(idx));		
		return "counsel/faqv";
	}
}
