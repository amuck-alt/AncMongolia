package com.crewfactory.main.controller.admin;

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

import com.crewfactory.main.domain.CKInterviewDomain;
import com.crewfactory.main.service.CKInterviewService;
import com.crewfactory.main.service.CKRecruitService;

@Controller
public class AdminCKInterviewController {
	private static final Logger logger = LoggerFactory.getLogger(AdminCKInterviewController.class);
	
	@Autowired
	CKInterviewService service;
	
	@Autowired
	CKRecruitService recruit;
	
	@RequestMapping(value="/manager/intv/list.do", method=RequestMethod.GET)
	public String list (HttpServletRequest request, Model model) throws Exception {
		String catenum = request.getParameter("catenum");
		model.addAttribute("resultRecruit", recruit.selectTitle());
		model.addAttribute("result", service.select(catenum));
		return "/admin/intv/list";
	}
	
	@RequestMapping(value="/manager/intv/write.do", method=RequestMethod.GET)
	public String write(HttpServletRequest request,Model model) throws Exception {
		return "/admin/intv/write";
	}
	
	@RequestMapping(value="/manager/intv/view.do", method=RequestMethod.GET)
	public String view (HttpServletRequest request, Model model) throws Exception {
		int idx = Integer.parseInt(request.getParameter("idx"));
		model.addAttribute("result", service.view(idx));
		return "/admin/intv/view";
	}
	
	@RequestMapping(value="manager/intv/insert.do", method=RequestMethod.POST)
	public String insert (@ModelAttribute("@form") CKInterviewDomain domain) throws Exception {
		logger.info(domain.toString());
		service.insert(domain);
		return "redirect:/manager/intv/list.do?catenum=" + domain.getRecruitidx();
	}
	
	@RequestMapping(value="manager/intv/update.do", method=RequestMethod.POST)
	public String update (@ModelAttribute("@form") CKInterviewDomain domain) throws Exception {
		logger.info(domain.toString());
		service.update(domain);
		return "redirect:/manager/intv/list.do?catenum=" + domain.getRecruitidx();
	}
	
	@RequestMapping(value="/manager/intv/delete.do", method=RequestMethod.GET)
	public String delete(@RequestParam(value="idx") int idx, @RequestParam(value="catenum") int recruitidx) throws Exception {
		service.delete(idx);
		return "redirect:/manager/intv/list.do?catenum=" + recruitidx;
	}

}
