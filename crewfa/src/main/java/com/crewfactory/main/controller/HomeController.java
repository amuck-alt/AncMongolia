package com.crewfactory.main.controller;


import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.crewfactory.main.domain.AuthDomain;
import com.crewfactory.main.domain.MessageDomain;
import com.crewfactory.main.domain.SearchDomain;
import com.crewfactory.main.service.AnnounceService;
import com.crewfactory.main.service.AuthService;
import com.crewfactory.main.service.BlogService;
import com.crewfactory.main.service.CounterService;
import com.crewfactory.main.service.RecruitService;
import com.crewfactory.main.service.ReplyService;
import com.crewfactory.main.service.ReviewService;
import com.crewfactory.main.service.VanalyzerService;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	AuthService auth;
	
	@Autowired
	RecruitService recruit;
	
	@Autowired
	BlogService blog;
	
	@Autowired
	ReviewService review;
	
	@Autowired
	AnnounceService announce;
	
	@Autowired
	CounterService counter;
	
	@Autowired
	VanalyzerService vanalyzer;
	
	@Autowired
	ReplyService reply;
	
	@RequestMapping(value="/")
	String init(HttpServletRequest request, HttpServletResponse response, HttpSession session, Model model) throws Exception {
		String section = "all";
		SearchDomain search = new SearchDomain();
		search.setSearchSection(section);
		model.addAttribute("blogko", blog.selectBlogByHome());
		model.addAttribute("announce", announce.selectNew());
		model.addAttribute("moment", blog.selectMomentByHome() );
		model.addAttribute("reply", reply.selectByWebHome() );
		return "index";
	}
	
	@RequestMapping(value="/ckeditor.do")
	String ckeditor(Model model) throws Exception {
		return "ckeditor";
	}
	
	@RequestMapping(value="/manager/index.do")
	String admin (HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		String url = "";		
		String opt = request.getParameter("opt");
		String searchDay = request.getParameter("searchDay");
		String searchMonth = request.getParameter("searchMonth");
		
		if(StringUtils.isNotEmpty(searchDay)) {
			
		} else {
			SimpleDateFormat mSimpleDateFormat = new SimpleDateFormat ("yyyyMMdd", Locale.KOREA );
			Date currentTime = new Date ();
			searchDay = mSimpleDateFormat.format (currentTime);
		}
		
		
		Map <String, Object> searchMap = new HashMap <String, Object>();
		searchMap.put("searchDay", searchDay);
		searchMap.put("searchMonth", searchMonth);
		
		if(request.getSession().getAttribute("ManagerInfo") != null) {

			if("thismonth".equals(opt)) {
				logger.info("searchday ==================" + searchMonth);
				model.addAttribute("overview", vanalyzer.ov_count_monthly(searchMap));
			}else {
				logger.info("searchday ==================" + searchDay);
				model.addAttribute("overview", vanalyzer.ov_count(searchMap));
			}
			
			model.addAttribute("total", vanalyzer.totalCount(searchMap));
			model.addAttribute("recent", vanalyzer.selectRecent(searchMap));

			url = "/admin/index";
		} else {
			url = "/admin/login";
		}
				
		return url;
	}
	
	@RequestMapping(value="/manager/relogin.do")
	String relogin (HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		return "/admin/login";
	}
	
	@RequestMapping(value="/manager/login.do")
	String login (HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		AuthDomain domain = new AuthDomain();
		domain.setUserid(request.getParameter("userid"));
		domain.setUserpw(request.getParameter("userpw"));
		domain.setTeam(request.getParameter("team"));
		
		logger.info("team =============== " + request.getParameter("team"));
		
		AuthDomain auth_domain = auth.login(domain);
		HttpSession session = request.getSession();

		if(auth_domain == null) {
			model.addAttribute("msg", "false");
		}else {
			session.setAttribute("ManagerInfo", auth_domain);
			session.setAttribute("ManagerList", auth.selectTeam(auth_domain));
			model.addAttribute("msg", "true");
			auth.updateRecDate(auth_domain);
		}
				
		return "admin/login";
	}
	
	@RequestMapping(value="/manager/logout.do")
	String logout (HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {

		HttpSession session = request.getSession();
		session.setAttribute("ManagerInfo", null);

		logger.info("logout =================== " + session.toString() );
				
		return "admin/login";
	}
	
	@RequestMapping(value="/manager/ok.do", method=RequestMethod.GET)
	String result (@RequestParam(value="msg") String message,
					@RequestParam(value="reurl") String reurl,
					@RequestParam(value="home") String home,
					@RequestParam(value="section") String section,
					Model model) {
		MessageDomain domain = new MessageDomain();
		domain.setMsg(message);
		domain.setReurl(reurl);
		domain.setHome(home);
		domain.setSection(section);
		model.addAttribute("result", domain);		
		
		return "admin/Message";
	}
}
