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
import com.crewfactory.main.domain.ReviewDomain;
import com.crewfactory.main.service.FileManagerService;
import com.crewfactory.main.service.RecruitService;
import com.crewfactory.main.service.ReviewService;

@Controller
public class AdminReviewController {
	
	private static final Logger logger = LoggerFactory.getLogger(AdminAirlineController.class);
	
	@Value("${file.upload-dir}")
	String realpath;
	
	@Value("${file.download.url}")
	String contextpath;
	
	@Autowired
	FileManagerService fs;
	
	@Autowired
	ReviewService service;
	
	@Autowired
	RecruitService recruit_service;
	
	@RequestMapping(value="manager/review.do", method=RequestMethod.GET)
	public String init(@RequestParam Map<String, String> paramMap, Model model) throws Exception {
		
        String searchSection = paramMap.get("section");        
        String searchGubun = paramMap.get("gubun");
        Map<String, Object> searchMap = new HashMap<String, Object>();
        searchMap.put("searchSection", searchSection);
        searchMap.put("searchGubun", searchGubun);
        model.addAttribute("section", searchSection);        
        model.addAttribute("gubun", searchGubun);
        model.addAttribute("result", service.selectAll(searchMap));		
		return "admin/bbs/ReviewList";
	}
	
	@RequestMapping(value="manager/review/write.do", method=RequestMethod.GET)
	public String write(Model model) throws Exception {
		model.addAttribute("airline", recruit_service.selectAirline());
		return "admin/bbs/ReviewWrite";
	}
	
	@RequestMapping(value="manager/review/insert.do", method=RequestMethod.POST)
	public String insert(HttpServletRequest request, @RequestParam("thumbnail") MultipartFile mpf, Model model) throws Exception {
		String section = request.getParameter("section");
		String gubun = request.getParameter("gubun");
		String age = request.getParameter("age");
		String gradlv = request.getParameter("gradlv");
		String major = request.getParameter("major");
		String langlv = request.getParameter("langlv");
		String reference = request.getParameter("reference");
		String spec = request.getParameter("spec");
		String description = request.getParameter("description");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String regid = request.getParameter("regid");
		String regip = request.getParameter("regip");
		String reurl = request.getParameter("reurl");
		
		try {

			ReviewDomain domain = new ReviewDomain();
			domain.setSection(section);
			domain.setGubun(gubun);
			if(StringUtils.isNoneEmpty(mpf.getOriginalFilename())) {
				FileManagerDomain fd = fs.upload(mpf, "review", realpath);
		    	String thumbnail = contextpath + fd.getPath();
		    	domain.setThumbnail(thumbnail);
		    }else {
		    	domain.setThumbnail("");
		    } 
			domain.setAge(age);
			domain.setGradlv(gradlv);
			domain.setMajor(major);
			domain.setLanglv(langlv);
			domain.setReference(reference);
			domain.setSpec(spec);
			domain.setDescription(description);
			domain.setTitle(title);
			domain.setContent(content);
			domain.setRegid(regid);
		    domain.setRegip(regip);

		    logger.info("path ==============" + domain.getThumbnail());
		    service.insert(domain);
		    
		} catch(Exception e) {
			logger.error("Failed to upload ", e);
		} 
		
		return "redirect:/manager/ok.do?home=&reurl="+reurl+"&section="+section+"&msg=succeed";
	}
	
	@RequestMapping(value="manager/review/view.do", method=RequestMethod.GET)
	public String view(@RequestParam(value="idx") int idx, Model model) throws Exception {
		model.addAttribute("result", service.view(idx));			
		return "admin/bbs/ReviewView";
	}
	
	@RequestMapping(value="manager/review/update.do", method=RequestMethod.POST)
	public String update(HttpServletRequest request, @RequestParam("thumbnail") MultipartFile mpf) throws Exception {
		String idx = request.getParameter("idx");
		String section = request.getParameter("section");
		String gubun = request.getParameter("gubun");
		String age = request.getParameter("age");
		String gradlv = request.getParameter("gradlv");
		String major = request.getParameter("major");
		String langlv = request.getParameter("langlv");
		String reference = request.getParameter("reference");
		String spec = request.getParameter("spec");
		String description = request.getParameter("description");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String regid = request.getParameter("regid");
		String regip = request.getParameter("regip");
		String thumb = request.getParameter("thumb");
		
		try {
			
			ReviewDomain domain = new ReviewDomain();
			
			if(!"".equals(mpf.getOriginalFilename())) {
				FileManagerDomain fd = fs.upload(mpf, "review", realpath);
		    	String thumbnail = contextpath + fd.getPath();
		    	domain.setThumbnail(thumbnail);
		    }else {
		    	domain.setThumbnail(thumb);
		    }
			
			domain.setIdx(Integer.parseInt(idx));
			domain.setSection(section);			
			domain.setGubun(gubun);
			domain.setAge(age);
			domain.setGradlv(gradlv);
			domain.setMajor(major);
			domain.setLanglv(langlv);
			domain.setReference(reference);
			domain.setSpec(spec);
			domain.setDescription(description);
			domain.setTitle(title);
			domain.setContent(content);
			domain.setRegid(regid);
		    domain.setRegip(regip);
			
		    logger.info("path ==============" + domain.getThumbnail());
		    service.update(domain);
		    
		} catch(Exception e) {
			logger.error("Failed to upload ", e);
		} 
		
		return "redirect:/manager/review.do";
	}
	
	@RequestMapping(value="manager/review/delete.do", method=RequestMethod.GET)
	public String delete(@RequestParam(value="idx") int idx) throws Exception {
		service.delete(idx);
		return "redirect:/manager/review.do";
	}

}
