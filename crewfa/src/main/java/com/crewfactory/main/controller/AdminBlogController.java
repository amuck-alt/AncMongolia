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

import com.crewfactory.main.domain.BlogDomain;
import com.crewfactory.main.domain.FileManagerDomain;
import com.crewfactory.main.domain.SearchDomain;
import com.crewfactory.main.service.BlogService;
import com.crewfactory.main.service.FileManagerService;


@Controller
public class AdminBlogController {
	
	private static final Logger logger = LoggerFactory.getLogger(AdminBlogController.class);
	
	@Value("${file.upload-dir}")
	String realpath;
	
	@Value("${file.download.url}")
	String serverurl;
	
	@Autowired
	FileManagerService fs;
	
	@Autowired
	BlogService service;
	
	@RequestMapping(value="/manager/blog/WeAre.do", method=RequestMethod.GET)
	public String init(Model model) throws Exception {
		
		SearchDomain search = new SearchDomain();
		
		//model.addAttribute("topblog", service.selectTopBlog(search));
		model.addAttribute("result", service.select(search));
		
		return "/admin/blog/WeAreList";
	}	
	
	@RequestMapping(value="/manager/blog/WeAreWrite.do", method=RequestMethod.GET)
	public String write(Model model) throws Exception {
		return "/admin/blog/WeAreWrite";
	}
	

	@RequestMapping("/manager/blog/WeAreInsert.do") 
	public String insert(HttpServletRequest request, @RequestParam("thumbnail") MultipartFile mpf, Model model) throws Exception {
			String section = request.getParameter("section");
			String openyn = request.getParameter("openyn");
			String loginyn = request.getParameter("loginyn");			
			String description = request.getParameter("description");
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			String taglib = request.getParameter("taglib");
			String regid = request.getParameter("regid");
			String regip = request.getParameter("regip");
			String reurl = request.getParameter("reurl");
			String code = request.getParameter("code");
			
		try {
			
			BlogDomain domain = new BlogDomain();
		    domain.setSection(section);
		    domain.setOpenyn(openyn);
		    domain.setLoginyn(loginyn);
		    domain.setDescription(description);
		    if(StringUtils.isNoneEmpty(mpf.getOriginalFilename())) {
		    	FileManagerDomain fd = fs.upload(mpf, "blog", realpath);
		    	String thumbnail = serverurl + fd.getPath();
		    	domain.setThumbnail(thumbnail);
		    }else {
		    	domain.setThumbnail("");
		    }    
		    domain.setTitle(title);
		    domain.setContent(content);
		    domain.setTaglib(taglib.replaceAll(" ", ""));
		    domain.setRegid(regid);
		    domain.setRegip(regip);
		    domain.setCode(code);
		    service.insert(domain);		    
		} catch(Exception e) {
			logger.error("WeAreInsert.do ", e);
		} 
		
		return "redirect:/manager/blog/WeAre.do";
	}
	
	@RequestMapping(value="/manager/blog/WeAreView.do", method=RequestMethod.GET)
	public String view(@RequestParam(value="idx") int idx, Model model) throws Exception {
		model.addAttribute("result", service.view(idx) );
		logger.info("result =======================" + model.toString());
		return "/admin/blog/WeAreView";
	}
	
	@RequestMapping("/manager/blog/WeAreUpdate.do")
	public String update(HttpServletRequest request, @RequestParam("thumbnail") MultipartFile mpf, Model model) throws Exception {
			String idx = request.getParameter("idx");
			String section = request.getParameter("section");
			String openyn = request.getParameter("openyn");
			String loginyn = request.getParameter("loginyn");				
			String description = request.getParameter("description");
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			String taglib = request.getParameter("taglib");
			String regid = request.getParameter("regid");
			String regip = request.getParameter("regip");
			String reurl = request.getParameter("reurl");
			String code = request.getParameter("code");
			String visit = request.getParameter("visit");
			String thumb = request.getParameter("thumb");
			
		try {
			
			BlogDomain domain = new BlogDomain();
			
			if(StringUtils.isNoneEmpty(mpf.getOriginalFilename())) {
		    	FileManagerDomain fd = fs.upload(mpf, "blog", realpath);
		    	String thumbnail = serverurl + fd.getPath();
		    	domain.setThumbnail(thumbnail);
		    }else {
		    	domain.setThumbnail(thumb);
		    }
		    domain.setIdx( Integer.parseInt(idx));
			domain.setSection(section);
		    domain.setOpenyn(openyn);
		    domain.setLoginyn(loginyn);
		    domain.setDescription(description);
		    
		    domain.setTitle(title);
		    domain.setContent(content);
		    domain.setTaglib(taglib.replaceAll(" ", ""));
		    domain.setRegid(regid);
		    domain.setRegip(regip);
		    domain.setVisit(Integer.parseInt(visit));
		    logger.info("Thumbnail ==============" + domain.getThumbnail());
		    domain.setCode(code);
		    service.update(domain);
		    
		} catch(Exception e) {
			logger.error("Failed to upload ", e);
		} 
		
		return "redirect:/manager/blog/WeAre.do";
	}
	
	@RequestMapping(value="/manager/blog/WeAreDelete.do", method=RequestMethod.GET)
	public String delete(@RequestParam(value="idx") int idx) throws Exception {
		service.delete(idx);
		return "redirect:/manager/blog/WeAre.do";
	}
}
