package com.crewfactory.main.controller.admin;

import java.util.HashMap;
import java.util.Map;

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

import com.crewfactory.main.domain.CounselDomain;
import com.crewfactory.main.service.CounselService;
import com.crewfactory.main.service.VanalyzerService;

@Controller
public class AdminCounselController {
	
	private static final Logger logger = LoggerFactory.getLogger(AdminCounselController.class);
	
	@Autowired
	CounselService service;
	
	@Autowired
	VanalyzerService vanalyzer;

	@RequestMapping(value="/manager/counsel/list.do", method=RequestMethod.GET)
	public String list (Model model) throws Exception {
		model.addAttribute("result", service.select() );
		return "/admin/counsel/CounselList";
	}
	
	@RequestMapping(value="/manager/spclass.do", method=RequestMethod.GET)
	public String listSpc (Model model) throws Exception {
		model.addAttribute("result", service.selectSpc() );
		return "/admin/counsel/SpcList";
	}
	
	@RequestMapping(value="/manager/counsel/view.do", method=RequestMethod.GET)
	public String view (HttpServletRequest request, Model model) throws Exception {
		String idx = request.getParameter("idx");
		String regip = request.getParameter("regip");
		String regdate = request.getParameter("regdate");
		
		regdate = regdate.substring(0, 10);
		Map<String, Object> vmap = new HashMap<String, Object>();
		vmap.put("regip", regip);
		vmap.put("regdate", regdate);
		
		logger.info("regip ==================" + regip);
		logger.info("regdate ==================" + regdate);
		
		model.addAttribute("result", service.view(Integer.parseInt(idx)));
		model.addAttribute("log", vanalyzer.selectLog(vmap));
		return "/admin/counsel/CounselView";
	}
	
	@RequestMapping(value="/manager/counsel/spcView.do", method=RequestMethod.GET)
	public String spcView (HttpServletRequest request, Model model) throws Exception {
		String idx = request.getParameter("idx");
		String regip = request.getParameter("regip");
		String regdate = request.getParameter("regdate");
		
		regdate = regdate.substring(0, 10);
		Map<String, Object> vmap = new HashMap<String, Object>();
		vmap.put("regip", regip);
		vmap.put("regdate", regdate);
		
		logger.info("regip ==================" + regip);
		logger.info("regdate ==================" + regdate);
		
		model.addAttribute("result", service.view(Integer.parseInt(idx)));
		model.addAttribute("log", vanalyzer.selectLog(vmap));
			
		return "/admin/counsel/SpcView";
	}
	
	@RequestMapping(value="/manager/counsel/delete.do", method=RequestMethod.GET)
	public String delete (@RequestParam(value="reurl") String reurl, @RequestParam(value="idx") int idx, Model model) throws Exception {
		service.delete(idx);			
		return "redirect:"+reurl+"?result=ok";
	}
	
	@RequestMapping(value="/manager/counsel/delupdate.do", method=RequestMethod.GET)
	public String delupdate (@RequestParam(value="reurl") String reurl, @RequestParam(value="idx") int idx, Model model) throws Exception {
		service.delupdate(idx);			
		return "redirect:"+reurl+"?result=ok";
	}
	
	@RequestMapping(value="/manager/counsel/update.do", method=RequestMethod.POST)
	public String update (HttpServletRequest request, @ModelAttribute("@counsel") CounselDomain cd, Model model) throws Exception {
		String reurl = request.getParameter("reurl");		
		boolean result = service.update(cd);	
		if(result) {
			return "redirect:"+reurl+"?result=ok";
		}else {
			return "redirect:"+reurl+"?result=false";
		}
	}
	
	@RequestMapping(value="/manager/subscribe.do", method=RequestMethod.GET)
	public String subscribelist (Model model) throws Exception {
		model.addAttribute("result", service.selectBlack());
		return "/admin/counsel/SubcribeList";
	}
	
	@RequestMapping(value="/manager/subscribeview.do", method=RequestMethod.GET)
	public String subscribeview (HttpServletRequest request, Model model) throws Exception {
		String idx = request.getParameter("idx");
		String regip = request.getParameter("regip");
		String regdate = request.getParameter("regdate");
		regdate = regdate.substring(0, 10);
		Map<String, Object> vmap = new HashMap<String, Object>();
		vmap.put("regip", regip);
		vmap.put("regdate", regdate);		
		logger.info("regip ==================" + regip);
		logger.info("regdate ==================" + regdate);		
		model.addAttribute("result", service.view(Integer.parseInt(idx)));
		
		return "/admin/counsel/SubcribeList";
	}
	
	@RequestMapping(value="/manager/black.do", method=RequestMethod.GET)
	public String blacklist (Model model) throws Exception {
		model.addAttribute("result", service.selectBlack() );
		return "/manager/counsel/Black";
	}
	
	@RequestMapping(value="/manager/counsel/blackview.do", method=RequestMethod.GET)
	public String blackview (HttpServletRequest request, Model model) throws Exception {
		String idx = request.getParameter("idx");
		String regip = request.getParameter("regip");
		String regdate = request.getParameter("regdate");
		
		regdate = regdate.substring(0, 10);
		Map<String, Object> vmap = new HashMap<String, Object>();
		vmap.put("regip", regip);
		vmap.put("regdate", regdate);
		
		logger.info("regip ==================" + regip);
		logger.info("regdate ==================" + regdate);
		
		model.addAttribute("result", service.view(Integer.parseInt(idx)));
		model.addAttribute("log", vanalyzer.selectLog(vmap));
		return "/admin/counsel/BlackView";
	}
}
