package com.crewfactory.main.controller.home;

import java.util.HashMap;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import com.crewfactory.main.domain.CounselDomain;
import com.crewfactory.main.service.CounselService;

@Controller
public class CounselController {
	
	@Autowired
	CounselService service;
	
	@PostMapping("/counsel/request.do")
	public String counsel (HttpServletRequest request, @ModelAttribute("@counsel") CounselDomain cd, Model model) throws Exception {
		service.insert(cd);
		return "redirect:/counsel/complete.do";
	}
	
	@RequestMapping(value="/counsel/complete.do")
	public String complete () throws Exception {
		return "/counsel/complete";
	}
	
	@PostMapping("/counsel/specclassok.do")
	public String specclassdo (HttpServletRequest request, @ModelAttribute("@specclass") CounselDomain cd, Model model) throws Exception {
		String reurl = request.getParameter("reurl");
		if (reurl.isEmpty()) {
			reurl = "/";
		}
		boolean result = service.insert(cd);
		if(result) {
			return "redirect:"+reurl+"?result=ok";
		}else {
			return "redirect:"+reurl+"?result=false";
		}		
	}
	
	@ResponseBody
	@PostMapping("/quick/counsel.do")
	public void quick (@RequestBody HashMap<String, Object> map) throws Exception {
		String regip = map.get("regip").toString();
		String phone = map.get("phone").toString();
		String age = map.get("age").toString();
		String name = map.get("name").toString();
		String hopse = map.get("hopse").toString();
		String gubun = map.get("gubun").toString();
		String stat = map.get("stat").toString();
		String domain = map.get("domain").toString();
		CounselDomain quick = new CounselDomain();
		quick.setRegip(regip);
		quick.setDomain(domain);
		quick.setPhone(phone);
		quick.setAge(age);
		quick.setName(name);
		quick.setHopse(hopse);
		quick.setGubun(gubun);
		quick.setStat(stat);
		
		service.insert(quick);
		
	
	}
	
	@ResponseBody
	@PostMapping("/quick/subscribe.do")
	public void subcribe (@RequestBody HashMap<String, Object> map) throws Exception {
		String regip = map.get("regip").toString();
		String phone = map.get("phone").toString();
		String age = map.get("age").toString();
		String email = map.get("email").toString();
		String name = map.get("name").toString();
		String hopse = map.get("hopse").toString();
		String gubun = map.get("gubun").toString();
		String stat = map.get("stat").toString();
		String domain = map.get("domain").toString();
		CounselDomain quick = new CounselDomain();
		quick.setRegip(regip);
		quick.setDomain(domain);
		quick.setPhone(phone);
		quick.setAge(age);
		quick.setEmail(email);
		quick.setName(name);
		quick.setHopse(hopse);
		quick.setGubun(gubun);
		quick.setStat(stat);
		
		service.insert(quick);
	
	}
	
	@GetMapping("/counsel/online.do")
	public String online (Model md) throws Exception {
		return "/counsel/online";
	}
	
	@GetMapping("/counsel/specclass.do")
	public String specclass (Model md) throws Exception {
		return "/counsel/specclass";
	}
	
	@GetMapping("/counsel/cost.do")
	public String cost (Model md) throws Exception {
		return "/counsel/cost";
	}
	
	@GetMapping("/counsel/specclass2.do")
	public String specclass2 (Model md) throws Exception {
		return "/counsel/specclass2";
	}
	@GetMapping("/counsel/specclass3.do")
	public String specclass3 (Model md) throws Exception {
		return "/counsel/specclass3";
	}
	
	@GetMapping("/counsel/specclass4.do")
	public String specclass4 (Model md) throws Exception {
		return "/counsel/specclass4";
	}
}
