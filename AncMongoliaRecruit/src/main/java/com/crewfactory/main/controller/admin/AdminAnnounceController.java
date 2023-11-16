package com.crewfactory.main.controller.admin;


import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.crewfactory.main.domain.AnnounceDomain;
import com.crewfactory.main.service.AnnounceService;
import com.crewfactory.main.service.FileManagerService;


@Controller
public class AdminAnnounceController {
	
private static final Logger logger = LoggerFactory.getLogger(AdminAnnounceController.class);
	
	@Value("${file.upload-dir}")
	String realpath;
	
	@Value("${file.download.url}")
	String serverurl;

	@Autowired
	FileManagerService fs;
	
	@Autowired
	AnnounceService service;
	
	@RequestMapping(value="/manager/announce/list.do", method=RequestMethod.GET)
	public String init(Model model) throws Exception {
		model.addAttribute("result", service.selectAdmin());
		return "/admin/announce/list";
	}
	
	
	@RequestMapping(value="/manager/announce/write.do")
	public String write(Model model) throws Exception {
		return "/admin/announce/write";
	}
	
	@RequestMapping(value="/manager/announce/insert.do", method=RequestMethod.POST)
	public String insert(HttpServletRequest request, Model model) throws Exception {
		
		String section = request.getParameter("section");			
		String description = request.getParameter("description");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String regid = request.getParameter("regid");
		String regip = request.getParameter("regip");

		try {
						
			AnnounceDomain domain = new AnnounceDomain();
		    domain.setSection(section);
		    domain.setDescription(description);
		    domain.setThumbnail("");
		    /*
		    if(StringUtils.isNoneEmpty(mpf.getOriginalFilename())) {
		    	FileManagerDomain fd = fs.upload(mpf, "bbs", realpath);
		    	String thumbnail = serverurl + fd.getPath();
		    	domain.setThumbnail(thumbnail);
		    }else {
		    	domain.setThumbnail("");
		    } 
		    */
		    domain.setTitle(title);
		    domain.setContent(content);
		    domain.setRegid(regid);
		    domain.setRegip(regip);
		    service.insert(domain);
		    
		} catch(Exception e) {
			logger.error("Failed to upload ", e);
		} 
		
		
		return "redirect:/manager/announce/list.do";
	}
	
	@RequestMapping(value="/manager/announce/view.do", method=RequestMethod.GET)
	public String view(@RequestParam(value="idx") int idx, Model model) throws Exception {
		model.addAttribute("result", service.selectOne(idx));			
		return "/admin/announce/view";
	}
	
	@RequestMapping(value="/manager/announce/update.do", method=RequestMethod.POST)
	public String memupdate(HttpServletRequest request, Model model) throws Exception {
		String idx = request.getParameter("idx");
		String section = request.getParameter("section");			
		String description = request.getParameter("description");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String regid = request.getParameter("regid");
		String regip = request.getParameter("regip");


		try {
			
			AnnounceDomain domain = new AnnounceDomain();
			/*
			if(StringUtils.isNoneEmpty(mpf.getOriginalFilename())) {
		    	FileManagerDomain fd = fs.upload(mpf, "bbs", realpath);
		    	String thumbnail = serverurl + fd.getPath();
		    	domain.setThumbnail(thumbnail);
			}
			*/
			domain.setThumbnail("");
		    domain.setIdx( Integer.parseInt(idx));
			domain.setSection(section);
		    domain.setDescription(description);
		    domain.setTitle(title);
		    domain.setContent(content);
		    domain.setRegid(regid);
		    domain.setRegip(regip);
		    logger.info("Thumbnail ==============" + domain.getThumbnail());
		    
		    service.update(domain);
		    
		} catch(Exception e) {
			logger.error("Failed to upload ", e);
		}

		return "redirect:/manager/announce/list.do";
	}
	
	@RequestMapping(value="/manager/announce/delete.do", method=RequestMethod.GET)
	public String memdelete(@RequestParam(value="idx") int idx) throws Exception {
		service.delete(idx);
		return "redirect:/manager/announce/list.do";
	}

}
