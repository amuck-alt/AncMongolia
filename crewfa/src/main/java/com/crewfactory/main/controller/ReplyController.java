package com.crewfactory.main.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.crewfactory.main.service.ReplyService;

@Controller
public class ReplyController {
	
	@Autowired
	ReplyService service;
	
	@RequestMapping(value="/crewpeople/reply.do", method=RequestMethod.GET)
	public String list (HttpServletRequest request, Model model) throws Exception {
		model.addAttribute("result", service.selectByWeb());
		return "crewpeople/reply";
	}

}
