package com.crewfactory.main.controller.admin;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.crewfactory.main.domain.FaqDomain;
import com.crewfactory.main.domain.SearchDomain;
import com.crewfactory.main.service.FaqService;

@Controller
public class AdminFaqController {
	
	@Autowired
	FaqService service;
	
	@GetMapping("manager/faq.do")
	public String init(HttpServletRequest request, Model model) throws Exception {
		String section = request.getParameter("section");
		SearchDomain search = new SearchDomain();
		
		if(StringUtils.isNotEmpty(section)) {
			search.setSearchSection(section);
		}else {
			search.setSearchSection("all");
		}
		
		model.addAttribute("result", service.select(search));
		return "/mng/bbs/FaqList";
	}
	
	@GetMapping("manager/faq/write.do")
	public String write(Model model) throws Exception {
		return "/mng/bbs/FaqWrite";
	}
	
	@PostMapping("manager/faq/insert.do")
	public String insert(@ModelAttribute("@form") FaqDomain domain) throws Exception {
		service.insert(domain);
		return "redirect:/mng/faq";
	}
	
	@GetMapping("manager/faq/view.do")
	public String view(@RequestParam(value="idx") int idx, Model model) throws Exception {
		model.addAttribute("result", service.view(idx));			
		return "/mng/bbs/FaqView";
	}
	
	@PostMapping("manager/faq/update.do")
	public String update(@ModelAttribute("@form") FaqDomain domain) throws Exception {
		service.update(domain);
		return "redirect:/mng/faq";
	}
	
	@GetMapping("/mng/faq/delete.do")
	public String delete(@RequestParam(value="idx") int idx) throws Exception {
		service.delete(idx);
		return "redirect:/mng/faq";
	}

}
