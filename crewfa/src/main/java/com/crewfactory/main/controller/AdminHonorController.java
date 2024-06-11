package com.crewfactory.main.controller;

import java.util.HashMap;
import java.util.Map;

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
import com.crewfactory.main.domain.HonorDomain;
import com.crewfactory.main.service.FileManagerService;
import com.crewfactory.main.service.HonorService;

@Controller
public class AdminHonorController {
	private static final Logger logger = LoggerFactory.getLogger(AdminBlogController.class);
	@Value("${file.upload-dir}")
	String realpath;
	
	@Value("${file.download.url}")
	String serverurl;
	
	@Autowired
	FileManagerService fs;
	
	@Autowired
	HonorService service;
	
	@RequestMapping(value="/manager/blog/Honor.do")
	public String select (@RequestParam Map<String, String> paramMap, Model model) throws Exception {
		Map<String, Object> searchMap = new HashMap<String, Object>();        
        
        searchMap.put("searchName", paramMap.get("searchName"));        
        model.addAttribute("result", service.select(searchMap));
        		
		return "/admin/blog/HonorList";
	}
	
	@RequestMapping(value="/manager/blog/HonorTop.do")
	public String selectTop (@RequestParam Map<String, String> paramMap, Model model) throws Exception {
       	model.addAttribute("result", service.selectTop());			
		return "/admin/blog/HonorTopList";
	}
	
	@RequestMapping(value="/manager/blog/HonorWrite.do", method=RequestMethod.GET)
	public String write (Model model) throws Exception {
		return "/admin/blog/HonorWrite";
	}
	
	@RequestMapping(value="/manager/blog/HonorTopWrite.do", method=RequestMethod.GET)
	public String writeTop (Model model) throws Exception {
		return "/admin/blog/HonorTopWrite";
	}
	
	@RequestMapping(value="/manager/blog/HonorInsert.do")
	public String insert (HttpServletRequest request, @RequestParam("thumbnail") MultipartFile mpf, Model model) throws Exception {
		String section = request.getParameter("section");
		String code = request.getParameter("code");
		String codenm = request.getParameter("codenm");
		String name = request.getParameter("name");
		String title = request.getParameter("title");
		String regteam = request.getParameter("regip");
		String regid = request.getParameter("regid");
		String regip = request.getParameter("regip");
		String regyear = request.getParameter("regyear");
		String description = request.getParameter("description");
		String medalyn = request.getParameter("medalyn");
		String topyn = request.getParameter("topyn");
		
		try {			
			HonorDomain domain = new HonorDomain();
		    domain.setSection(section);
		    domain.setCode(code);
		    domain.setTitle(title);
		    domain.setRegteam(regteam);
		    domain.setRegid(regid);
		    domain.setRegip(regip);
		    domain.setRegyear(regyear);
		    domain.setDescription(description);
		    domain.setMedalyn(medalyn);
		    domain.setCodenm(codenm);
		    domain.setName(name);
		    domain.setTopyn(topyn);
		    
		    if(StringUtils.isNoneEmpty(mpf.getOriginalFilename())) {
		    	FileManagerDomain fd = fs.upload(mpf, "honor", realpath);
		    	String thumbnail = serverurl + fd.getPath();
		    	domain.setThumbnail(thumbnail);
		    }else {
		    	domain.setThumbnail("");
		    }    

		    service.insert(domain);
		    
		} catch(Exception e) {
			logger.error("HonorInsert.do ", e);
		} 		
		
		return "redirect:/manager/blog/Honor.do";
	}
	
	@RequestMapping(value="/manager/blog/HonorTopInsert.do")
	public String insertTop (HttpServletRequest request, @RequestParam("thumbnail") MultipartFile mpf, Model model) throws Exception {
		String section = request.getParameter("section");
		String code = request.getParameter("code");
		String codenm = request.getParameter("codenm");
		String name = request.getParameter("name");
		String title = request.getParameter("title");
		String regteam = request.getParameter("regip");
		String regid = request.getParameter("regid");
		String regip = request.getParameter("regip");
		String regyear = request.getParameter("regyear");
		String description = request.getParameter("description");
		String medalyn = request.getParameter("medalyn");
		String topyn = "Y";
		
		try {			
			HonorDomain domain = new HonorDomain();
		    domain.setSection(section);
		    domain.setCode(code);
		    domain.setTitle(title);
		    domain.setRegteam(regteam);
		    domain.setRegid(regid);
		    domain.setRegip(regip);
		    domain.setRegyear(regyear);
		    domain.setDescription(description);
		    domain.setMedalyn(medalyn);
		    domain.setCodenm(codenm);
		    domain.setName(name);
		    domain.setTopyn(topyn);
		    
		    if(StringUtils.isNoneEmpty(mpf.getOriginalFilename())) {
		    	FileManagerDomain fd = fs.upload(mpf, "honor", realpath);
		    	String thumbnail = serverurl + fd.getPath();
		    	domain.setThumbnail(thumbnail);
		    }else {
		    	domain.setThumbnail("");
		    }    

		    service.insert(domain);
		    
		} catch(Exception e) {
			logger.error("HonorTopInsert.do ", e);
		} 		
		
		return "redirect:/manager/blog/HonorTop.do";
	}
	
	@RequestMapping(value="/manager/blog/HonorUpdate.do")
	public String update (HttpServletRequest request, @RequestParam("thumbnail") MultipartFile mpf, Model model) throws Exception {
		String section = request.getParameter("section");
		String code = request.getParameter("code");
		String codenm = request.getParameter("codenm");
		String name = request.getParameter("name");
		String title = request.getParameter("title");
		String regteam = request.getParameter("regip");
		String regid = request.getParameter("regid");
		String regip = request.getParameter("regip");
		String regyear = request.getParameter("regyear");
		String description = request.getParameter("description");
		String medalyn = request.getParameter("medalyn");
		String thumb = request.getParameter("thumb");
		String idx = request.getParameter("idx");
		String topyn = request.getParameter("topyn");
		
		try {			
			HonorDomain domain = new HonorDomain();
			domain.setIdx( Integer.parseInt(idx));
			domain.setSection(section);
		    domain.setCode(code);
		    domain.setTitle(title);
		    domain.setRegteam(regteam);
		    domain.setRegid(regid);
		    domain.setRegip(regip);
		    domain.setRegyear(regyear);
		    domain.setDescription(description);
		    domain.setMedalyn(medalyn);
		    domain.setCodenm(codenm);
		    domain.setName(name);
		    domain.setTopyn(topyn);
		    
		    if(StringUtils.isNoneEmpty(mpf.getOriginalFilename())) {
		    	FileManagerDomain fd = fs.upload(mpf, "honor", realpath);
		    	String thumbnail = serverurl + fd.getPath();
		    	domain.setThumbnail(thumbnail);
		    }else {
		    	domain.setThumbnail(thumb);
		    }    

		    service.update(domain);
		    
		} catch(Exception e) {
			logger.error("HonorUpdate.do ", e);
		} 		
		
		return "redirect:/manager/blog/Honor.do";
	}
	
	@RequestMapping(value="/manager/blog/HonorTopUpdate.do")
	public String updateTop (HttpServletRequest request, @RequestParam("thumbnail") MultipartFile mpf, Model model) throws Exception {
		String section = request.getParameter("section");
		String code = request.getParameter("code");
		String codenm = request.getParameter("codenm");
		String name = request.getParameter("name");
		String title = request.getParameter("title");
		String regteam = request.getParameter("regip");
		String regid = request.getParameter("regid");
		String regip = request.getParameter("regip");
		String regyear = request.getParameter("regyear");
		String description = request.getParameter("description");
		String medalyn = request.getParameter("medalyn");
		String thumb = request.getParameter("thumb");
		String idx = request.getParameter("idx");
		String topyn = "Y";
		
		try {			
			HonorDomain domain = new HonorDomain();
			domain.setIdx( Integer.parseInt(idx));
			domain.setSection(section);
		    domain.setCode(code);
		    domain.setTitle(title);
		    domain.setRegteam(regteam);
		    domain.setRegid(regid);
		    domain.setRegip(regip);
		    domain.setRegyear(regyear);
		    domain.setDescription(description);
		    domain.setMedalyn(medalyn);
		    domain.setCodenm(codenm);
		    domain.setName(name);
		    domain.setTopyn(topyn);
		    
		    if(StringUtils.isNoneEmpty(mpf.getOriginalFilename())) {
		    	FileManagerDomain fd = fs.upload(mpf, "honor", realpath);
		    	String thumbnail = serverurl + fd.getPath();
		    	domain.setThumbnail(thumbnail);
		    }else {
		    	domain.setThumbnail(thumb);
		    }    

		    service.update(domain);
		    
		} catch(Exception e) {
			logger.error("HonorUpdateTop.do ", e);
		} 		
		
		return "redirect:/manager/blog/HonorTop.do";
	}
	
	@RequestMapping(value="/manager/blog/HonorView.do", method=RequestMethod.GET)
	public String view (@RequestParam("idx") int idx, Model model) throws Exception {
		model.addAttribute("result", service.view(idx));
		return "/admin/blog/HonorView";
	}
	
	@RequestMapping(value="/manager/blog/HonorTopView.do", method=RequestMethod.GET)
	public String viewTop (@RequestParam("idx") int idx, Model model) throws Exception {
		model.addAttribute("result", service.view(idx));
		return "/admin/blog/HonorTopView";
	}
	
	@RequestMapping(value="/manager/blog/HonorDelete.do", method=RequestMethod.GET)
	public String delete (@RequestParam("idx") int idx, Model model) throws Exception {
		service.delete(idx);
		return "redirect:/manager/blog/Honor.do";
	}
	
	@RequestMapping(value="/manager/blog/HonorTopDelete.do", method=RequestMethod.GET)
	public String deleteTop (@RequestParam("idx") int idx, Model model) throws Exception {
		service.delete(idx);
		return "redirect:/manager/blog/HonorTop.do";
	}

}
