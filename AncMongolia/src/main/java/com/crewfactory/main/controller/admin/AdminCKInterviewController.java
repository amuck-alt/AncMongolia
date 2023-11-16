package com.crewfactory.main.controller.admin;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
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
	
	@GetMapping("/manager/intv/list.do")
	public String list (HttpServletRequest request, Model model) throws Exception {
		String catenum = request.getParameter("catenum");
		model.addAttribute("resultRecruit", recruit.selectTitle());
		model.addAttribute("result", service.select(catenum));
		return "/admin/intv/list";
	}
	
	@GetMapping("/manager/intv/write.do")
	public String write(HttpServletRequest request,Model model) throws Exception {
		return "/admin/intv/write";
	}
	
	@GetMapping("/manager/intv/view.do")
	public String view (HttpServletRequest request, Model model) throws Exception {
		int idx = Integer.parseInt(request.getParameter("idx"));
		model.addAttribute("result", service.view(idx));
		return "/admin/intv/view";
	}
	
	@PostMapping("manager/intv/insert.do")
	public String insert (@ModelAttribute("@form") CKInterviewDomain domain) throws Exception {
		logger.info(domain.toString());
		service.insert(domain);
		return "redirect:/manager/intv/list.do?catenum=" + domain.getRecruitidx();
	}
	
	@PostMapping("manager/intv/update.do")
	public String update (@ModelAttribute("@form") CKInterviewDomain domain) throws Exception {
		logger.info(domain.toString());
		service.update(domain);
		return "redirect:/manager/intv/list.do?catenum=" + domain.getRecruitidx();
	}
	
	@GetMapping("/manager/intv/delete.do")
	public String delete(@RequestParam(value="idx") int idx, @RequestParam(value="catenum") int recruitidx) throws Exception {
		service.delete(idx);
		return "redirect:/manager/intv/list.do?catenum=" + recruitidx;
	}

}
