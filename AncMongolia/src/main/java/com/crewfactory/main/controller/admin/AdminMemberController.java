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

import com.crewfactory.main.domain.MemberDomain;
import com.crewfactory.main.service.MemberService;

@Controller
public class AdminMemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(AdminMemberController.class);
	
	@Autowired
	MemberService service;
	
	@RequestMapping(value="/mng/member.do", method=RequestMethod.GET)
	public String member(Model model) throws Exception {
		model.addAttribute("result", service.select() );
		return "/mng/member/MemberList";
	}
	
	@RequestMapping(value="/mng/member/view.do", method=RequestMethod.GET)
	public String memview(@RequestParam(value="idx") int idx, Model model) throws Exception {
		model.addAttribute("result", service.view(idx));			
		
		return "/mng/member/MemberView";
	}
	
	@RequestMapping(value="/mng/member/write.do", method=RequestMethod.GET)
	public String memwrite() throws Exception {			
		return "/mng/member/MemberWrite";
	}
	
	@RequestMapping(value="/mng/member/insert.do", method=RequestMethod.POST)
	public String meminsert(@ModelAttribute("@member") MemberDomain md) throws Exception {
		service.insert(md);
		return "redirect:/mng/member.do";
	}
	
	@RequestMapping(value="/mng/member/update.do", method=RequestMethod.POST)
	public String memupdate(@ModelAttribute("@member") MemberDomain md, HttpServletRequest request) throws Exception {
		logger.info("member update ===============" + md.toString());
		service.update(md);
		return "redirect:/mng/member.do";
	}
	
	@RequestMapping(value="/mng/member/delete.do", method=RequestMethod.GET)
	public String memdelete(@RequestParam(value="idx") int idx) throws Exception {
		service.delete(idx);
		return "redirect:/mng/member.do";
	}
}
