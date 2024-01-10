package com.crewfactory.main.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.crewfactory.main.service.FaqService;
import com.crewfactory.main.domain.*;

@Controller
public class FaqController {
	
	@Autowired
	FaqService fs;
	
	@GetMapping("/counsel/faq.do")
	String init (HttpServletRequest request, Model model) throws Exception {
		String search = request.getParameter("search");
		SearchDomain sd = new SearchDomain();
		if(!"".equals(search) || search != null) {
			sd.setSearchText(search);
		}			
		model.addAttribute("result", fs.select(sd));	
		return "counsel/faq";
	}
	
	@GetMapping("/counsel/faqv.do")
	String view (@RequestParam(value="idx") int idx, Model model) throws Exception {
		model.addAttribute("result", fs.view(idx));		
		return "counsel/faqv";
	}
}
