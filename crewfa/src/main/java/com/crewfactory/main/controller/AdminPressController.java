package com.crewfactory.main.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.crewfactory.main.domain.PressDomain;
import com.crewfactory.main.service.PressService;

@Controller
public class AdminPressController {
	
	@Autowired
	PressService service;
	
	@RequestMapping(value="/manager/news.do", method=RequestMethod.GET)
	public String init(@RequestParam Map<String, String> paramMap, Model model) throws Exception {
		model.addAttribute("result", service.selectAll() );
		return "/admin/bbs/NewsList";
	}
	
	@RequestMapping(value="/manager/news/write.do", method=RequestMethod.GET)
	public String write(Model model) throws Exception {
		return "/admin/bbs/NewsWrite";
	}
	
	@RequestMapping(value="/manager/news/insert.do", method=RequestMethod.POST)
	public String insert(@ModelAttribute("@form") PressDomain domain) throws Exception {
		service.insert(domain);
		return "redirect:/manager/news.do";
	}
	
	@RequestMapping(value="/manager/news/view.do", method=RequestMethod.GET)
	public String view(@RequestParam(value="idx") int idx, Model model) throws Exception {
		model.addAttribute("result", service.view(idx));			
		return "/admin/bbs/NewsView";
	}
	
	@RequestMapping(value="/manager/news/update.do", method=RequestMethod.POST)
	public String update(@ModelAttribute("@form") PressDomain domain) throws Exception {
		service.update(domain);
		return "redirect:/manager/news.do";
	}
	
	@RequestMapping(value="/manager/news/delete.do", method=RequestMethod.GET)
	public String delete(@RequestParam(value="idx") int idx) throws Exception {
		service.delete(idx);
		return "redirect:/manager/news.do";
	}

}
