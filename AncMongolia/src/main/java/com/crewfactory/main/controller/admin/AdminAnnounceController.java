package com.crewfactory.main.controller.admin;


import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
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
	
	@GetMapping("/manager/announce/list.do")
	public String init(Model model) throws Exception {
		model.addAttribute("result", service.selectAdmin());
		return "/admin/bbs/AnnounceList";
	}
	
	
	@GetMapping("/manager/announce/write.do")
	public String write(Model model) throws Exception {
		return "/admin/bbs/AnnounceWrite";
	}
	
	@PostMapping("/manager/announce/insert.do")
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
	
	@GetMapping("/manager/announce/view.do")
	public String view(@RequestParam(value="idx") int idx, Model model) throws Exception {
		model.addAttribute("result", service.selectOne(idx));			
		return "/admin/bbs/AnnounceView";
	}
	
	@PostMapping("/manager/announce/update.do")
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
	
	@GetMapping("/manager/announce/delete.do")
	public String memdelete(@RequestParam(value="idx") int idx) throws Exception {
		service.delete(idx);
		return "redirect:/manager/announce/list.do";
	}

}
