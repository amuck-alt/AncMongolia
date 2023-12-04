package com.crewfactory.main.controller.admin;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.crewfactory.main.domain.FileManagerDomain;
import com.crewfactory.main.domain.StudentDomain;
import com.crewfactory.main.service.FileManagerService;
import com.crewfactory.main.service.StudentService;

@Controller
public class AdminStudentController {
	
	@Autowired
	StudentService service;
	
	@Value("${file.upload-dir}")
	String realpath;
	
	@Value("${file.download.url}")
	String serverurl;
	
	@Autowired
	FileManagerService fs;
	
	@GetMapping("/manager/student/list.do")
	public String list (@ModelAttribute("@search") StudentDomain domain, HttpServletRequest request, Model model) throws Exception {
		
		String status = request.getParameter("status");
		String curriculum = request.getParameter("curriculum");
		String korname = request.getParameter("korname");
		String mobile = request.getParameter("mobile");
		String mento = request.getParameter("mento");
		
		if(status == null || "".equals(status)) domain.setStatus("");
		if(curriculum == null || "".equals(curriculum)) domain.setCurriculum("");
		if(korname == null || "".equals(korname)) domain.getKorname();
		if(mobile == null || "".equals(mobile)) domain.setMobile("");
		if(mento == null || "".equals(mento)) domain.setMento("");
		
		System.out.println("=====================" + domain.getStatus());

		model.addAttribute("search", domain);
		model.addAttribute("result", service.select(domain));
		return "/admin/student/list";
	}
	
	@GetMapping("/manager/student/write.do")
	public String write (Model model) throws Exception {
		return "/admin/student/write";
	}
	
	@PostMapping("/manager/student/insert.do")
	public String insert (@RequestParam("thumbnail") MultipartFile mpf, @ModelAttribute("@form") StudentDomain domain) throws Exception {
		
		if(StringUtils.isNoneEmpty(mpf.getOriginalFilename())) {
	    	FileManagerDomain fd = fs.upload(mpf, "student", realpath);
	    	String photo = serverurl + fd.getPath();
	    	domain.setPhoto(photo);
	    }else {
	    	domain.setPhoto("");
	    }
		
		service.insert(domain);
		return "redirect:/manager/student/list.do?status=&curriculum=&korname=&mobile=&mento=";
	}
	
	@GetMapping("/manager/student/view.do")
	public String view(@RequestParam(value="idx") int idx, Model model) throws Exception {
		model.addAttribute("result", service.view(idx));
		model.addAttribute("resultDiary", service.selectDiary(idx));
		return "/admin/student/view";
	}
	
	@PostMapping("/manager/student/update.do")
	public String update (@RequestParam("thumbnail") MultipartFile mpf, @ModelAttribute("@form") StudentDomain domain) throws Exception {
		
		if(StringUtils.isNoneEmpty(mpf.getOriginalFilename())) {
	    	FileManagerDomain fd = fs.upload(mpf, "student", realpath);
	    	String photo = serverurl + fd.getPath();
	    	domain.setPhoto(photo);
	    }
		
		service.update(domain);
		return "redirect:/manager/student/list.do?status=&curriculum=&korname=&mobile=&mento=";
	}
	
	@GetMapping(value="/manager/student/delete.do")
	public String delete(@RequestParam(value="idx") int idx) throws Exception {
		service.delete(idx);
		return "redirect:/manager/student/list.do?status=&curriculum=&korname=&mobile=&mento=";
	}
	
	@PostMapping("/manager/student/diary/insert.do")
	public String insertDiary (@ModelAttribute("@diary") StudentDomain domain) throws Exception {
				
		service.insertDiary(domain);
		return "redirect:/manager/student/view.do?idx="+domain.getStudentidx();
	}

}
