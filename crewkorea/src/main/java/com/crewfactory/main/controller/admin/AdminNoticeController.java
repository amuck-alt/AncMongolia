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

import com.crewfactory.main.domain.NoticeDomain;
import com.crewfactory.main.service.NoticeService;
import com.crewfactory.main.service.FileManagerService;


@Controller
public class AdminNoticeController {
	
private static final Logger logger = LoggerFactory.getLogger(AdminNoticeController.class);
	
	@Value("${file.upload-dir}")
	String realpath;
	
	@Value("${file.download.url}")
	String serverurl;

	@Autowired
	FileManagerService fs;
	
	@Autowired
	NoticeService service;
	
	@RequestMapping(value="/manager/notice/list.do", method=RequestMethod.GET)
	public String init(Model model) throws Exception {
		model.addAttribute("result", service.select());
		return "/admin/notice/list";
	}
	
	
	@RequestMapping(value="/manager/notice/write.do")
	public String write(Model model) throws Exception {
		return "/admin/notice/write";
	}
	
	@RequestMapping(value="/manager/notice/insert.do", method=RequestMethod.POST)
	public String insert(HttpServletRequest request, Model model) throws Exception {
		
		String section = request.getParameter("section");			
		String description = request.getParameter("description");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String regid = request.getParameter("regid");
		String regip = request.getParameter("regip");

		try {
						
			NoticeDomain domain = new NoticeDomain();
		    domain.setSection(section);
		    domain.setDescription(description);
		    domain.setThumbnail("");
		    domain.setTitle(title);
		    domain.setContent(content);
		    domain.setRegid(regid);
		    domain.setRegip(regip);
		    service.insert(domain);
		    
		} catch(Exception e) {
			logger.error("Failed to upload ", e);
		} 
		
		
		return "redirect:/manager/notice/list.do";
	}
	
	@RequestMapping(value="/manager/notice/view.do", method=RequestMethod.GET)
	public String view(@RequestParam(value="idx") int idx, Model model) throws Exception {
		model.addAttribute("result", service.view(idx));			
		return "/admin/notice/view";
	}
	
	@RequestMapping(value="/manager/notice/update.do", method=RequestMethod.POST)
	public String memupdate(HttpServletRequest request, Model model) throws Exception {
		String idx = request.getParameter("idx");
		String section = request.getParameter("section");			
		String description = request.getParameter("description");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String regid = request.getParameter("regid");
		String regip = request.getParameter("regip");


		try {
			
			NoticeDomain domain = new NoticeDomain();
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

		return "redirect:/manager/notice/list.do";
	}
	
	@RequestMapping(value="/manager/notice/delete.do", method=RequestMethod.GET)
	public String memdelete(@RequestParam(value="idx") int idx) throws Exception {
		service.delete(idx);
		return "redirect:/manager/notice/list.do";
	}

}
