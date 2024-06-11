package com.crewfactory.main.controller.admin;


import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.crewfactory.main.domain.FileManagerDomain;
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
	
	@GetMapping("/manager/notice/list.do")
	public String init(Model model) throws Exception {
		model.addAttribute("result", service.select());
		return "/admin/notice/list";
	}
	
	
	@RequestMapping(value="/manager/notice/write.do")
	public String write(Model model) throws Exception {
		return "/admin/notice/write";
	}
	
	@PostMapping("/manager/notice/insert.do")
	public String insert(HttpServletRequest request, @RequestParam("file") MultipartFile af, Model model) throws Exception {
		
		NoticeDomain domain = new NoticeDomain();

		String section = request.getParameter("section");			
		String description = request.getParameter("description");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String regid = request.getParameter("regid");
		String regip = request.getParameter("regip");
		
		if(StringUtils.isNoneEmpty(af.getOriginalFilename())) {
	    	FileManagerDomain fd = fs.upload(af, "notice", realpath);
	    	String filepath = serverurl + fd.getPath();
	    	String filename = serverurl + fd.getName();
	    	domain.setFilename(filename);
	    	domain.setFilepath(filepath);
	    }else {
	    	domain.setFilename("");
	    	domain.setFilepath("");
	    }
		
	    domain.setSection(section);
	    domain.setDescription(description);
	    domain.setThumbnail("");
	    domain.setTitle(title);
	    domain.setContent(content);
	    domain.setRegid(regid);
	    domain.setRegip(regip);
	    
	    service.insert(domain);		
		
		return "redirect:/manager/notice/list.do";
	}
	
	@GetMapping("/manager/notice/view.do")
	public String view(@RequestParam(value="idx") int idx, Model model) throws Exception {
		model.addAttribute("result", service.view(idx));			
		return "/admin/notice/view";
	}
	
	@PostMapping("/manager/notice/update.do")
	public String memupdate(HttpServletRequest request, @RequestParam("file") MultipartFile af, Model model) throws Exception {
		
		String idx = request.getParameter("idx");
		String section = request.getParameter("section");			
		String description = request.getParameter("description");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String regid = request.getParameter("regid");
		String regip = request.getParameter("regip");
		String fname = request.getParameter("filename");
		String fpath = request.getParameter("filepath");


		try {
			
			NoticeDomain domain = new NoticeDomain();
			
			if(StringUtils.isNoneEmpty(af.getOriginalFilename())) {
		    	FileManagerDomain fd = fs.upload(af, "notice", realpath);
		    	String filepath = serverurl + fd.getPath();
		    	String filename = serverurl + fd.getName();
		    	domain.setFilename(filename);
		    	domain.setFilepath(filepath);
		    }else {
		    	domain.setFilename(fname);
		    	domain.setFilepath(fpath);
		    }
			
			domain.setThumbnail("");
		    domain.setIdx( Integer.parseInt(idx));
			domain.setSection(section);
		    domain.setDescription(description);
		    domain.setTitle(title);
		    domain.setContent(content);
		    domain.setRegid(regid);
		    domain.setRegip(regip);
		    
		    service.update(domain);
		    
		} catch(Exception e) {
			logger.error("Failed to upload ", e);
		}

		return "redirect:/manager/notice/list.do";
	}
	
	@GetMapping("/manager/notice/delete.do")
	public String memdelete(@RequestParam(value="idx") int idx) throws Exception {
		service.delete(idx);
		return "redirect:/manager/notice/list.do";
	}

}
