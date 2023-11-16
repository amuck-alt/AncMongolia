package com.crewfactory.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SupportController {
	
	@GetMapping("support/system.do")
	String system (Model model) {	
		return "support/system";
	}
	
	@GetMapping("support/jobforairportinjapan.do")
	String jobforairportinjapan (Model model) {	
		return "support/jobforairportinjapan";
	}

}
