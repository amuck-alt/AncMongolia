package com.crewfactory.main.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.crewfactory.main.service.BefMemberService;

@Controller
public class AdminBefMemberController {

	@Autowired
	BefMemberService service;
	
	@RequestMapping(value="/manager/befmem.do", method=RequestMethod.GET)
	public String init(Model model) throws Exception {
		model.addAttribute("result", service.select() );
		return "/admin/member/BefMemList";
	}
}
