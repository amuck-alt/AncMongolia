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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import com.crewfactory.main.domain.CKRecruitDomain;
import com.crewfactory.main.domain.FileManagerDomain;
import com.crewfactory.main.service.CKRecruitService;
import com.crewfactory.main.service.FileManagerService;

@Controller
public class AdminCKRecruitController {
	
	private static final Logger logger = LoggerFactory.getLogger(AdminCKRecruitController.class);
	
	@Value("${file.upload-dir}")
	String realpath;
	
	@Value("${file.download.url}")
	String serverurl;
	
	@Autowired
	FileManagerService fs;
	
	@Autowired
	CKRecruitService service;
	
	@GetMapping("/manager/recruit/list.do")
	public String selectAdmin (Model model) throws Exception {
		model.addAttribute("recruit", service.selectAdmin() );
		return "/admin/recruit/list";
	}
	
	@GetMapping("/manager/recruit/write.do")
	public String write () throws Exception {
		return "/admin/recruit/write";
	}
	
	@PostMapping("/manager/recruit/insert.do")
	public String insert (HttpServletRequest request, @RequestParam("thumbnail") MultipartFile mpf, @RequestParam("resume") MultipartFile rsm, Model model) throws Exception {
		CKRecruitDomain domain = new CKRecruitDomain();
		if(StringUtils.isNoneEmpty(mpf.getOriginalFilename())) {
	    	FileManagerDomain fd = fs.upload(mpf, "recruit", realpath);
	    	String thumbnail = serverurl + fd.getPath();
	    	domain.setThumbnail(thumbnail);
	    }else {
	    	domain.setThumbnail("");
	    }
		if(StringUtils.isNoneEmpty(rsm.getOriginalFilename())) {
	    	FileManagerDomain fd = fs.upload(rsm, "recruit", realpath);
	    	String filepath = serverurl + fd.getPath();
	    	String filename = serverurl + fd.getName();
	    	domain.setFilename(filename);
	    	domain.setFilepath(filepath);
	    }else {
	    	domain.setFilename("");
	    	domain.setFilepath("");
	    }
		domain.setTitle(request.getParameter("title"));
		domain.setContent(request.getParameter("content"));
		domain.setDescription(request.getParameter("description"));		
		domain.setStday(request.getParameter("stday"));
		domain.setSttime(request.getParameter("sttime"));
		domain.setEndday(request.getParameter("endday"));
		domain.setEndtime(request.getParameter("endtime"));
		domain.setRegid(request.getParameter("regid"));
		domain.setResumeyn(request.getParameter("resumeyn"));
		
		logger.info(domain.toString());
		
		service.insert(domain);
		return "redirect:/manager/recruit/list.do";
	}
	
	@PostMapping("/manager/recruit/update.do")
	public String update (HttpServletRequest request, @RequestParam("thumbnail") MultipartFile mpf, @RequestParam("resume") MultipartFile rsm, Model model) throws Exception {
		CKRecruitDomain domain = new CKRecruitDomain();
		if(StringUtils.isNoneEmpty(mpf.getOriginalFilename())) {
			logger.info("-------------------------------------");
			FileManagerDomain fd = fs.upload(mpf, "recruit", realpath);
	    	String thumbnail = serverurl + fd.getPath();
	    	domain.setThumbnail(thumbnail);
	    }else {
	    	logger.info("++++++++++++++++++++++++++++++++++++++");
	    	domain.setThumbnail(request.getParameter("thumb"));
	    }
		if(StringUtils.isNoneEmpty(rsm.getOriginalFilename())) {
	    	FileManagerDomain fd = fs.upload(rsm, "recruit", realpath);
	    	String filepath = serverurl + fd.getPath();
	    	String filename = serverurl + fd.getName();
	    	domain.setFilename(filename);
	    	domain.setFilepath(filepath);
	    }else {
	    	domain.setFilename(request.getParameter("filename"));
	    	domain.setFilepath(request.getParameter("filepath"));
	    }
		domain.setIdx(Integer.parseInt(request.getParameter("idx")));
		domain.setTitle(request.getParameter("title"));
		domain.setContent(request.getParameter("content"));
		domain.setDescription(request.getParameter("description"));		
		domain.setStday(request.getParameter("stday"));
		domain.setSttime(request.getParameter("sttime"));
		domain.setEndday(request.getParameter("endday"));
		domain.setEndtime(request.getParameter("endtime"));
		domain.setRegid(request.getParameter("regid"));
		domain.setResumeyn(request.getParameter("resumeyn"));
		
		logger.info(domain.toString());
		service.update(domain);
		return "redirect:/manager/recruit/list.do";
	}
	
	@GetMapping("/manager/recruit/view.do")
	public String view(@RequestParam(value="idx") int idx, Model model) throws Exception {
		model.addAttribute("result", service.view(idx));
		return "/admin/recruit/view";
	}
	
	@GetMapping("/manager/recruit/delete.do")
	public String delete(@RequestParam(value="idx") int idx) throws Exception {
		service.delete(idx);
		return "redirect:/manager/recruit/list.do";
	}

}
