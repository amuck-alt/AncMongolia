package com.crewfactory.main.controller.admin;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.crewfactory.main.domain.FaqDomain;
import com.crewfactory.main.domain.ReservationDomain;
import com.crewfactory.main.service.ReservationService;

@Controller
public class AdminReservationController {
	
	@Autowired
	ReservationService service;
	
	@GetMapping("/manager/reservation/list.do")
	public String list (HttpServletRequest request, Model model) throws Exception {
		String cons_status = request.getParameter("cons_status");
		String cons_manager = request.getParameter("cons_manager");
		ReservationDomain domain = new ReservationDomain();
		domain.setCons_status(cons_status);
		domain.setCons_manager(cons_manager);
		model.addAttribute("result", service.select(domain));
		return "/admin/reservation/list";
	}
	
	@GetMapping("/manager/reservation/write.do")
	public String write (Model model) throws Exception {
		return "/admin/reservation/write";
	}
	
	@PostMapping("/manager/reservation/insert.do")
	public String insert (@ModelAttribute("@manager") ReservationDomain domain) throws Exception {
		service.insert(domain);
		return "redirect:/manager/reservation/list.do";
	}
	
	@GetMapping("/manager/reservation/view.do")
	public String view(@RequestParam(value="idx") int idx, Model model) throws Exception {
		model.addAttribute("result", service.view(idx));			
		return "/admin/reservation/view";
	}
	
	@PostMapping("manager/reservation/update.do")
	public String update(@ModelAttribute("@form") ReservationDomain domain) throws Exception {
		int idx = domain.getIdx();
		service.update(domain);
		return "redirect:/manager/reservation/view.do?idx="+idx;
	}
	
	@GetMapping("/mng/reservation/delete.do")
	public String delete(@RequestParam(value="idx") int idx) throws Exception {
		service.delete(idx);
		return "redirect:/manager/reservation/list.do";
	}

}
