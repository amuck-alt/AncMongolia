package com.crewfactory.main.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.crewfactory.main.domain.AuthDomain;
import com.crewfactory.main.service.AuthService;

@Controller
public class AdminAuthController {
	
	@Autowired
	AuthService as;
	
	@GetMapping("/manager/auth/list.do")
	public String init(Model model) throws Exception {
		model.addAttribute("result", as.select() );
		return "/admin/auth/AuthList";
	}
	
	@GetMapping("/manager/auth/write.do")
	public String write(Model model) throws Exception {
		return "/admin/auth/AuthWrite";
	}
	
	@PostMapping("/manager/auth/insert.do")
	public String insert(@ModelAttribute("@manager") AuthDomain ad) throws Exception {
		as.insert(ad);
		return "redirect:/manager/auth/list.do";
	}
	
	@GetMapping("/manager/auth/view.do")
	public String view(@RequestParam(value="idx") int idx, Model model) throws Exception {
		model.addAttribute("result", as.view(idx));			
		return "/admin/auth/AuthView";
	}
	
	@PostMapping("/manager/auth/update.do")
	public String update(@ModelAttribute("@manager") AuthDomain ad) throws Exception {
		as.update(ad);
		return "redirect:/manager/auth/list.do";
	}
	
	@GetMapping("/manager/auth/delete.do")
	public String delete(@RequestParam(value="idx") int idx) throws Exception {
		as.delete(idx);
		return "redirect:/manager/auth/list.do";
	}	

}
