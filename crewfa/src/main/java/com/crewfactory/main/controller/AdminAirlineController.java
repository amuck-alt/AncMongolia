package com.crewfactory.main.controller;

import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.crewfactory.main.domain.AirlineDomain;
import com.crewfactory.main.service.AirlineService;

@Controller
public class AdminAirlineController {
	
	private static final Logger logger = LoggerFactory.getLogger(AdminAirlineController.class);
	
	@Value("${file.upload-dir}")
	String uploadPath;
	
	@Autowired
	AirlineService service;
	
	@RequestMapping(value="/manager/code.do", method=RequestMethod.GET)
	public String init(Model model) throws Exception {
		model.addAttribute("result", service.select() );
		return "/admin/code/CodeList";
	}
	
	@RequestMapping(value="/manager/code/write.do", method=RequestMethod.GET)
	public String write(Model model) throws Exception {
		return "/admin/code/CodeWrite";
	}
	
	@RequestMapping(value="/manager/code/insert.do", method=RequestMethod.POST)
	public String insert(HttpServletRequest request, @RequestParam("path") MultipartFile mpf, Model model) throws Exception {
		String code = request.getParameter("code");
		String name = request.getParameter("name");
		String regid = request.getParameter("regid");
		String regip = request.getParameter("regip");
		
		try {
			String id = UUID.randomUUID().toString();
			String extension = FilenameUtils.getExtension(mpf.getOriginalFilename());
			if (StringUtils.isNotEmpty(extension)) {
	        	id = id + "." + extension;
	        }
			logger.info("upload ===============> " + String.format("%s%s%s%s%s", uploadPath, File.separator, "code" , File.separator, id));
			File save = new File(String.format("%s%s%s%s%s", uploadPath, File.separator, "code", File.separator, id));
			FileUtils.forceMkdirParent(save);
			mpf.transferTo(save);

			AirlineDomain domain = new AirlineDomain();
			domain.setCode(code);
			domain.setName(name);
			domain.setPath(id);
			domain.setRegid(regid);
		    domain.setRegip(regip);

		    logger.info("path ==============" + domain.getPath());
		    service.insert(domain);
		    
		} catch(Exception e) {
			logger.error("Failed to upload ", e);
		} 
		
		return "redirect:/manager/code.do";
	}
	
	@RequestMapping(value="/manager/code/view.do", method=RequestMethod.GET)
	public String view(@RequestParam(value="idx") int idx, Model model) throws Exception {
		model.addAttribute("result", service.view(idx));			
		return "/admin/code/CodeView";
	}
	
	@RequestMapping(value="/manager/code/update.do", method=RequestMethod.POST)
	public String update(@ModelAttribute("@form") AirlineDomain domain) throws Exception {
		service.update(domain);
		return "redirect:/manager/code.do";
	}
	
	@RequestMapping(value="/manager/code/delete.do", method=RequestMethod.GET)
	public String delete(@RequestParam(value="idx") int idx) throws Exception {
		service.delete(idx);
		return "redirect:/manager/code.do";
	}
	
	@RequestMapping(value="/manager/code/check.do", method=RequestMethod.GET)
	public String check (@RequestParam(value="code") String code, Model model) throws Exception {
		logger.info("check start ----------------------");
		String name = service.check(code);
		if(name == null) {
			model.addAttribute("result", "ok");
		} else {
			model.addAttribute("result", "overlap");
		}
		return "/admin/code/Blank";
	}
	
	@RequestMapping(value="/manager/code/blank.do", method=RequestMethod.GET)
	public String blank (Model model) throws Exception {
		return "/admin/code/Blank";
	}

}
