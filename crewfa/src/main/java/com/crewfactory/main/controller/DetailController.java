package com.crewfactory.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DetailController {
	
	@RequestMapping(value="/detail/detail01.do")
	String init01(Model model) {
		model.addAttribute("message", "Hellow World");		
		return "detail/detail01";
	}
	
	@RequestMapping(value="/detail/detail02.do")
	String init02(Model model) {
		model.addAttribute("message", "Hellow World");		
		return "detail/detail02";
	}
	
	@RequestMapping(value="/detail/detail03.do")
	String init03(Model model) {
		model.addAttribute("message", "Hellow World");		
		return "detail/detail03";
	}
	
	@RequestMapping(value="/detail/detail04.do")
	String init04(Model model) {
		model.addAttribute("message", "Hellow World");		
		return "detail/detail04";
	}
	
	@RequestMapping(value="/detail/detail05.do")
	String init05(Model model) {
		model.addAttribute("message", "Hellow World");		
		return "detail/detail05";
	}
	
	@RequestMapping(value="/detail/detail06.do")
	String init06(Model model) {
		model.addAttribute("message", "Hellow World");		
		return "detail/detail06";
	}
	
	@RequestMapping(value="/detail/detail07.do")
	String init07(Model model) {
		model.addAttribute("message", "Hellow World");		
		return "detail/detail07";
	}
	
	@RequestMapping(value="/detail/detail08.do")
	String init08(Model model) {
		model.addAttribute("message", "Hellow World");		
		return "detail/detail08";
	}
	
	@RequestMapping(value="/detail/detail09.do")
	String init09(Model model) {
		model.addAttribute("message", "Hellow World");		
		return "detail/detail09";
	}
	
	@RequestMapping(value="/detail/detail10.do")
	String init10(Model model) {
		model.addAttribute("message", "Hellow World");		
		return "detail/detail10";
	}
	
	@RequestMapping(value="/detail/detail11.do")
	String init11(Model model) {
		model.addAttribute("message", "Hellow World");		
		return "detail/detail11";
	}
	
	
	@RequestMapping(value="/detail/event.do")
	String event(Model model) {
		model.addAttribute("message", "Hellow World");		
		return "detail/event";
	}
	
	@RequestMapping(value="/detail/eventpa.do")
	String eventpa(Model model) {
		model.addAttribute("message", "Hellow World");		
		return "detail/eventpa";
	}
	
	@RequestMapping(value="/detail/open.do")
	String open(Model model) {
		model.addAttribute("message", "Hellow World");		
		return "detail/open";
	}



@RequestMapping(value="/detail/fee1.do")
String fee1(Model model) {
	model.addAttribute("message", "Hellow World");		
	return "detail/fee1";
}


@RequestMapping(value="/detail/fee2.do")
String fee2(Model model) {
	model.addAttribute("message", "Hellow World");		
	return "detail/fee2";
}

@RequestMapping(value="/detail/fee3.do")
String fee3(Model model) {
	model.addAttribute("message", "Hellow World");		
	return "detail/fee3";
}

@RequestMapping(value="/detail/realreview.do")
String realreview(Model model) {
	model.addAttribute("message", "Hellow World");		
	return "detail/realreview";
}


}




