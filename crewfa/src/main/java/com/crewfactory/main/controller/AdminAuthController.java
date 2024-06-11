package com.crewfactory.main.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.crewfactory.main.domain.AuthDomain;
import com.crewfactory.main.service.AuthService;

@Controller
public class AdminAuthController {
	
	@Autowired
	AuthService as;
	
	@RequestMapping(value="/manager/auth/Auth.do", method=RequestMethod.GET)
	public String init(Model model) throws Exception {
		model.addAttribute("result", as.select() );
		return "/admin/auth/AuthList";
	}
	
	@RequestMapping(value="/manager/auth/AuthWrite.do", method=RequestMethod.GET)
	public String write(Model model) throws Exception {
		return "/admin/auth/AuthWrite";
	}
	
	@RequestMapping(value="/manager/auth/AuthInsert.do", method=RequestMethod.POST)
	public String insert(@ModelAttribute("@manager") AuthDomain ad) throws Exception {
		as.insert(ad);
		return "redirect:/manager/auth/Auth.do";
	}
	
	@RequestMapping(value="/manager/auth/AuthView.do", method=RequestMethod.GET)
	public String view(@RequestParam(value="idx") int idx, Model model) throws Exception {
		model.addAttribute("result", as.view(idx));			
		return "/admin/auth/AuthView";
	}
	
	@RequestMapping(value="/manager/auth/AuthUpdate.do", method=RequestMethod.POST)
	public String update(@ModelAttribute("@manager") AuthDomain ad) throws Exception {
		as.update(ad);
		return "redirect:/manager/auth/Auth.do";
	}
	
	@RequestMapping(value="/manager/auth/AuthDelete.do", method=RequestMethod.GET)
	public String delete(@RequestParam(value="idx") int idx) throws Exception {
		as.delete(idx);
		return "redirect:/manager/auth/Auth.do";
	}	

}
