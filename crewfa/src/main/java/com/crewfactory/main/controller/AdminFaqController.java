package com.crewfactory.main.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.crewfactory.main.domain.FaqDomain;
import com.crewfactory.main.domain.SearchDomain;
import com.crewfactory.main.service.FaqService;

@Controller
public class AdminFaqController {
	
	@Autowired
	FaqService service;
	
	@RequestMapping(value="manager/faq.do", method=RequestMethod.GET)
	public String init(HttpServletRequest request, Model model) throws Exception {

		SearchDomain search = new SearchDomain();
			
		model.addAttribute("result", service.select(search));
		return "/admin/bbs/FaqList";
	}
	
	@RequestMapping(value="manager/faq/write.do", method=RequestMethod.GET)
	public String write(Model model) throws Exception {
		return "/admin/bbs/FaqWrite";
	}
	
	@RequestMapping(value="manager/faq/insert.do", method=RequestMethod.POST)
	public String insert(@ModelAttribute("@form") FaqDomain domain) throws Exception {
		service.insert(domain);
		return "redirect:/manager/faq.do";
	}
	
	@RequestMapping(value="manager/faq/view.do", method=RequestMethod.GET)
	public String view(@RequestParam(value="idx") int idx, Model model) throws Exception {
		model.addAttribute("result", service.view(idx));			
		return "/admin/bbs/FaqView";
	}
	
	@RequestMapping(value="manager/faq/update.do", method=RequestMethod.POST)
	public String update(@ModelAttribute("@form") FaqDomain domain) throws Exception {
		service.update(domain);
		return "redirect:/manager/faq.do";
	}
	
	@RequestMapping(value="/manager/faq/delete.do", method=RequestMethod.GET)
	public String delete(@RequestParam(value="idx") int idx) throws Exception {
		service.delete(idx);
		return "redirect:/manager/faq.do";
	}

}
