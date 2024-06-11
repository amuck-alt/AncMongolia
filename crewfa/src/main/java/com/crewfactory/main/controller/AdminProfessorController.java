package com.crewfactory.main.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import com.crewfactory.main.domain.FileManagerDomain;
import com.crewfactory.main.domain.ProfessorDomain;
import com.crewfactory.main.service.FileManagerService;
import com.crewfactory.main.service.ProfessorService;


@Controller
public class AdminProfessorController {
	private static final Logger logger = LoggerFactory.getLogger(AdminProfessorController.class);
	
	@Value("${file.upload-dir}")
	String realpath;

	@Value("${file.download.url}")
	String serverurl;
	
	@Autowired
	FileManagerService fs;
	
	@Autowired
	ProfessorService service;

	
	@RequestMapping(value="manager/pro/list.do", method=RequestMethod.GET)
	public String list (HttpServletRequest request, Model model) throws Exception {
		model.addAttribute("result", service.selectByAdmin());
		return "admin/pro/ProList";
	}
	
	@RequestMapping(value="manager/pro/view.do", method=RequestMethod.GET)
	public String view (@RequestParam(value="idx") int idx, Model model) throws Exception {
		model.addAttribute("result", service.viewByAdmin(idx));
		return "admin/pro/ProView";
	}
	
	@RequestMapping(value="manager/pro/write.do", method=RequestMethod.GET)
	public String write (Model model) throws Exception {
		return "admin/pro/ProWrite";
	}
	
	@RequestMapping(value="/manager/pro/insert.do", method=RequestMethod.POST)
	public String insert(HttpServletRequest request, @RequestParam("thumbnail") MultipartFile mpf, Model model) throws Exception {
		
		String openidx = request.getParameter("openidx");
		String openpos = request.getParameter("openpos");
		String proname = request.getParameter("proname");
		String ranks = request.getParameter("ranks");
		String subject = request.getParameter("subject");
		String sentence = request.getParameter("sentence");
		String schedule = request.getParameter("schedule");
		String classnm = request.getParameter("classnm");
		String history = request.getParameter("history");
		String regip = request.getParameter("regip");
		String regid = request.getParameter("regid");
		String section = request.getParameter("section");
		
		logger.info("openidx ================== " + openidx );
		
		try {		    
			
			ProfessorDomain domain = new ProfessorDomain();
			
			if(StringUtils.isNoneEmpty(mpf.getOriginalFilename())) {
				FileManagerDomain fd = fs.upload(mpf, "pro", realpath);
				String thumbnail = serverurl + fd.getPath();
				domain.setThumbnail(thumbnail);
			}else {
				domain.setThumbnail("");
			}
			
			domain.setOpenidx(openidx);
			domain.setOpenpos(openpos);
			domain.setProname(proname);
			domain.setRanks(ranks);
			domain.setSubject(subject);
			domain.setSentence(sentence);
			domain.setSchedule(schedule);
			domain.setClassnm(classnm);
			domain.setHistory(history);
			domain.setRegip(regip);
			domain.setRegid(regid);
			domain.setSection(section);
			
			service.insert(domain);
		    
		} catch(Exception e) {
			logger.error("Failed to upload ", e);
		} 		
		
		return "redirect:/manager/pro/list.do";
	}
	
	@RequestMapping(value="manager/pro/update.do", method=RequestMethod.POST)
	public String update (HttpServletRequest request, @RequestParam("thumbnail") MultipartFile mpf, Model model) throws Exception {
		
		String idx = request.getParameter("idx");
		String editthumbnail = request.getParameter("editthumbnail");
		String openidx = request.getParameter("openidx");
		String openpos = request.getParameter("openpos");
		String proname = request.getParameter("proname");
		String ranks = request.getParameter("ranks");
		String subject = request.getParameter("subject");
		String sentence = request.getParameter("sentence");
		String schedule = request.getParameter("schedule");
		String classnm = request.getParameter("classnm");
		String history = request.getParameter("history");
		String regip = request.getParameter("regip");
		String regid = request.getParameter("regid");
		String section = request.getParameter("section");
		
		logger.info("openidx ================== " + openidx );
		
		try {		    
			
			ProfessorDomain domain = new ProfessorDomain();
			
			if(StringUtils.isNoneEmpty(mpf.getOriginalFilename())) {
				FileManagerDomain fd = fs.upload(mpf, "pro", realpath);
				String thumbnail = serverurl + fd.getPath();
				domain.setThumbnail(thumbnail);
			}else {
				domain.setThumbnail(editthumbnail);
			}
			
			domain.setIdx(Integer.parseInt(idx));
			domain.setOpenidx(openidx);
			domain.setOpenpos(openpos);
			domain.setProname(proname);
			domain.setRanks(ranks);
			domain.setSubject(subject);
			domain.setSentence(sentence);
			domain.setSchedule(schedule);
			domain.setClassnm(classnm);
			domain.setHistory(history);
			domain.setRegip(regip);
			domain.setRegid(regid);
			domain.setSection(section);
			
			service.update(domain);
		    
		} catch(Exception e) {
			logger.error("Failed to upload ", e);
		} 		
		
		return "redirect:/manager/pro/list.do";
	}
	
	@RequestMapping(value="manager/pro/delete.do", method=RequestMethod.GET)
	public String delete (@RequestParam(value="idx") int idx) throws Exception {
		service.delete(idx);
		return "redirect:/manager/pro/list.do";
	}

}
