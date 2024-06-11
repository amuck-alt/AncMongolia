package com.crewfactory.main.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.crewfactory.main.domain.VariousDomain;
import com.crewfactory.main.service.VariousService;

@Controller
public class AdminVariousController {
	
	@Autowired
	VariousService service;
	
	@RequestMapping(value="/manager/various.do", method=RequestMethod.GET)
	public String init(Model model) throws Exception {
		model.addAttribute("result", service.select() );
		return "/admin/bbs/VariousList";
	}
	
	@RequestMapping(value="/manager/various/write.do", method=RequestMethod.GET)
	public String write(Model model) throws Exception {
		return "/admin/bbs/VariousWrite";
	}
	
	@RequestMapping(value="/manager/various/insert.do", method=RequestMethod.POST)
	public String insert(@ModelAttribute("@form") VariousDomain domain) throws Exception {
		service.insert(domain);
		return "redirect:/manager/various";
	}
	
	@RequestMapping(value="/manager/various/view.do", method=RequestMethod.GET)
	public String view(@RequestParam(value="idx") int idx, Model model) throws Exception {
		model.addAttribute("result", service.view(idx));			
		return "/admin/bbs/VariousView";
	}
	
	@RequestMapping(value="/manager/various/update.do", method=RequestMethod.POST)
	public String update(@ModelAttribute("@form") VariousDomain domain) throws Exception {
		service.update(domain);
		return "redirect:/manager/various";
	}
	
	@RequestMapping(value="/manager/various/delete.do", method=RequestMethod.GET)
	public String delete(@RequestParam(value="idx") int idx) throws Exception {
		service.delete(idx);
		return "redirect:/manager/various";
	}

}
