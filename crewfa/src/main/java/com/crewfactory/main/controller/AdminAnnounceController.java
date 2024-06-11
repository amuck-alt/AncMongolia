package com.crewfactory.main.controller;


import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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

import com.crewfactory.main.domain.AnnounceDomain;
import com.crewfactory.main.domain.FileManagerDomain;
import com.crewfactory.main.service.AnnounceService;
import com.crewfactory.main.service.FileManagerService;
import com.crewfactory.main.util.TotalPage;

@Controller
public class AdminAnnounceController {
	
private static final Logger logger = LoggerFactory.getLogger(AdminBlogController.class);
	
	@Value("${file.upload-dir}")
	String realpath;
	
	@Value("${file.download.url}")
	String serverurl;

	@Autowired
	FileManagerService fs;
	
	@Autowired
	AnnounceService service;
	
	@RequestMapping(value="/manager/announce.do", method=RequestMethod.GET)
	public String init(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		
		String team = request.getParameter("team");
		Map<String, Object> searchMap = new HashMap<String, Object>();             
        searchMap.put("team", team);
		
        model.addAttribute("result", service.selectAdmin(searchMap));
		
		return "/admin/bbs/AnnounceList";
	}
	
	@RequestMapping(value="/manager/announce/write.do", method=RequestMethod.GET)
	public String write(Model model) throws Exception {
		return "/admin/bbs/AnnounceWrite";
	}
	
	@RequestMapping(value="/manager/announce/insert.do", method=RequestMethod.POST)
	public String insert(HttpServletRequest request, @RequestParam("thumbnail") MultipartFile mpf, Model model) throws Exception {
		String sector = request.getParameter("sector");
		String section = request.getParameter("section");			
		String description = request.getParameter("description");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String regteam = request.getParameter("regteam");
		String regid = request.getParameter("regid");
		String regip = request.getParameter("regip");
				
		try {
						
			AnnounceDomain domain = new AnnounceDomain();
		    domain.setSector(sector);
			domain.setSection(section);
		    domain.setDescription(description);
		    domain.setTitle(title);
		    domain.setContent(content);
		    domain.setRegid(regid);
		    domain.setRegip(regip);
		    domain.setRegteam(regteam);
		    
		    if(StringUtils.isNoneEmpty(mpf.getOriginalFilename())) {
		    	FileManagerDomain fd = fs.upload(mpf, "bbs", realpath);
		    	String thumbnail = serverurl + fd.getPath();
		    	domain.setThumbnail(thumbnail);
		    }else {
		    	domain.setThumbnail("");
		    } 
		    
		    
		    service.insert(domain);
		    
		} catch(Exception e) {
			logger.error("Failed to upload ", e);
		} 
		
		
		return "redirect:/manager/announce.do";
	}
	
	@RequestMapping(value="/manager/announce/view.do", method=RequestMethod.GET)
	public String view(@RequestParam(value="idx") int idx, Model model) throws Exception {
		model.addAttribute("result", service.selectOne(idx));			
		return "/admin/bbs/AnnounceView";
	}
	
	@RequestMapping(value="/manager/announce/update.do", method=RequestMethod.POST)
	public String memupdate(HttpServletRequest request, @RequestParam("thumbnail") MultipartFile mpf, Model model) throws Exception {
		String idx = request.getParameter("idx");
		String section = request.getParameter("section");			
		String description = request.getParameter("description");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String regid = request.getParameter("regid");
		String regip = request.getParameter("regip");
		String visit = request.getParameter("visit");

		try {
			
			AnnounceDomain domain = new AnnounceDomain();
			
			if(StringUtils.isNoneEmpty(mpf.getOriginalFilename())) {
		    	FileManagerDomain fd = fs.upload(mpf, "bbs", realpath);
		    	String thumbnail = serverurl + fd.getPath();
		    	domain.setThumbnail(thumbnail);
			}
			
		    domain.setIdx( Integer.parseInt(idx));
		    domain.setVisit( Integer.parseInt(visit));
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

		return "redirect:/manager/announce.do";
	}
	
	@RequestMapping(value="/manager/announce/delete.do", method=RequestMethod.GET)
	public String memdelete(@RequestParam(value="idx") int idx) throws Exception {
		service.delete(idx);
		return "redirect:/manager/announce.do";
	}

}
