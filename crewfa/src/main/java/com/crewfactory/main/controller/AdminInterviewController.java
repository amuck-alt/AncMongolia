package com.crewfactory.main.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.crewfactory.main.domain.InterviewDomain;
import com.crewfactory.main.service.InterviewService;

@Controller
public class AdminInterviewController {
	
	@Autowired
	InterviewService service;
	
	@RequestMapping(value="manager/interview.do", method=RequestMethod.GET)
	public String init(Model model) throws Exception {
		model.addAttribute("result", service.select() );
		return "/admin/bbs/InterviewList";
	}
	
	@RequestMapping(value="manager/interview/write.do", method=RequestMethod.GET)
	public String write(Model model) throws Exception {
		return "/admin/bbs/InterviewWrite";
	}
	
	@RequestMapping(value="manager/interview/insert.do", method=RequestMethod.POST)
	public String insert(@ModelAttribute("@form") InterviewDomain domain) throws Exception {
		service.insert(domain);
		return "redirect:/manager/interview";
	}
	
	@RequestMapping(value="manager/interview/view.do", method=RequestMethod.GET)
	public String view(@RequestParam(value="idx") int idx, Model model) throws Exception {
		model.addAttribute("result", service.view(idx));			
		return "/admin/bbs/InterviewView";
	}
	
	@RequestMapping(value="manager/interview/update.do", method=RequestMethod.POST)
	public String memupdate(@ModelAttribute("@form") InterviewDomain domain) throws Exception {
		service.update(domain);
		return "redirect:/manager/interview.do";
	}
	
	@RequestMapping(value="/manager/interview/delete.do", method=RequestMethod.GET)
	public String memdelete(@RequestParam(value="idx") int idx) throws Exception {
		service.delete(idx);
		return "redirect:/manager/interview.do";
	}

}
