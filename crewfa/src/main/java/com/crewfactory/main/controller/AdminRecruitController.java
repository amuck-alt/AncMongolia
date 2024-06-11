package com.crewfactory.main.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.crewfactory.main.domain.RecruitDomain;
import com.crewfactory.main.domain.SearchDomain;
import com.crewfactory.main.service.RecruitService;

@Controller
public class AdminRecruitController {
	
	private static final Logger logger = LoggerFactory.getLogger(AdminRecruitController.class);
	
	@Autowired
	RecruitService service;
		
	@RequestMapping(value="manager/recruit.do", method=RequestMethod.GET)
	public String init(HttpServletRequest request, Model model) throws Exception {
		String section = request.getParameter("section");
		if(section == null) {
			section = "all";
		}
		SearchDomain search = new SearchDomain();
		search.setSearchSection(section);
		model.addAttribute("result", service.select(search));
		return "admin/bbs/RecruitList";
	}
	
	@RequestMapping(value="manager/recruit/write.do", method=RequestMethod.GET)
	public String write(@RequestParam(value="section") String section, Model model) throws Exception {
		model.addAttribute("airline", service.selectAirline());
		return "admin/bbs/RecruitWrite";
	}
	
	@RequestMapping(value="manager/recruit/insert.do", method=RequestMethod.POST)
	public String insert(@ModelAttribute("@form") RecruitDomain rd) throws Exception {
		service.insert(rd);
		return "redirect:/manager/recruit.do";
	}
	
	@RequestMapping(value="manager/recruit/view.do", method=RequestMethod.GET)
	public String view(@RequestParam(value="idx") int idx, Model model) throws Exception {
		model.addAttribute("airline", service.selectAirline());
		logger.info(" ================== " + model.toString());
		model.addAttribute("result", service.view(idx));			
		return "/admin/bbs/RecruitView";
	}
	
	@RequestMapping(value="manager/recruit/update.do", method=RequestMethod.POST)
	public String memupdate(@ModelAttribute("@form") RecruitDomain domain) throws Exception {
		service.update(domain);
		return "redirect:/manager/recruit.do";
	}
	
	@RequestMapping(value="manager/recruit/delete.do", method=RequestMethod.GET)
	public String memdelete(@RequestParam(value="idx") int idx) throws Exception {
		service.delete(idx);
		return "redirect:/manager/recruit.do";
	}

}
